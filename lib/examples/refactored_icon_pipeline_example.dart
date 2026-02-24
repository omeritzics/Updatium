import 'package:flutter/material.dart';
import 'package:updatium/components/button_helpers.dart';
import 'package:updatium/components/enhanced_app_icon.dart';
import 'package:updatium/models/enhanced_app.dart';
import 'package:updatium/services/enhanced_icon_prefetcher.dart';
import 'package:updatium/services/unified_icon_service.dart';

/// Complete example demonstrating the refactored icon-loading pipeline
///
/// This example shows:
/// - Unified icon service usage
/// - Enhanced app model integration
/// - Improved UI components
/// - Performance monitoring
/// - Intelligent pre-fetching
class RefactoredIconPipelineExample extends StatefulWidget {
  const RefactoredIconPipelineExample({super.key});

  @override
  State<RefactoredIconPipelineExample> createState() =>
      _RefactoredIconPipelineExampleState();
}

class _RefactoredIconPipelineExampleState
    extends State<RefactoredIconPipelineExample> {
  List<EnhancedApp> _apps = [];
  EnhancedPrefetchStatus? _prefetchStatus;
  IconCacheStats? _cacheStats;
  bool _showPerformanceOverlay = false;

  @override
  void initState() {
    super.initState();
    _initializeServices();
    _loadSampleApps();
  }

  Future<void> _initializeServices() async {
    // Initialize the unified icon service
    await UnifiedIconService.instance.initialize(
      maxAge: const Duration(days: 30),
      maxCacheSize: 100 * 1024 * 1024, // 100MB
      maxMemoryCacheSize: 50 * 1024 * 1024, // 50MB
    );

    // Listen to icon loading events
    UnifiedIconService.instance.eventStream.listen((event) {
      if (mounted) {
        _handleIconEvent(event);
      }
    });

    // Listen to pre-fetching progress
    EnhancedIconPrefetcher.instance.progressStream.listen((progress) {
      if (mounted) {
        setState(() {
          _prefetchStatus = EnhancedIconPrefetcher.instance.getStatus();
        });
      }
    });

    // Listen to pre-fetching results
    EnhancedIconPrefetcher.instance.resultStream.listen((result) {
      if (mounted) {
        _showPrefetchResult(result);
      }
    });
  }

  void _loadSampleApps() {
    // Create sample enhanced apps for demonstration
    _apps = [
      EnhancedApp(
        id: 'com.example.app1',
        url: 'https://example.com/app1',
        author: 'Example Corp',
        name: 'Sample App 1',
        installedVersion: '1.0.0',
        latestVersion: '1.1.0',
        apkUrls: const [MapEntry('app1.apk', 'https://example.com/app1.apk')],
        preferredApkIndex: 0,
        additionalSettings: const {},
        lastUpdateCheck: DateTime.now().subtract(const Duration(days: 1)),
        pinned: true,
        categories: ['Productivity'],
        remoteIconUrl: 'https://example.com/icon1.png',
        iconPriority: IconPriority.high,
      ),
      EnhancedApp(
        id: 'com.example.app2',
        url: 'https://example.com/app2',
        author: 'Another Corp',
        name: 'Sample App 2',
        installedVersion: null,
        latestVersion: '2.0.0',
        apkUrls: const [MapEntry('app2.apk', 'https://example.com/app2.apk')],
        preferredApkIndex: 0,
        additionalSettings: const {},
        lastUpdateCheck: DateTime.now().subtract(const Duration(days: 3)),
        pinned: false,
        categories: ['Games'],
        remoteIconUrl: 'https://example.com/icon2.png',
        fallbackIconUrl: 'https://backup.example.com/icon2.png',
        iconPriority: IconPriority.normal,
      ),
      EnhancedApp(
        id: 'com.example.app3',
        url: 'https://example.com/app3',
        author: 'Third Corp',
        name: 'Sample App 3',
        installedVersion: '3.0.0',
        latestVersion: '3.0.0',
        apkUrls: const [MapEntry('app3.apk', 'https://example.com/app3.apk')],
        preferredApkIndex: 0,
        additionalSettings: const {},
        lastUpdateCheck: DateTime.now().subtract(const Duration(days: 10)),
        pinned: false,
        categories: ['Utilities'],
        remoteIconUrl: 'https://example.com/icon3.png',
        iconPriority: IconPriority.low,
      ),
    ];
  }

  void _handleIconEvent(IconLoadingEvent event) {
    // Handle icon loading events for monitoring
    switch (event.type) {
      case IconEventType.loaded:
        debugPrint('Icon loaded: ${event.appId} from ${event.source}');
        break;
      case IconEventType.error:
        debugPrint('Icon error: ${event.appId} - ${event.error}');
        break;
      case IconEventType.batchCompleted:
        debugPrint(
          'Batch completed: ${event.successCount}/${event.count} successful',
        );
        break;
      default:
        break;
    }
  }

  void _showPrefetchResult(EnhancedPrefetchResult result) {
    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Pre-fetching completed: ${(result.successRate * 100).toStringAsFixed(1)}% success rate',
        ),
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'Details',
          onPressed: () => _showPrefetchDetails(result),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Refactored Icon Pipeline'),
        actions: [
          IconButton(
            icon: Icon(_showPerformanceOverlay ? Icons.speed : Icons.speed),
            onPressed: () {
              setState(() {
                _showPerformanceOverlay = !_showPerformanceOverlay;
              });
            },
            tooltip: 'Toggle Performance Overlay',
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _refreshCacheStats,
            tooltip: 'Refresh Cache Stats',
          ),
        ],
      ),
      body: Column(
        children: [
          _buildControlPanel(),
          _buildStatsBar(),
          Expanded(child: _buildAppGrid()),
        ],
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'prefetch',
            onPressed: _startPrefetching,
            tooltip: 'Start Pre-fetching',
            child: const Icon(Icons.download),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            heroTag: 'clear',
            onPressed: _clearCache,
            tooltip: 'Clear Cache',
            child: const Icon(Icons.clear),
          ),
        ],
      ),
    );
  }

  Widget _buildControlPanel() {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.1),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: DropdownButtonFormField<PrefetchStrategy>(
                  decoration: const InputDecoration(
                    labelText: 'Pre-fetch Strategy',
                    helperText: 'Optional',
                  ),
                  initialValue:
                      _prefetchStatus?.strategy ?? PrefetchStrategy.priority,
                  items: PrefetchStrategy.values.map((strategy) {
                    return DropdownMenuItem(
                      value: strategy,
                      child: Text(strategy.name.toUpperCase()),
                    );
                  }).toList(),
                  onChanged: (value) {
                    // Strategy would be used when starting pre-fetching
                  },
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: FilledButton.tonalIcon(
                  onPressed: _prefetchStatus?.isRunning == true
                      ? null
                      : _startPrefetching,
                  icon: _prefetchStatus?.isRunning == true
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Icon(Icons.play_arrow),
                  label: Text(
                    _prefetchStatus?.isRunning == true ? 'Running...' : 'Start',
                  ),
                ),
              ),
            ],
          ),
          if (_prefetchStatus?.isRunning == true) ...[
            const SizedBox(height: 8),
            LinearProgressIndicator(value: _prefetchStatus?.progress ?? 0.0),
            const SizedBox(height: 4),
            Text(
              '${_prefetchStatus?.completedCount ?? 0}/${_prefetchStatus?.totalCount ?? 0} apps',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildStatsBar() {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildStatItem('Apps', '${_apps.length}', Icons.apps),
          _buildStatItem(
            'Memory Cache',
            '${_cacheStats?.memoryCacheCount ?? 0}',
            Icons.memory,
          ),
          _buildStatItem(
            'Disk Cache',
            '${_cacheStats?.diskCacheCount ?? 0}',
            Icons.storage,
          ),
          _buildStatItem(
            'Pending',
            '${_cacheStats?.pendingRequests ?? 0}',
            Icons.pending,
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, String value, IconData icon) {
    return Column(
      children: [
        Icon(icon, size: 20),
        const SizedBox(height: 4),
        Text(
          value,
          style: Theme.of(
            context,
          ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(label, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }

  Widget _buildAppGrid() {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: _apps.length,
      itemBuilder: (context, index) {
        final app = _apps[index];
        return _buildAppCard(app);
      },
    );
  }

  Widget _buildAppCard(EnhancedApp app) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: () => _showAppDetails(app),
        onLongPress: () => _showAppOptions(app),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Enhanced icon with performance overlay
              Expanded(
                flex: 3,
                child: EnhancedAppIconGrid(
                  app: app,
                  onTap: () => _showAppDetails(app),
                ),
              ),

              const SizedBox(height: 8),

              // App info
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      app.name,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      app.author,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withValues(alpha: 0.7),
                      ),
                    ),
                    const SizedBox(height: 4),
                    // Priority indicator
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: _getPriorityColor(app.iconPriority),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        app.iconPriority.name.toUpperCase(),
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getPriorityColor(IconPriority priority) {
    switch (priority) {
      case IconPriority.high:
        return Colors.red;
      case IconPriority.normal:
        return Colors.blue;
      case IconPriority.low:
        return Colors.grey;
    }
  }

  void _startPrefetching() async {
    await EnhancedIconPrefetcher.instance.startPrefetching(
      apps: _apps,
      strategy: _prefetchStatus?.strategy ?? PrefetchStrategy.priority,
      maxConcurrent: 5,
      forceRefresh: false,
      config: PrefetchConfig.highQuality,
    );
  }

  void _clearCache() async {
    await UnifiedIconService.instance.clearCache();
    _refreshCacheStats();

    if (mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Cache cleared')));
    }
  }

  Future<void> _refreshCacheStats() async {
    final stats = await UnifiedIconService.instance.getCacheStats();
    if (mounted) {
      setState(() {
        _cacheStats = stats;
      });
    }
  }

  void _showAppDetails(EnhancedApp app) {
    showDialog(
      context: context,
      builder: (context) => _AppDetailsDialog(app: app),
    );
  }

  void _showAppOptions(EnhancedApp app) {
    showModalBottomSheet(
      context: context,
      builder: (context) => _AppOptionsSheet(app: app),
    );
  }

  void _showPrefetchDetails(EnhancedPrefetchResult result) {
    showDialog(
      context: context,
      builder: (context) => _PrefetchDetailsDialog(result: result),
    );
  }
}

/// App details dialog
class _AppDetailsDialog extends StatelessWidget {
  final EnhancedApp app;

  const _AppDetailsDialog({required this.app});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(app.name),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Large icon
            Center(
              child: EnhancedAppIcon(
                app: app,
                size: 120,
                enablePerformanceOverlay: true,
                config: IconRequestConfig.highQuality,
              ),
            ),
            const SizedBox(height: 16),

            // App details
            _buildDetailRow('ID', app.id),
            _buildDetailRow('Author', app.author),
            _buildDetailRow(
              'Installed',
              app.installedVersion ?? 'Not installed',
            ),
            _buildDetailRow('Latest', app.latestVersion),
            _buildDetailRow('Priority', app.iconPriority.name),
            _buildDetailRow(
              'Prefetch Score',
              app.prefetchScore.toStringAsFixed(1),
            ),
            if (app.remoteIconUrl != null)
              _buildDetailRow('Icon URL', app.remoteIconUrl!),
            if (app.fallbackIconUrl != null)
              _buildDetailRow('Fallback URL', app.fallbackIconUrl!),

            // Loading state
            const SizedBox(height: 16),
            Text(
              'Loading State: ${app.loadingState.name}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            if (app.hasError)
              Text(
                'Error: ${app.lastError}',
                style: const TextStyle(color: Colors.red),
              ),
          ],
        ),
      ),
      actions: [
        createAppTextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Close'),
        ),
      ],
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              '$label:',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}

/// App options bottom sheet
class _AppOptionsSheet extends StatelessWidget {
  final EnhancedApp app;

  const _AppOptionsSheet({required this.app});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: EnhancedAppIconSimple(app: app, size: 40),
            title: Text(app.name),
            subtitle: Text(app.author),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.refresh),
            title: const Text('Refresh Icon'),
            onTap: () {
              Navigator.pop(context);
              // Refresh icon logic would go here
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('App Details'),
            onTap: () {
              Navigator.pop(context);
              showDialog(
                context: context,
                builder: (context) => _AppDetailsDialog(app: app),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.priority_high),
            title: const Text('Change Priority'),
            onTap: () {
              Navigator.pop(context);
              // Change priority logic would go here
            },
          ),
        ],
      ),
    );
  }
}

