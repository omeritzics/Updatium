import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:updatium/components/button_helpers.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/logs_provider.dart';

/// Example widget demonstrating IconCache usage
class IconCacheExample extends StatefulWidget {
  const IconCacheExample({super.key});

  @override
  State<IconCacheExample> createState() => _IconCacheExampleState();
}

class _IconCacheExampleState extends State<IconCacheExample> {
  final TextEditingController _appIdController = TextEditingController(
    text: 'com.example.app',
  );
  final TextEditingController _urlController = TextEditingController(
    text: 'https://example.com/icon.png',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Icon Cache Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _appIdController,
              decoration: const InputDecoration(labelText: 'App ID'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _urlController,
              decoration: const InputDecoration(
                labelText: 'Remote Icon URL',
                hintText: 'https://example.com/icon.png',
              ),
            ),
            const SizedBox(height: 16),
            FilledButton.tonal(
              onPressed: () => _loadIcon(context),
              child: const Text('Load Icon'),
            ),
            const SizedBox(height: 16),
            FilledButton.tonal(
              onPressed: () => _checkCache(context),
              child: const Text('Check Cache Status'),
            ),
            const SizedBox(height: 16),
            FilledButton.tonal(
              onPressed: () => _getCacheStats(context),
              child: const Text('Get Cache Statistics'),
            ),
            const SizedBox(height: 16),
            FilledButton.tonal(
              onPressed: () => _clearCache(context),
              child: const Text('Clear Cache'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _loadIcon(BuildContext context) async {
    final appsProvider = Provider.of<AppsProvider>(context, listen: false);

    try {
      final iconData = await appsProvider.getIcon(
        _appIdController.text,
        _urlController.text,
        forceRefresh: false,
      );

      if (iconData != null) {
        if (context.mounted) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Icon Loaded Successfully'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.memory(iconData, width: 64, height: 64),
                  const SizedBox(height: 16),
                  Text('Size: ${iconData.length} bytes'),
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
      } else {
        if (context.mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('Failed to load icon')));
        }
      }
    } catch (e) {
      // Log detailed error for debugging
      LogsProvider().add('Failed to load icon: $e');

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to load icon. Please try again.'),
          ),
        );
      }
    }
  }

  Future<void> _checkCache(BuildContext context) async {
    final appsProvider = Provider.of<AppsProvider>(context, listen: false);

    try {
      final isCached = await appsProvider.isIconCached(
        _appIdController.text,
        _urlController.text,
      );

      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Icon is cached: $isCached')));
      }
    } catch (e) {
      // Log detailed error for debugging
      LogsProvider().add('Failed to check cache: $e');

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to check cache status. Please try again.'),
          ),
        );
      }
    }
  }

  Future<void> _getCacheStats(BuildContext context) async {
    final appsProvider = Provider.of<AppsProvider>(context, listen: false);

    try {
      final stats = await appsProvider.getIconCacheStats();

      if (context.mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Cache Statistics'),
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

      if (context.mounted) {
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

  Future<void> _clearCache(BuildContext context) async {
    final appsProvider = Provider.of<AppsProvider>(context, listen: false);

    try {
      await appsProvider.clearIconCache();

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Cache cleared successfully')),
        );
      }
    } catch (e) {
      // Log detailed error for debugging
      LogsProvider().add('Failed to clear cache: $e');

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to clear cache. Please try again.'),
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
    _appIdController.dispose();
    _urlController.dispose();
    super.dispose();
  }
}
