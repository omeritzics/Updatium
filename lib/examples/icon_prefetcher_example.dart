import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:updatium/components/button_helpers.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/logs_provider.dart';
import 'package:updatium/services/icon_prefetcher.dart';

/// Widget demonstrating IconPrefetcher background service usage
class IconPrefetcherExample extends StatefulWidget {
  const IconPrefetcherExample({super.key});

  @override
  State<IconPrefetcherExample> createState() => _IconPrefetcherExampleState();
}

class _IconPrefetcherExampleState extends State<IconPrefetcherExample> {
  PrefetchStatus? _status;
  PrefetchProgress? _progress;
  PrefetchResult? _lastResult;

  @override
  void initState() {
    super.initState();
    _setupStreams();
    _updateStatus();
  }

  void _setupStreams() {
    final appsProvider = Provider.of<AppsProvider>(context, listen: false);

    // Listen to progress updates
    appsProvider.getIconPrefetchingProgress().listen((progress) {
      if (mounted) {
        setState(() {
          _progress = progress;
        });
      }
    });

    // Listen to completion results
    appsProvider.getIconPrefetchingResults().listen((result) {
      if (mounted) {
        setState(() {
          _lastResult = result;
        });
        _updateStatus();
      }
    });
  }

  Future<void> _updateStatus() async {
    final appsProvider = Provider.of<AppsProvider>(context, listen: false);
    final status = appsProvider.getIconPrefetchingStatus();
    if (mounted) {
      setState(() {
        _status = status;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Prefetcher Example'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _updateStatus,
            tooltip: 'Refresh Status',
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildStatusCard(),
            const SizedBox(height: 16),
            _buildProgressCard(),
            const SizedBox(height: 16),
            _buildResultCard(),
            const SizedBox(height: 16),
            _buildControlButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Prefetching Status',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            if (_status != null) ...[
              _buildStatusRow('Running', _status!.isRunning.toString()),
              _buildStatusRow('Paused', _status!.isPaused.toString()),
              _buildStatusRow(
                'Progress',
                '${(_status!.progress * 100).toStringAsFixed(1)}%',
              ),
              _buildStatusRow(
                'Completed',
                '${_status!.completedCount}/${_status!.totalCount}',
              ),
              _buildStatusRow('Failed Apps', '${_status!.failedApps.length}'),
              if (_status!.failedApps.isNotEmpty) ...[
                const SizedBox(height: 8),
                Text(
                  'Failed Apps:',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                ..._status!.failedApps
                    .take(5)
                    .map(
                      (appId) => Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 4.0),
                        child: Text(
                          '• $appId',
                          style: const TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                if (_status!.failedApps.length > 5)
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 4.0),
                    child: Text(
                      '... and ${_status!.failedApps.length - 5} more',
                      style: const TextStyle(
                        fontSize: 12,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
              ],
            ] else
              const Text('Status not available'),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$label:'),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildProgressCard() {
    if (_progress == null) return const SizedBox.shrink();

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Current Progress',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: _progress!.progress,
              backgroundColor: Colors.grey.shade300,
              valueColor: AlwaysStoppedAnimation<Color>(
                _getPhaseColor(_progress!.phase),
              ),
            ),
            const SizedBox(height: 8),
            Text('Phase: ${_progress!.phase.name}'),
            if (_progress!.currentApp.isNotEmpty) ...[
              const SizedBox(height: 4),
              Text('Current: ${_progress!.currentApp}'),
            ],
            Text('Progress: ${_progress!.completed}/${_progress!.total}'),
          ],
        ),
      ),
    );
  }

