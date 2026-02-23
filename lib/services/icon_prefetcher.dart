import 'dart:async';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/logs_provider.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/services/icon_cache.dart';

/// Background service for pre-fetching app icons
class IconPrefetcher {
  static IconPrefetcher? _instance;
  static IconPrefetcher get instance {
    _instance ??= IconPrefetcher._();
    return _instance!;
  }

  IconPrefetcher._();

  static const int _maxConcurrentDownloads = 5;
  static const int _topAppsCount = 40;

  bool _isRunning = false;
  bool _isPaused = false;
  int _completedCount = 0;
  int _totalCount = 0;
  final List<String> _failedApps = [];

  // Stream controllers for progress tracking
  final StreamController<PrefetchProgress> _progressController =
      StreamController<PrefetchProgress>.broadcast();
  final StreamController<PrefetchResult> _resultController =
      StreamController<PrefetchResult>.broadcast();

  Stream<PrefetchProgress> get progressStream => _progressController.stream;
  Stream<PrefetchResult> get resultStream => _resultController.stream;

  bool get isRunning => _isRunning;
  bool get isPaused => _isPaused;
  int get completedCount => _completedCount;
  int get totalCount => _totalCount;
  List<String> get failedApps => List.unmodifiable(_failedApps);

  /// Start pre-fetching icons for top apps after metadata sync
  Future<void> startPrefetching({
    List<App>? apps,
    int topCount = _topAppsCount,
    bool forceRefresh = false,
  }) async {
    if (_isRunning) {
      LogsProvider().add('Icon prefetcher is already running');
      return;
    }

    _isRunning = true;
    _isPaused = false;
    _completedCount = 0;
    _totalCount = 0;
    _failedApps.clear();

    try {
      // Get apps list if not provided
      apps ??= await _getTopApps(topCount);

      if (apps.isEmpty) {
        LogsProvider().add('No apps available for icon pre-fetching');
        _isRunning = false;
        return;
      }

      _totalCount = apps.length;
      _progressController.add(
        PrefetchProgress(
          completed: 0,
          total: _totalCount,
          currentApp: '',
          phase: PrefetchPhase.starting,
        ),
      );

      LogsProvider().add('Starting icon pre-fetching for ${apps.length} apps');

      // Process apps in batches to avoid overwhelming the system
      await _processAppsInBatches(apps, forceRefresh);

      // Only emit success result if prefetching wasn't stopped
      if (_isRunning) {
        _progressController.add(
          PrefetchProgress(
            completed: _completedCount,
            total: _totalCount,
            currentApp: '',
            phase: PrefetchPhase.completed,
          ),
        );

        _resultController.add(
          PrefetchResult(
            success: true,
            completedCount: _completedCount,
            totalCount: _totalCount,
            failedApps: List.from(_failedApps),
          ),
        );

        LogsProvider().add(
          'Icon pre-fetching completed. Success: $_completedCount/$_totalCount, Failed: ${_failedApps.length}',
        );
      }
    } catch (e) {
      LogsProvider().add('Error during icon pre-fetching: $e');
      _resultController.add(
        PrefetchResult(
          success: false,
          completedCount: _completedCount,
          totalCount: _totalCount,
          failedApps: List.from(_failedApps),
          error: e.toString(),
        ),
      );
    } finally {
      _isRunning = false;
    }
  }

