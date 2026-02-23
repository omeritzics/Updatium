import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:updatium/components/button_helpers.dart';
import 'package:updatium/providers/apps_provider.dart';

/// Example demonstrating the updated App Catalogue UI with caching system
class UpdatedAppCatalogueExample extends StatefulWidget {
  const UpdatedAppCatalogueExample({super.key});

  @override
  State<UpdatedAppCatalogueExample> createState() =>
      _UpdatedAppCatalogueExampleState();
}

class _UpdatedAppCatalogueExampleState
    extends State<UpdatedAppCatalogueExample> {
  String _searchQuery = '';
  bool _showInstalledOnly = false;
  bool _showUpdatesOnly = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Updated App Catalogue'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: _buildSearchAndFilters(),
        ),
      ),
      body: Consumer<AppsProvider>(
        builder: (context, appsProvider, child) {
          final apps = appsProvider.apps.values.toList();
          final filteredApps = _filterApps(apps);

          if (appsProvider.loadingApps && filteredApps.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 16),
                  Text('Loading apps...'),
                ],
              ),
            );
          }

          if (filteredApps.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.apps,
                    size: 64,
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withOpacity(0.5),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'No apps found',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Try adjusting your filters or add some apps',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurface.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            );
          }

          return Column(
            children: [
              _buildStatsBar(filteredApps),
              Expanded(child: _buildAppGrid(filteredApps)),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddAppDialog,
        child: const Icon(Icons.add_circle),
      ),
    );
  }

  Widget _buildSearchAndFilters() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              hintText: 'Search apps...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              setState(() {
                _searchQuery = value.toLowerCase();
              });
            },
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: FilterChip(
                  label: const Text('Installed Only'),
                  selected: _showInstalledOnly,
                  onSelected: (selected) {
                    setState(() {
                      _showInstalledOnly = selected;
                    });
                  },
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: FilterChip(
                  label: const Text('Updates Only'),
                  selected: _showUpdatesOnly,
                  onSelected: (selected) {
                    setState(() {
                      _showUpdatesOnly = selected;
                    });
                  },
                ),
              ),
              const SizedBox(width: 8),
              IconButton(
                onPressed: _refreshAllIcons,
                icon: const Icon(Icons.refresh),
                tooltip: 'Refresh All Icons',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatsBar(List apps) {
    int installedCount = apps.where((app) => app.installedInfo != null).length;
    int updateCount = apps
        .where(
          (app) =>
              app.installedInfo != null &&
              app.installedVersion != app.app.latestVersion,
        )
        .length;
    int cachedCount = 0;

    return Container(
      padding: const EdgeInsets.all(16),
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildStatItem('Total', '${apps.length}', Icons.apps),
          _buildStatItem('Installed', '$installedCount', Icons.download_done),
          _buildStatItem('Updates', '$updateCount', Icons.system_update),
          _buildStatItem('Cached', '$cachedCount', Icons.storage),
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

  Widget _buildAppGrid(List apps) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: apps.length,
      itemBuilder: (context, index) {
        final appInMemory = apps[index];
        return _buildAppCard(appInMemory);
      },
    );
  }

  Widget _buildAppCard(appInMemory) {
    final app = appInMemory.app;
    final isInstalled = appInMemory.installedInfo != null;
    final hasUpdate = isInstalled && app.installedVersion != app.latestVersion;

    return Card(
      elevation: 2,
      child: InkWell(
        onTap: () => _openAppDetails(app),
        onLongPress: () => _showAppOptions(app),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // App Icon with caching
              Expanded(
                flex: 3,
                child: CachedAppIconGrid(
                  app: app,
                  size: 80,
                  onTap: () => _openAppDetails(app),
                  onDoubleTap: () => _launchApp(app),
                ),
              ),

              const SizedBox(height: 8),

              // App Name
              Expanded(
                flex: 1,
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
                        ).colorScheme.onSurface.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ),

              // Status Indicators
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (hasUpdate)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'UPDATE',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  if (isInstalled && !hasUpdate)
                    Icon(Icons.check_circle, size: 16, color: Colors.green),
                  if (!isInstalled)
                    Icon(
                      Icons.cloud_download,
                      size: 16,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  List _filterApps(List apps) {
    return apps.where((appInMemory) {
      final app = appInMemory.app;

      // Search filter
      if (_searchQuery.isNotEmpty) {
        final matchesName = app.name.toLowerCase().contains(_searchQuery);
        final matchesAuthor = app.author.toLowerCase().contains(_searchQuery);
        if (!matchesName && !matchesAuthor) return false;
      }

      // Installed filter
      if (_showInstalledOnly && appInMemory.installedInfo == null) {
        return false;
      }

      // Updates filter
      if (_showUpdatesOnly) {
        final hasUpdate =
            appInMemory.installedInfo != null &&
            app.installedVersion != app.latestVersion;
        if (!hasUpdate) return false;
      }

      return true;
    }).toList();
  }

  void _openAppDetails(app) {
    // Navigate to app details page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AppDetailsPage(app: app)),
    );
  }

  void _launchApp(app) {
    // Launch the app
    // Implementation depends on your app launching logic
  }

  void _showAppOptions(app) {
    showModalBottomSheet(
      context: context,
      builder: (context) => AppOptionsSheet(app: app),
    );
  }

  void _refreshAllIcons() {
    final appsProvider = Provider.of<AppsProvider>(context, listen: false);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Refreshing all icons...'),
        duration: Duration(seconds: 2),
      ),
    );

    // Trigger icon refresh for all apps
    for (var appInMemory in appsProvider.apps.values) {
      appsProvider.updateAppIcon(appInMemory.app.id, ignoreCache: true);
    }
  }

  void _showAddAppDialog() {
    // Show add app dialog
    showDialog(context: context, builder: (context) => const AddAppDialog());
  }
}

/// Simple app details page to demonstrate individual app view
class AppDetailsPage extends StatelessWidget {
  final app;

  const AppDetailsPage({super.key, required this.app});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(app.name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Large app icon
            CachedAppIcon(
              app: app,
              size: 120,
              enableShimmer: true,
              showInstalledIndicator: true,
            ),
            const SizedBox(height: 16),

            // App info
            Text(
              app.name,
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            Text(
              'by ${app.author}',
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),

            // Version info
            if (app.installedVersion != null)
              Text(
                'Installed: ${app.installedVersion}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            Text(
              'Latest: ${app.latestVersion}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            if (app.remoteIconUrl != null) ...[
              const SizedBox(height: 16),
              Text(
                'Remote Icon URL:',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                app.remoteIconUrl!,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

/// App options bottom sheet
class AppOptionsSheet extends StatelessWidget {
  final app;

  const AppOptionsSheet({super.key, required this.app});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: CachedAppIconSimple(app: app, size: 40),
            title: Text(app.name),
            subtitle: Text(app.author),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.refresh),
            title: const Text('Refresh Icon'),
            onTap: () {
              Navigator.pop(context);
              // Refresh icon logic
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('App Details'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AppDetailsPage(app: app),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

/// Placeholder for Add App Dialog
class AddAppDialog extends StatelessWidget {
  const AddAppDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add App'),
      content: const Text('Add App functionality would be implemented here.'),
      actions: [
        createAppTextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}
