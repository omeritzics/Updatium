import 'dart:async';
import 'package:updatium/models/enhanced_app.dart';
import 'package:updatium/providers/logs_provider.dart';
import 'package:updatium/services/unified_icon_service.dart';

/// Enhanced Icon Prefetcher with intelligent scheduling and optimization
class EnhancedIconPrefetcher {
  static EnhancedIconPrefetcher? _instance;
  static EnhancedIconPrefetcher get instance {
    _instance ??= EnhancedIconPrefetcher._();
    return _instance!;
  }

  EnhancedIconPrefetcher._() {
    _initializeEventListeners();
  }

  // Configuration
  static const int _defaultMaxConcurrent = 5;
  static const int _defaultTopAppsCount = 40;
  static const Duration _defaultBatchDelay = Duration(milliseconds: 100);

  // State management
  bool _isRunning = false;
  bool _isPaused = false;
  PrefetchStrategy _strategy = PrefetchStrategy.priority;

  // Progress tracking
  int _completedCount = 0;
  int _totalCount = 0;
  int _successCount = 0;
  int _errorCount = 0;
  final List<PrefetchError> _errors = [];

  // Performance tracking
  final Map<String, PrefetchMetrics> _metrics = {};
  DateTime? _startTime;

  // Stream controllers
  final StreamController<EnhancedPrefetchProgress> _progressController =
      StreamController<EnhancedPrefetchProgress>.broadcast();
  final StreamController<EnhancedPrefetchResult> _resultController =
      StreamController<EnhancedPrefetchResult>.broadcast();

  Stream<EnhancedPrefetchProgress> get progressStream =>
      _progressController.stream;
  Stream<EnhancedPrefetchResult> get resultStream => _resultController.stream;

  // Getters
  bool get isRunning => _isRunning;
  bool get isPaused => _isPaused;
  PrefetchStrategy get strategy => _strategy;
  int get completedCount => _completedCount;
  int get totalCount => _totalCount;
  int get successCount => _successCount;
  int get errorCount => _errorCount;
  List<PrefetchError> get errors => List.unmodifiable(_errors);

  /// Start intelligent pre-fetching with configurable strategy
  Future<void> startPrefetching({
    List<EnhancedApp>? apps,
    int topCount = _defaultTopAppsCount,
    PrefetchStrategy strategy = PrefetchStrategy.priority,
    int maxConcurrent = _defaultMaxConcurrent,
    bool forceRefresh = false,
    PrefetchConfig? config,
  }) async {
    if (_isRunning) {
      LogsProvider().add('Enhanced icon prefetcher is already running');
      return;
    }

    _isRunning = true;
    _isPaused = false;
    _strategy = strategy;
    _resetCounters();
    _startTime = DateTime.now();

    try {
      // Get apps list if not provided
      apps ??= await _getTopApps(topCount, strategy);

      if (apps.isEmpty) {
        LogsProvider().add('No apps available for icon pre-fetching');
        _completePrefetching();
        return;
      }

      _totalCount = apps.length;
      _emitProgress(
        EnhancedPrefetchProgress(
          phase: PrefetchPhase.starting,
          completed: 0,
          total: _totalCount,
          currentApp: '',
          strategy: strategy,
        ),
      );

      LogsProvider().add(
        'Starting enhanced icon pre-fetching for ${apps.length} apps with strategy: $strategy',
      );

      // Execute based on strategy
      switch (strategy) {
        case PrefetchStrategy.priority:
          await _executePriorityBased(
            apps,
            maxConcurrent,
            forceRefresh,
            config,
          );
          break;
        case PrefetchStrategy.sequential:
          await _executeSequential(apps, forceRefresh, config);
          break;
        case PrefetchStrategy.batch:
          await _executeBatched(apps, maxConcurrent, forceRefresh, config);
          break;
        case PrefetchStrategy.adaptive:
          await _executeAdaptive(apps, maxConcurrent, forceRefresh, config);
          break;
      }

      _completePrefetching();
    } catch (e) {
      _handleError(e, 'Prefetching execution');
    } finally {
      _isRunning = false;
    }
  }