  /// Get top apps based on various criteria
  Future<List<App>> _getTopApps(int count) async {
    try {
      final appsProvider = AppsProvider();
      final allApps = appsProvider
          .getAppValues()
          .map((appInMemory) => appInMemory.app)
          .toList();

      if (allApps.isEmpty) return [];

      // Sort apps by priority criteria:
      // 1. Pinned apps first
      // 2. Installed apps next
      // 3. Recently updated apps
      // 4. Apps with remote icon URLs
      allApps.sort((a, b) {
        // Pinned apps first
        if (a.pinned != b.pinned) {
          return b.pinned ? 1 : -1;
        }

        // Installed apps next
        final aInstalled = a.installedVersion != null;
        final bInstalled = b.installedVersion != null;
        if (aInstalled != bInstalled) {
          return bInstalled ? 1 : -1;
        }

        // Apps with remote icon URLs
        final aHasIcon = a.remoteIconUrl != null && a.remoteIconUrl!.isNotEmpty;
        final bHasIcon = b.remoteIconUrl != null && b.remoteIconUrl!.isNotEmpty;
        if (aHasIcon != bHasIcon) {
          return bHasIcon ? 1 : -1;
        }

        // Recently updated apps
        final aDate =
            a.lastUpdateCheck ?? DateTime.fromMillisecondsSinceEpoch(0);
        final bDate =
            b.lastUpdateCheck ?? DateTime.fromMillisecondsSinceEpoch(0);
        return bDate.compareTo(aDate);
      });

      // Filter apps that have remote icon URLs
      final appsWithIcons = allApps
          .where(
            (app) => app.remoteIconUrl != null && app.remoteIconUrl!.isNotEmpty,
          )
          .take(count)
          .toList();

      LogsProvider().add(
        'Found ${appsWithIcons.length} apps with remote icon URLs for pre-fetching',
      );
      return appsWithIcons;
    } catch (e) {
      LogsProvider().add('Error getting top apps for pre-fetching: $e');
      return [];
    }
  }

  /// Process apps in batches to control concurrency
  Future<void> _processAppsInBatches(List<App> apps, bool forceRefresh) async {
    final batches = <List<App>>[];

    // Create batches of max concurrent downloads
    for (int i = 0; i < apps.length; i += _maxConcurrentDownloads) {
      final end = (i + _maxConcurrentDownloads < apps.length)
          ? i + _maxConcurrentDownloads
          : apps.length;
      batches.add(apps.sublist(i, end));
    }

    for (int batchIndex = 0; batchIndex < batches.length; batchIndex++) {
      // Check if prefetching has been stopped
      if (!_isRunning) {
        LogsProvider().add('Icon pre-fetching stopped during batch processing');
        break;
      }

      if (_isPaused) {
        await _waitForResume();
      }

      // Check again after resume in case stop was called during pause
      if (!_isRunning) {
        LogsProvider().add('Icon pre-fetching stopped during batch processing');
        break;
      }

      final batch = batches[batchIndex];

      _progressController.add(
        PrefetchProgress(
          completed: _completedCount,
          total: _totalCount,
          currentApp: 'Processing batch ${batchIndex + 1}/${batches.length}',
          phase: PrefetchPhase.processing,
        ),
      );

      // Process batch concurrently
      final futures = batch
          .map((app) => _prefetchAppIcon(app, forceRefresh))
          .toList();
      final results = await Future.wait(futures);

      // Update counters
      for (final result in results) {
        if (result.success) {
          _completedCount++;
        } else {
          _failedApps.add(result.appId);
        }
      }

      // Small delay between batches to be gentle on the system
      if (batchIndex < batches.length - 1) {
        await Future.delayed(const Duration(milliseconds: 100));
      }
    }
  }

  /// Prefetch icon for a single app
  Future<PrefetchAppResult> _prefetchAppIcon(App app, bool forceRefresh) async {
    try {
      // Check if prefetching has been stopped
      if (!_isRunning) {
        return PrefetchAppResult(
          appId: app.id,
          appName: app.name,
          success: false,
          error: 'Prefetching was stopped',
        );
      }

      if (_isPaused) {
        await _waitForResume();
      }

      // Check again after resume in case stop was called during pause
      if (!_isRunning) {
        return PrefetchAppResult(
          appId: app.id,
          appName: app.name,
          success: false,
          error: 'Prefetching was stopped',
        );
      }

      _progressController.add(
        PrefetchProgress(
          completed: _completedCount,
          total: _totalCount,
          currentApp: app.name,
          phase: PrefetchPhase.downloading,
        ),
      );

      // Use IconCache to download and cache icon
      final iconData = await IconCache.instance.getIcon(
        app.id,
        app.remoteIconUrl,
        forceRefresh: forceRefresh,
        fallbackIcon: null,
      );

      if (iconData != null) {
        LogsProvider().add(
          'Successfully prefetched icon for ${app.name} (${app.id})',
        );
        return PrefetchAppResult(
          appId: app.id,
          appName: app.name,
          success: true,
          iconSize: iconData.length,
        );
      } else {
        LogsProvider().add(
          'Failed to prefetch icon for ${app.name} (${app.id}): No data returned',
        );
        return PrefetchAppResult(
          appId: app.id,
          appName: app.name,
          success: false,
          error: 'No icon data returned',
        );
      }
    } catch (e) {
      LogsProvider().add(
        'Error prefetching icon for ${app.name} (${app.id}): $e',
      );
      return PrefetchAppResult(
        appId: app.id,
        appName: app.name,
        success: false,
        error: e.toString(),
      );
    }
  }