/// Pre-fetching details dialog
class _PrefetchDetailsDialog extends StatelessWidget {
  final EnhancedPrefetchResult result;

  const _PrefetchDetailsDialog({required this.result});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Pre-fetching Results'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailRow('Strategy', result.strategy.name),
            _buildDetailRow(
              'Success Rate',
              '${(result.successRate * 100).toStringAsFixed(1)}%',
            ),
            _buildDetailRow(
              'Completed',
              '${result.completedCount}/${result.totalCount}',
            ),
            _buildDetailRow('Successes', '${result.successCount}'),
            _buildDetailRow('Errors', '${result.errorCount}'),
            _buildDetailRow('Duration', '${result.duration.inSeconds}s'),
            _buildDetailRow(
              'Throughput',
              '${result.throughput.toStringAsFixed(1)} apps/s',
            ),

            if (result.errors.isNotEmpty) ...[
              const SizedBox(height: 16),
              const Text(
                'Errors:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              ...result.errors
                  .take(5)
                  .map(
                    (error) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        '• ${error.appName}: ${error.error}',
                        style: const TextStyle(color: Colors.red, fontSize: 12),
                      ),
                    ),
                  ),
              if (result.errors.length > 5)
                Text(
                  '... and ${result.errors.length - 5} more',
                  style: const TextStyle(fontStyle: FontStyle.italic),
                ),
            ],
          ],
        ),
      ),
      actions: [
        createAppTextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Close'),
        ),
      ],
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(
            width: 120,
            child: Text(
              '$label:',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