  /// Get top apps based on strategy
  Future<List<EnhancedApp>> _getTopApps(
    int count,
    PrefetchStrategy strategy,
  ) async {
    try {
      // This would integrate with AppsProvider to get the list
      // For now, we'll return an empty list as placeholder
      final apps = <EnhancedApp>[];

      if (apps.isEmpty) return [];

      List<EnhancedApp> sortedApps;

      switch (strategy) {
        case PrefetchStrategy.priority:
          sortedApps = List.from(apps)
            ..sort((a, b) => b.prefetchScore.compareTo(a.prefetchScore));
          break;
        case PrefetchStrategy.sequential:
          sortedApps = List.from(apps);
          break;
        case PrefetchStrategy.batch:
          sortedApps = List.from(apps)
            ..sort((a, b) => b.prefetchScore.compareTo(a.prefetchScore));
          break;
        case PrefetchStrategy.adaptive:
          sortedApps = _adaptiveSort(apps);
          break;
      }

      // Filter apps that should be prefetched
      final filteredApps = sortedApps
          .where((app) => app.shouldPrefetch)
          .take(count)
          .toList();

      LogsProvider().add(
        'Found ${filteredApps.length} apps eligible for pre-fetching',
      );
      return filteredApps;
    } catch (e) {
      LogsProvider().add('Error getting top apps for pre-fetching: $e');
      return [];
    }
  }

  /// Priority-based execution - highest priority first
  Future<void> _executePriorityBased(
    List<EnhancedApp> apps,
    int maxConcurrent,
    bool forceRefresh,
    PrefetchConfig? config,
  ) async {
    // Group by priority
    final highPriority = apps
        .where((app) => app.iconPriority == IconPriority.high)
        .toList();
    final normalPriority = apps
        .where((app) => app.iconPriority == IconPriority.normal)
        .toList();
    final lowPriority = apps
        .where((app) => app.iconPriority == IconPriority.low)
        .toList();

    // Execute in priority order
    for (final group in [highPriority, normalPriority, lowPriority]) {
      if (group.isEmpty) continue;

      _emitProgress(
        EnhancedPrefetchProgress(
          phase: PrefetchPhase.processing,
          completed: _completedCount,
          total: _totalCount,
          currentApp:
              'Processing ${group.length} ${group.first.iconPriority.name} priority apps',
          strategy: _strategy,
        ),
      );

      await _processBatch(group, maxConcurrent, forceRefresh, config);

      // Small delay between priority groups
      if (group != lowPriority) {
        await Future.delayed(const Duration(milliseconds: 200));
      }
    }
  }

  /// Sequential execution - one at a time
  Future<void> _executeSequential(
    List<EnhancedApp> apps,
    bool forceRefresh,
    PrefetchConfig? config,
  ) async {
    for (int i = 0; i < apps.length; i++) {
      if (_isPaused) {
        await _waitForResume();
      }

      final app = apps[i];

      _emitProgress(
        EnhancedPrefetchProgress(
          phase: PrefetchPhase.processing,
          completed: _completedCount,
          total: _totalCount,
          currentApp: '${app.name} (${i + 1}/${apps.length})',
          strategy: _strategy,
        ),
      );

      await _prefetchSingleApp(app, forceRefresh, config);

      // Small delay between sequential requests
      if (i < apps.length - 1) {
        await Future.delayed(const Duration(milliseconds: 50));
      }
    }
  }