  /// Pause the pre-fetching process
  void pause() {
    _isPaused = true;
    LogsProvider().add('Icon pre-fetching paused');
  }

  /// Resume the pre-fetching process
  void resume() {
    _isPaused = false;
    LogsProvider().add('Icon pre-fetching resumed');
  }

  /// Stop the pre-fetching process
  void stop() {
    if (_isRunning) {
      _isRunning = false;
      _isPaused = false;
      LogsProvider().add('Icon pre-fetching stopped by user request');

      // Emit final progress update to show stopped state
      _progressController.add(
        PrefetchProgress(
          completed: _completedCount,
          total: _totalCount,
          currentApp: '',
          phase: PrefetchPhase.completed,
        ),
      );

      // Emit result indicating partial completion
      _resultController.add(
        PrefetchResult(
          success: false, // Mark as unsuccessful since it was stopped
          completedCount: _completedCount,
          totalCount: _totalCount,
          failedApps: List.from(_failedApps),
          error: 'Prefetching was stopped',
        ),
      );
    } else {
      LogsProvider().add('Icon pre-fetching stop called but not running');
    }
  }

  /// Wait for resume if paused
  Future<void> _waitForResume() async {
    while (_isPaused && _isRunning) {
      await Future.delayed(const Duration(milliseconds: 100));
    }
  }

  /// Get current prefetching status
  PrefetchStatus getStatus() {
    return PrefetchStatus(
      isRunning: _isRunning,
      isPaused: _isPaused,
      completedCount: _completedCount,
      totalCount: _totalCount,
      failedApps: List.from(_failedApps),
    );
  }

  /// Dispose resources
  void dispose() {
    _progressController.close();
    _resultController.close();
    _isRunning = false;
    _isPaused = false;
  }
}

/// Progress information for pre-fetching
class PrefetchProgress {
  final int completed;
  final int total;
  final String currentApp;
  final PrefetchPhase phase;

  PrefetchProgress({
    required this.completed,
    required this.total,
    required this.currentApp,
    required this.phase,
  });

  double get progress => total > 0 ? completed / total : 0.0;

  @override
  String toString() {
    return 'PrefetchProgress(completed: $completed/$total, current: $currentApp, phase: $phase)';
  }
}

/// Result of pre-fetching operation
class PrefetchResult {
  final bool success;
  final int completedCount;
  final int totalCount;
  final List<String> failedApps;
  final String? error;

  PrefetchResult({
    required this.success,
    required this.completedCount,
    required this.totalCount,
    required this.failedApps,
    this.error,
  });

  double get successRate => totalCount > 0 ? completedCount / totalCount : 0.0;

  @override
  String toString() {
    return 'PrefetchResult(success: $success, completed: $completedCount/$totalCount, failed: ${failedApps.length})';
  }
}

/// Result for a single app pre-fetch
class PrefetchAppResult {
  final String appId;
  final String appName;
  final bool success;
  final int? iconSize;
  final String? error;

  PrefetchAppResult({
    required this.appId,
    required this.appName,
    required this.success,
    this.iconSize,
    this.error,
  });
}

/// Current status of pre-fetching
class PrefetchStatus {
  final bool isRunning;
  final bool isPaused;
  final int completedCount;
  final int totalCount;
  final List<String> failedApps;

  PrefetchStatus({
    required this.isRunning,
    required this.isPaused,
    required this.completedCount,
    required this.totalCount,
    required this.failedApps,
  });

  double get progress => totalCount > 0 ? completedCount / totalCount : 0.0;
}

/// Phases of pre-fetching process
enum PrefetchPhase { starting, processing, downloading, completed, error }