  Widget _buildResultCard() {
    if (_lastResult == null) return const SizedBox.shrink();

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Last Result', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  _lastResult!.success ? Icons.check_circle : Icons.error,
                  color: _lastResult!.success ? Colors.green : Colors.red,
                ),
                const SizedBox(width: 8),
                Text(
                  _lastResult!.success ? 'Success' : 'Failed',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: _lastResult!.success ? Colors.green : Colors.red,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            _buildStatusRow(
              'Success Rate',
              '${(_lastResult!.successRate * 100).toStringAsFixed(1)}%',
            ),
            _buildStatusRow(
              'Completed',
              '${_lastResult!.completedCount}/${_lastResult!.totalCount}',
            ),
            _buildStatusRow('Failed', '${_lastResult!.failedApps.length}'),
            if (_lastResult!.error != null) ...[
              const SizedBox(height: 8),
              Text('Error:', style: Theme.of(context).textTheme.titleSmall),
              Text(
                _lastResult!.error!,
                style: const TextStyle(color: Colors.red, fontSize: 12),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildControlButtons() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              child: FilledButton.tonalIcon(
                onPressed: (_status?.isRunning ?? false)
                    ? null
                    : _startPrefetching,
                icon: const Icon(Icons.download),
                label: const Text('Start Prefetching'),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: FilledButton.tonalIcon(
                onPressed: (_status?.isRunning ?? false)
                    ? _pausePrefetching
                    : null,
                icon: const Icon(Icons.pause),
                label: const Text('Pause'),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: FilledButton.tonalIcon(
                onPressed: (_status?.isPaused ?? false)
                    ? _resumePrefetching
                    : null,
                icon: const Icon(Icons.play_arrow),
                label: const Text('Resume'),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: FilledButton.tonalIcon(
                onPressed: (_status?.isRunning ?? false)
                    ? _stopPrefetching
                    : null,
                icon: const Icon(Icons.stop),
                label: const Text('Stop'),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        FilledButton.tonalIcon(
          onPressed: _showCacheStats,
          icon: const Icon(Icons.storage),
          label: const Text('View Cache Statistics'),
        ),
      ],
    );
  }

  Color _getPhaseColor(PrefetchPhase phase) {
    switch (phase) {
      case PrefetchPhase.starting:
        return Colors.blue;
      case PrefetchPhase.processing:
        return Colors.orange;
      case PrefetchPhase.downloading:
        return Colors.purple;
      case PrefetchPhase.completed:
        return Colors.green;
      case PrefetchPhase.error:
        return Colors.red;
    }
  }

  Future<void> _startPrefetching() async {
    final appsProvider = Provider.of<AppsProvider>(context, listen: false);

    try {
      await appsProvider.startIconPrefetching(
        topCount: 40,
        forceRefresh: false,
      );

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Icon pre-fetching started')),
        );
      }
    } catch (e) {
      // Log detailed error for debugging
      LogsProvider().add('Failed to start pre-fetching: $e');

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Failed to start icon pre-fetching. Please try again.',
            ),
          ),
        );
      }
    }
  }

  void _pausePrefetching() {
    final appsProvider = Provider.of<AppsProvider>(context, listen: false);
    appsProvider.pauseIconPrefetching();
  }

  void _resumePrefetching() {
    final appsProvider = Provider.of<AppsProvider>(context, listen: false);
    appsProvider.resumeIconPrefetching();
  }

  void _stopPrefetching() {
    final appsProvider = Provider.of<AppsProvider>(context, listen: false);
    appsProvider.stopIconPrefetching();
  }

  Future<void> _showCacheStats() async {
    final appsProvider = Provider.of<AppsProvider>(context, listen: false);

    try {
      final stats = await appsProvider.getIconCacheStats();

      if (mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Icon Cache Statistics'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Total Files: ${stats['totalFiles'] ?? 0}'),
                Text('Total Size: ${_formatBytes(stats['totalSize'] ?? 0)}'),
                if (stats['oldestEntry'] != null)
                  Text('Oldest Entry: ${stats['oldestEntry']}'),
                if (stats['newestEntry'] != null)
                  Text('Newest Entry: ${stats['newestEntry']}'),
              ],
            ),
            actions: [
              createAppTextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    } catch (e) {
      // Log detailed error for debugging
      LogsProvider().add('Failed to get cache stats: $e');

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Failed to retrieve cache statistics. Please try again.',
            ),
          ),
        );
      }
    }
  }

  String _formatBytes(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
  }

  @override
  void dispose() {
    super.dispose();
  }
}