  /// Batched execution with controlled concurrency
  Future<void> _executeBatched(
    List<EnhancedApp> apps,
    int maxConcurrent,
    bool forceRefresh,
    PrefetchConfig? config,
  ) async {
    final batches = <List<EnhancedApp>>[];

    for (int i = 0; i < apps.length; i += maxConcurrent) {
      final end = (i + maxConcurrent < apps.length)
          ? i + maxConcurrent
          : apps.length;
      batches.add(apps.sublist(i, end));
    }

    for (int batchIndex = 0; batchIndex < batches.length; batchIndex++) {
      if (_isPaused) {
        await _waitForResume();
      }

      final batch = batches[batchIndex];

      _emitProgress(
        EnhancedPrefetchProgress(
          phase: PrefetchPhase.processing,
          completed: _completedCount,
          total: _totalCount,
          currentApp: 'Batch ${batchIndex + 1}/${batches.length}',
          strategy: _strategy,
        ),
      );

      await _processBatch(batch, maxConcurrent, forceRefresh, config);

      // Delay between batches
      if (batchIndex < batches.length - 1) {
        await Future.delayed(_defaultBatchDelay);
      }
    }
  }

  /// Adaptive execution - adjusts based on performance
  Future<void> _executeAdaptive(
    List<EnhancedApp> apps,
    int maxConcurrent,
    bool forceRefresh,
    PrefetchConfig? config,
  ) async {
    int currentConcurrency = 1;
    int recentSuccesses = 0;
    int recentFailures = 0;

    for (int i = 0; i < apps.length; i += currentConcurrency) {
      if (_isPaused) {
        await _waitForResume();
      }

      final batch = apps.skip(i).take(currentConcurrency).toList();

      _emitProgress(
        EnhancedPrefetchProgress(
          phase: PrefetchPhase.processing,
          completed: _completedCount,
          total: _totalCount,
          currentApp: 'Adaptive batch (concurrency: $currentConcurrency)',
          strategy: _strategy,
        ),
      );

      final batchStartTime = DateTime.now();
      await _processBatch(batch, currentConcurrency, forceRefresh, config);
      final batchDuration = DateTime.now().difference(batchStartTime);

      // Adjust concurrency based on performance
      final batchSuccesses = batch
          .where((app) => _metrics[app.id]?.lastSuccess ?? false)
          .length;
      final batchFailures = batch.length - batchSuccesses;

      recentSuccesses += batchSuccesses;
      recentFailures += batchFailures;

      // Adjust every 5 batches
      if ((i ~/ currentConcurrency) % 5 == 0) {
        if (recentFailures > recentSuccesses && currentConcurrency > 1) {
          currentConcurrency = (currentConcurrency / 2).ceil();
          LogsProvider().add(
            'Reducing concurrency to $currentConcurrency due to failures',
          );
        } else if (recentSuccesses > recentFailures * 2 &&
            currentConcurrency < maxConcurrent) {
          currentConcurrency = (currentConcurrency * 1.5).ceil().clamp(
            1,
            maxConcurrent,
          );
          LogsProvider().add(
            'Increasing concurrency to $currentConcurrency due to success',
          );
        }

        recentSuccesses = 0;
        recentFailures = 0;
      }

      // Adaptive delay based on performance
      final delay = _calculateAdaptiveDelay(batchDuration, batch.length);
      if (i + currentConcurrency < apps.length) {
        await Future.delayed(delay);
      }
    }
  }

  /// Process a batch of apps concurrently
  Future<void> _processBatch(
    List<EnhancedApp> batch,
    int maxConcurrent,
    bool forceRefresh,
    PrefetchConfig? config,
  ) async {
    final futures = batch.map(
      (app) => _prefetchSingleApp(app, forceRefresh, config),
    );
    final results = await Future.wait(futures);

    // Update counters
    for (int i = 0; i < results.length; i++) {
      final result = results[i];
      final app = batch[i];

      if (result.success) {
        _successCount++;
        _metrics[app.id] = (_metrics[app.id] ?? PrefetchMetrics(app.id))
            .copyWith(lastSuccess: true, lastDuration: result.duration);
      } else {
        _errorCount++;
        _errors.add(PrefetchError(app.id, app.name, result.error!));
        _metrics[app.id] = (_metrics[app.id] ?? PrefetchMetrics(app.id))
            .copyWith(lastSuccess: false, lastError: result.error);
      }

      _completedCount++;
    }
  }

  /// Prefetch icon for a single app
  Future<PrefetchAppResult> _prefetchSingleApp(
    EnhancedApp app,
    bool forceRefresh,
    PrefetchConfig? config,
  ) async {
    final startTime = DateTime.now();

    try {
      if (_isPaused) {
        await _waitForResume();
      }

      app.setIconLoading();

      final iconResult = await UnifiedIconService.instance.getIcon(
        app.id,
        app.bestIconUrl,
        forceRefresh: forceRefresh,
        maxSize: config?.maxSize,
        preferredFormat: config?.preferredFormat,
      );

      final duration = DateTime.now().difference(startTime);

      if (iconResult.isSuccess && iconResult.data != null) {
        app.setIconLoaded(iconResult.data!);
        LogsProvider().add(
          'Successfully prefetched icon for ${app.name} (${app.id}) in ${duration.inMilliseconds}ms',
        );

        return PrefetchAppResult(
          appId: app.id,
          appName: app.name,
          success: true,
          iconSize: iconResult.data!.length,
          duration: duration,
          source: iconResult.source,
        );
      } else {
        app.setIconError(iconResult.error ?? 'Unknown error');
        LogsProvider().add(
          'Failed to prefetch icon for ${app.name} (${app.id}): ${iconResult.error}',
        );

        return PrefetchAppResult(
          appId: app.id,
          appName: app.name,
          success: false,
          error: iconResult.error ?? 'Unknown error',
          duration: duration,
        );
      }
    } catch (e) {
      final duration = DateTime.now().difference(startTime);
      app.setIconError(e.toString());
      LogsProvider().add(
        'Error prefetching icon for ${app.name} (${app.id}): $e',
      );

      return PrefetchAppResult(
        appId: app.id,
        appName: app.name,
        success: false,
        error: e.toString(),
        duration: duration,
      );
    }
  }

  /// Adaptive sort for adaptive strategy
  List<EnhancedApp> _adaptiveSort(List<EnhancedApp> apps) {
    // Sort by a combination of priority, recent usage, and performance metrics
    return List.from(apps)..sort((a, b) {
      // Primary: priority
      final priorityComparison = b.iconPriority.index.compareTo(
        a.iconPriority.index,
      );
      if (priorityComparison != 0) return priorityComparison;

      // Secondary: prefetch score
      final scoreComparison = b.prefetchScore.compareTo(a.prefetchScore);
      if (scoreComparison != 0) return scoreComparison;

      // Tertiary: historical performance
      final aMetrics = _metrics[a.id];
      final bMetrics = _metrics[b.id];

      if (aMetrics != null && bMetrics != null) {
        final aSuccessRate = aMetrics.successRate;
        final bSuccessRate = bMetrics.successRate;
        return bSuccessRate.compareTo(aSuccessRate);
      }

      return 0;
    });
  }

  /// Calculate adaptive delay based on performance
  Duration _calculateAdaptiveDelay(Duration batchDuration, int batchSize) {
    final avgDurationPerRequest = batchDuration.inMilliseconds / batchSize;

    if (avgDurationPerRequest > 2000) {
      // Slow requests - increase delay
      return const Duration(milliseconds: 200);
    } else if (avgDurationPerRequest < 500) {
      // Fast requests - reduce delay
      return const Duration(milliseconds: 25);
    } else {
      // Normal requests - standard delay
      return _defaultBatchDelay;
    }
  }

  /// Control methods
  void pause() {
    _isPaused = true;
    LogsProvider().add('Enhanced icon pre-fetching paused');
  }

  void resume() {
    _isPaused = false;
    LogsProvider().add('Enhanced icon pre-fetching resumed');
  }

  void stop() {
    _isRunning = false;
    _isPaused = false;
    LogsProvider().add('Enhanced icon pre-fetching stopped');
  }

  /// Get current status
  EnhancedPrefetchStatus getStatus() {
    return EnhancedPrefetchStatus(
      isRunning: _isRunning,
      isPaused: _isPaused,
      strategy: _strategy,
      completedCount: _completedCount,
      totalCount: _totalCount,
      successCount: _successCount,
      errorCount: _errorCount,
      errors: List.from(_errors),
      metrics: Map.from(_metrics),
      startTime: _startTime,
    );
  }

  /// Get performance metrics
  Map<String, PrefetchMetrics> getMetrics() {
    return Map.from(_metrics);
  }

  /// Clear metrics
  void clearMetrics() {
    _metrics.clear();
    _errors.clear();
  }

  // Private helper methods

  void _resetCounters() {
    _completedCount = 0;
    _totalCount = 0;
    _successCount = 0;
    _errorCount = 0;
    _errors.clear();
  }

  void _completePrefetching() {
    final duration = _startTime != null
        ? DateTime.now().difference(_startTime!)
        : Duration.zero;

    _emitProgress(
      EnhancedPrefetchProgress(
        phase: PrefetchPhase.completed,
        completed: _completedCount,
        total: _totalCount,
        currentApp: '',
        strategy: _strategy,
      ),
    );

    _emitResult(
      EnhancedPrefetchResult(
        success: true,
        strategy: _strategy,
        completedCount: _completedCount,
        successCount: _successCount,
        errorCount: _errorCount,
        totalCount: _totalCount,
        duration: duration,
        errors: List.from(_errors),
        metrics: Map.from(_metrics),
      ),
    );

    LogsProvider().add(
      'Enhanced icon pre-fetching completed. Strategy: $_strategy, '
      'Success: $_successCount/$_totalCount, '
      'Errors: $_errorCount, '
      'Duration: ${duration.inSeconds}s',
    );
  }

  void _handleError(dynamic error, String context) {
    LogsProvider().add('Error in $context: $error');
    _emitResult(
      EnhancedPrefetchResult(
        success: false,
        strategy: _strategy,
        error: error.toString(),
        completedCount: _completedCount,
        successCount: _successCount,
        errorCount: _errorCount,
        totalCount: _totalCount,
        errors: List.from(_errors),
      ),
    );
  }

  Future<void> _waitForResume() async {
    while (_isPaused && _isRunning) {
      await Future.delayed(const Duration(milliseconds: 100));
    }
  }

  void _emitProgress(EnhancedPrefetchProgress progress) {
    if (!_progressController.isClosed) {
      _progressController.add(progress);
    }
  }

  void _emitResult(EnhancedPrefetchResult result) {
    if (!_resultController.isClosed) {
      _resultController.add(result);
    }
  }

  void _initializeEventListeners() {
    // Listen to unified icon service events for optimization
    UnifiedIconService.instance.eventStream.listen((event) {
      // Use events to optimize prefetching behavior
      switch (event.type) {
        case IconEventType.error:
          // Reduce concurrency if many errors
          break;
        case IconEventType.loaded:
          // Potentially increase concurrency if fast loads
          break;
        default:
          break;
      }
    });
  }

  void dispose() {
    _progressController.close();
    _resultController.close();
    _isRunning = false;
    _isPaused = false;
  }
}

// Supporting classes

class PrefetchConfig {
  final int? maxSize;
  final ImageFormat preferredFormat;
  final Duration timeout;
  final int retryCount;

  const PrefetchConfig({
    this.maxSize,
    this.preferredFormat = ImageFormat.auto,
    this.timeout = const Duration(seconds: 30),
    this.retryCount = 3,
  });

  static const PrefetchConfig fast = PrefetchConfig(
    timeout: Duration(seconds: 10),
    retryCount: 1,
    maxSize: 128,
  );

  static const PrefetchConfig highQuality = PrefetchConfig(
    maxSize: 512,
    retryCount = 5,
    timeout: Duration(seconds: 60),
  );
}

class EnhancedPrefetchProgress {
  final PrefetchPhase phase;
  final int completed;
  final int total;
  final String currentApp;
  final PrefetchStrategy strategy;

  EnhancedPrefetchProgress({
    required this.phase,
    required this.completed,
    required this.total,
    required this.currentApp,
    required this.strategy,
  });

  double get progress => total > 0 ? completed / total : 0.0;

  @override
  String toString() {
    return 'EnhancedPrefetchProgress(phase: $phase, completed: $completed/$total, current: $currentApp, strategy: $strategy)';
  }
}

class EnhancedPrefetchResult {
  final bool success;
  final PrefetchStrategy strategy;
  final int completedCount;
  final int successCount;
  final int errorCount;
  final int totalCount;
  final Duration duration;
  final List<PrefetchError> errors;
  final Map<String, PrefetchMetrics> metrics;
  final String? error;

  EnhancedPrefetchResult({
    required this.success,
    required this.strategy,
    required this.completedCount,
    required this.successCount,
    required this.errorCount,
    required this.totalCount,
    required this.duration,
    required this.errors,
    required this.metrics,
    this.error,
  });

  double get successRate => totalCount > 0 ? successCount / totalCount : 0.0;
  double get throughput =>
      totalCount > 0 ? totalCount / duration.inSeconds : 0.0;

  @override
  String toString() {
    return 'EnhancedPrefetchResult(success: $success, strategy: $strategy, successRate: ${(successRate * 100).toStringAsFixed(1)}%, throughput: ${throughput.toStringAsFixed(1)}/s)';
  }
}

class EnhancedPrefetchStatus {
  final bool isRunning;
  final bool isPaused;
  final PrefetchStrategy strategy;
  final int completedCount;
  final int totalCount;
  final int successCount;
  final int errorCount;
  final List<PrefetchError> errors;
  final Map<String, PrefetchMetrics> metrics;
  final DateTime? startTime;

  EnhancedPrefetchStatus({
    required this.isRunning,
    required this.isPaused,
    required this.strategy,
    required this.completedCount,
    required this.totalCount,
    required this.successCount,
    required this.errorCount,
    required this.errors,
    required this.metrics,
    this.startTime,
  });

  double get progress => totalCount > 0 ? completedCount / totalCount : 0.0;
  Duration? get elapsed =>
      startTime != null ? DateTime.now().difference(startTime!) : null;

  @override
  String toString() {
    return 'EnhancedPrefetchStatus(running: $isRunning, paused: $isPaused, strategy: $strategy, progress: ${(progress * 100).toStringAsFixed(1)}%)';
  }
}

class PrefetchMetrics {
  final String appId;
  final bool? lastSuccess;
  final String? lastError;
  final Duration? lastDuration;
  final DateTime? lastAttempt;
  int successCount = 0;
  int errorCount = 0;

  PrefetchMetrics(this.appId);

  double get successRate {
    final total = successCount + errorCount;
    return total > 0 ? successCount / total : 0.0;
  }

  PrefetchMetrics copyWith({
    bool? lastSuccess,
    String? lastError,
    Duration? lastDuration,
  }) {
    final metrics = PrefetchMetrics(appId);
    metrics.successCount = lastSuccess == true
        ? successCount + 1
        : successCount;
    metrics.errorCount = lastSuccess == false ? errorCount + 1 : errorCount;
    return metrics;
  }
}

class PrefetchAppResult {
  final String appId;
  final String appName;
  final bool success;
  final int? iconSize;
  final Duration duration;
  final String? error;
  final IconSource? source;

  PrefetchAppResult({
    required this.appId,
    required this.appName,
    required this.success,
    this.iconSize,
    required this.duration,
    this.error,
    this.source,
  });
}

class PrefetchError {
  final String appId;
  final String appName;
  final String error;
  final DateTime timestamp;

  PrefetchError(this.appId, this.appName, this.error)
    : timestamp = DateTime.now();

  @override
  String toString() {
    return 'PrefetchError(appId: $appId, appName: $appName, error: $error)';
  }
}

enum PrefetchStrategy {
  priority, // High priority apps first
  sequential, // One at a time
  batch, // Controlled concurrency
  adaptive, // Performance-based adjustment
}

enum PrefetchPhase { starting, processing, completed, error }
