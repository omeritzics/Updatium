import 'package:animations/animations.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';

import 'package:updatium/components/generated_form.dart';
import 'package:updatium/main.dart';
import 'package:updatium/pages/app.dart';
import 'package:updatium/pages/settings.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:markdown/markdown.dart' as md;

// Material 3 spacing tokens
const gap8 = SizedBox(height: 8);
const gap12 = SizedBox(height: 12);
const gap16 = SizedBox(height: 16);
const gap24 = SizedBox(height: 24);
const gap32 = SizedBox(height: 32);

const horizontalGap8 = SizedBox(width: 8);
const horizontalGap12 = SizedBox(width: 12);
const horizontalGap16 = SizedBox(width: 16);
const horizontalGap24 = SizedBox(width: 24);

class AppsPage extends StatefulWidget {
  const AppsPage({super.key});

  @override
  State<AppsPage> createState() => AppsPageState();
}

void showChangeLogDialog(
  BuildContext context,
  App app,
  String? changesUrl,
  AppSource appSource,
  String changeLog,
) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        scrollable: true,
        title: Text(tr('changes')),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(app.latestVersion),
            const SizedBox(height: 16),
            if (changesUrl != null) ...[
              GestureDetector(
                onTap: () {
                  launchUrlString(
                    changesUrl,
                    mode: LaunchMode.externalApplication,
                  );
                },
                child: Text(
                  changesUrl,
                  style: const TextStyle(
                    decoration: TextDecoration.underline,
                    fontStyle: FontStyle.italic,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 16),
            ],
            appSource.changeLogIfAnyIsMarkDown
                ? ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.5,
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Markdown(
                        styleSheet: MarkdownStyleSheet(
                          blockquoteDecoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                          ),
                        ),
                        data: changeLog,
                        onTapLink: (text, href, title) {
                          if (href != null) {
                            launchUrlString(
                              href.startsWith('http://') ||
                                      href.startsWith('https://')
                                  ? href
                                  : '${Uri.parse(app.url).origin}/$href',
                              mode: LaunchMode.externalApplication,
                            );
                          }
                        },
                        extensionSet: md.ExtensionSet(
                          md.ExtensionSet.gitHubFlavored.blockSyntaxes,
                          [
                            md.EmojiSyntax(),
                            ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes,
                          ],
                        ),
                      ),
                    ),
                  )
                : Text(changeLog),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(tr('ok')),
          ),
        ],
      );
    },
  );
}

Null Function()? getChangeLogFn(BuildContext context, App app) {
  AppSource appSource = SourceProvider().getSource(
    app.url,
    overrideSource: app.overrideSource,
  );
  String? changesUrl = appSource.changeLogPageFromStandardUrl(app.url);
  String? changeLog = app.changeLog;
  if (changeLog?.split('\n').length == 1) {
    if (RegExp(
      '(http|ftp|https)://([\\w_-]+(?:(?:\\.[\\w_-]+)+))([\\w.,@?^=%&:/~+#-]*[\\w@?^=%&/~+#-])?',
    ).hasMatch(changeLog!)) {
      if (changesUrl == null) {
        changesUrl = changeLog;
        changeLog = null;
      }
    }
  }
  return (changeLog == null && changesUrl == null)
      ? null
      : () {
          if (changeLog != null) {
            showChangeLogDialog(context, app, changesUrl, appSource, changeLog);
          } else {
            launchUrlString(changesUrl!, mode: LaunchMode.externalApplication);
          }
        };
}

class AppsPageState extends State<AppsPage> {
  AppsFilter filter = AppsFilter();
  final AppsFilter neutralFilter = AppsFilter();
  var updatesOnlyFilter = AppsFilter(
    includeUptodate: false,
    includeNonInstalled: false,
  );
  Set<String> selectedAppIds = {};
  DateTime? refreshingSince;
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = GlobalKey();
  final Set<int> _expandedCategories = <int>{};

  // Helper function to preserve transparency regardless of theme overrides
  Color preserveTransparency(Color baseColor, double alpha) {
    // Always apply the requested transparency, ensuring it takes priority
    // over any theme-based color overrides
    return baseColor.withValues(alpha: alpha);
  }

  // Helper function to get category color with preserved transparency
  Color getCategoryColor(
    String category,
    int alpha,
    SettingsProvider settingsProvider,
  ) {
    final categoryColorValue = settingsProvider.categories[category];
    if (categoryColorValue != null) {
      return Color(categoryColorValue).withAlpha(alpha);
    }
    // Fallback to truly transparent color
    return Color.fromARGB(0, 0, 0, 0);
  }

  bool clearSelected() {
    if (selectedAppIds.isNotEmpty) {
      setState(() {
        selectedAppIds.clear();
      });
      return true;
    }
    return false;
  }

  void selectThese(List<App> apps) {
    if (selectedAppIds.isEmpty) {
      setState(() {
        for (var a in apps) {
          selectedAppIds.add(a.id);
        }
      });
    }
  }

  late final ScrollController scrollController = ScrollController();

  var sourceProvider = SourceProvider();

  @override
  Widget build(BuildContext context) {
    var appsProvider = context.watch<AppsProvider>();
    var settingsProvider = context.watch<SettingsProvider>();
    var listedApps = appsProvider.getAppValues().toList();

    refresh() {
      HapticFeedback.lightImpact();
      setState(() {
        refreshingSince = DateTime.now();
      });
      return appsProvider
          .checkUpdates()
          .catchError((e) {
            if (mounted) {
              showError(e is Map ? e['errors'] : e, context);
            }
            return <App>[];
          })
          .whenComplete(() {
            setState(() {
              refreshingSince = null;
            });
          });
    }

    if (!appsProvider.loadingApps &&
        appsProvider.apps.isNotEmpty &&
        settingsProvider.checkJustStarted() &&
        settingsProvider.checkOnStart) {
      _refreshIndicatorKey.currentState?.show();
    }

    selectedAppIds = selectedAppIds
        .where((element) => listedApps.map((e) => e.app.id).contains(element))
        .toSet();

    toggleAppSelected(App app) {
      setState(() {
        if (selectedAppIds.map((e) => e).contains(app.id)) {
          selectedAppIds.removeWhere((a) => a == app.id);
        } else {
          selectedAppIds.add(app.id);
        }
      });
    }

    listedApps = listedApps.where((app) {
      if (app.app.installedVersion == app.app.latestVersion &&
          !(filter.includeUptodate)) {
        return false;
      }
      if (app.app.installedVersion == null &&
          (settingsProvider.hideNonInstalled ||
              !(filter.includeNonInstalled))) {
        return false;
      }
      if (filter.nameFilter.isNotEmpty ||
          filter.authorFilter.isNotEmpty ||
          filter.descriptionFilter.isNotEmpty) {
        List<String> nameTokens = filter.nameFilter
            .split(' ')
            .where((element) => element.trim().isNotEmpty)
            .toList();
        List<String> authorTokens = filter.authorFilter
            .split(' ')
            .where((element) => element.trim().isNotEmpty)
            .toList();
        List<String> descriptionTokens = filter.descriptionFilter
            .split(' ')
            .where((element) => element.trim().isNotEmpty)
            .toList();

        for (var t in nameTokens) {
          if (!app.name.toLowerCase().contains(t.toLowerCase())) {
            return false;
          }
        }
        for (var t in authorTokens) {
          if (!app.author.toLowerCase().contains(t.toLowerCase())) {
            return false;
          }
        }
        for (var t in descriptionTokens) {
          String? appDescription = app.app.additionalSettings['about']
              ?.toString();
          if (appDescription == null ||
              !appDescription.toLowerCase().contains(t.toLowerCase())) {
            return false;
          }
        }
      }
      if (filter.idFilter.isNotEmpty) {
        if (!app.app.id.contains(filter.idFilter)) {
          return false;
        }
      }
      if (filter.categoryFilter.isNotEmpty &&
          filter.categoryFilter
              .intersection(app.app.categories?.toSet() ?? <String>{})
              .isEmpty) {
        return false;
      }
      if (filter.sourceFilter.isNotEmpty &&
          sourceProvider
                  .getSource(
                    app.app.url,
                    overrideSource: app.app.overrideSource,
                  )
                  .runtimeType
                  .toString() !=
              filter.sourceFilter) {
        return false;
      }
      return true;
    }).toList();

    listedApps.sort((a, b) {
      int result = 0;
      if (settingsProvider.sortColumn == SortColumnSettings.authorName) {
        result = ((a.author + a.name).toLowerCase()).compareTo(
          (b.author + b.name).toLowerCase(),
        );
      } else if (settingsProvider.sortColumn == SortColumnSettings.nameAuthor) {
        result = ((a.name + a.author).toLowerCase()).compareTo(
          (b.name + b.author).toLowerCase(),
        );
      } else if (settingsProvider.sortColumn ==
          SortColumnSettings.releaseDate) {
        // Handle null dates: apps with unknown release dates are grouped at the end
        final aDate = a.app.releaseDate;
        final bDate = b.app.releaseDate;
        final isDescending =
            settingsProvider.sortOrder == SortOrderSettings.descending;
        if (aDate == null && bDate == null) {
          // Both null: sort by name for consistency
          result = ((a.name + a.author).toLowerCase()).compareTo(
            (b.name + b.author).toLowerCase(),
          );
        } else if (aDate == null) {
          // a has no date, always push to end regardless of sort direction
          result = isDescending ? -1 : 1;
        } else if (bDate == null) {
          // b has no date, always push to end regardless of sort direction
          result = isDescending ? 1 : -1;
        } else {
          result = aDate.compareTo(bDate);
        }
      }
      return result;
    });

    if (settingsProvider.sortOrder == SortOrderSettings.descending) {
      listedApps = listedApps.reversed.toList();
    }

    var existingUpdates = appsProvider.findExistingUpdates(installedOnly: true);

    var existingUpdateIdsAllOrSelected = existingUpdates
        .where(
          (element) => selectedAppIds.isEmpty
              ? listedApps.where((a) => a.app.id == element).isNotEmpty
              : selectedAppIds.map((e) => e).contains(element),
        )
        .toList();
    var newInstallIdsAllOrSelected = appsProvider
        .findExistingUpdates(nonInstalledOnly: true)
        .where(
          (element) => selectedAppIds.isEmpty
              ? listedApps.where((a) => a.app.id == element).isNotEmpty
              : selectedAppIds.map((e) => e).contains(element),
        )
        .toList();

    List<String> trackOnlyUpdateIdsAllOrSelected = [];
    existingUpdateIdsAllOrSelected = existingUpdateIdsAllOrSelected.where((id) {
      if (appsProvider.apps[id]!.app.additionalSettings['trackOnly'] == true) {
        trackOnlyUpdateIdsAllOrSelected.add(id);
        return false;
      }
      return true;
    }).toList();
    newInstallIdsAllOrSelected = newInstallIdsAllOrSelected.where((id) {
      if (appsProvider.apps[id]!.app.additionalSettings['trackOnly'] == true) {
        trackOnlyUpdateIdsAllOrSelected.add(id);
        return false;
      }
      return true;
    }).toList();

    if (settingsProvider.pinUpdates) {
      var temp = [];
      listedApps = listedApps.where((sa) {
        if (existingUpdates.contains(sa.app.id)) {
          temp.add(sa);
          return false;
        }
        return true;
      }).toList();
      listedApps = [...temp, ...listedApps];
    }

    if (settingsProvider.buryNonInstalled) {
      var temp = [];
      listedApps = listedApps.where((sa) {
        if (sa.app.installedVersion == null) {
          temp.add(sa);
          return false;
        }
        return true;
      }).toList();
      listedApps = [...listedApps, ...temp];
    }

    var tempPinned = [];
    var tempNotPinned = [];
    for (var a in listedApps) {
      if (a.app.pinned) {
        tempPinned.add(a);
      } else {
        tempNotPinned.add(a);
      }
    }
    listedApps = [...tempPinned, ...tempNotPinned];

    List<String?> getListedCategories() {
      var temp = listedApps.map(
        (e) =>
            e.app.categories?.isNotEmpty == true ? e.app.categories! : [null],
      );
      return temp.isNotEmpty
          ? {
              ...temp.reduce((v, e) => [...v, ...e]),
            }.toList()
          : [];
    }

    var listedCategories = getListedCategories();
    listedCategories.sort((a, b) {
      return a != null && b != null
          ? a.toLowerCase().compareTo(b.toLowerCase())
          : a == null
          ? 1
          : -1;
    });

    Set<App> selectedApps = listedApps
        .map((e) => e.app)
        .where((a) => selectedAppIds.contains(a.id))
        .toSet();

    getLoadingWidgets() {
      return [
        if (listedApps.isEmpty)
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.widgets,
                      size: 80,
                      color: preserveTransparency(
                        Theme.of(context).colorScheme.primary,
                        0.6,
                      ),
                    ),
                    gap24,
                    Text(
                      appsProvider.apps.isEmpty
                          ? appsProvider.loadingApps
                                ? tr('pleaseWait')
                                : tr('noApps')
                          : tr('noAppsForFilter'),
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (appsProvider.apps.isEmpty && !appsProvider.loadingApps)
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Text(
                          () {
                            final subtext = tr('noAppsSubtext');
                            // Hide subtext if translation key is not found (returns the key itself)
                            return subtext == 'noAppsSubtext' ? '' : subtext;
                          }(),
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color: preserveTransparency(
                                  Theme.of(context).colorScheme.onSurface,
                                  0.7,
                                ),
                              ),
                          textAlign: TextAlign.center,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        if (refreshingSince != null || appsProvider.loadingApps)
          SliverToBoxAdapter(
            child: LinearProgressIndicator(
              value: appsProvider.loadingApps
                  ? null
                  : appsProvider
                            .getAppValues()
                            .where(
                              (element) =>
                                  !(element.app.lastUpdateCheck?.isBefore(
                                        refreshingSince!,
                                      ) ??
                                      true),
                            )
                            .length /
                        (appsProvider.apps.isNotEmpty
                            ? appsProvider.apps.length
                            : 1),
            ),
          ),
      ];
    }

    getAppIcon(int appIndex) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  AppPage(appId: listedApps[appIndex].app.id),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                    return SharedAxisTransition(
                      animation: animation,
                      secondaryAnimation: secondaryAnimation,
                      transitionType: SharedAxisTransitionType.horizontal,
                      child: child,
                    );
                  },
            ),
          );
        },
        onDoubleTap: () {
          pm.openApp(listedApps[appIndex].app.id);
        },
        onLongPress: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AppPage(appId: listedApps[appIndex].app.id),
            ),
          );
        },
        child: _buildSimpleGridIcon(listedApps[appIndex].app),
      );
    }

    // Handle app tap navigation
    void _handleAppTap(App app) {
      if (selectedAppIds.isNotEmpty) {
        toggleAppSelected(app);
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AppPage(appId: app.id)),
        );
      }
    }

    // Install app helper method
    void _installApp(App app) {
      appsProvider
          .downloadAndInstallLatestApps([
            app.id,
          ], globalNavigatorKey.currentContext)
          .catchError((e) {
            showError(e, context);
            return <String>[];
          });
    }

    // Build action button for install/update/updated states
    Widget _buildActionButton(
      App app,
      bool isInstalled,
      bool hasUpdate, {
      bool isCompact = false,
    }) {
      if (!isInstalled) {
        return FilledButton.tonal(
          onPressed: appsProvider.areDownloadsRunning()
              ? null
              : () => _installApp(app),
          style: ButtonStyle(
            visualDensity: isCompact ? VisualDensity.compact : null,
            minimumSize: WidgetStateProperty.all(
              isCompact ? const Size(60, 32) : null,
            ),
          ),
          child: Text(tr('install')),
        );
      } else if (hasUpdate) {
        return FilledButton.tonal(
          onPressed: appsProvider.areDownloadsRunning()
              ? null
              : () => _installApp(app),
          style: ButtonStyle(
            visualDensity: isCompact ? VisualDensity.compact : null,
            minimumSize: WidgetStateProperty.all(
              isCompact ? const Size(60, 32) : null,
            ),
          ),
          child: Text(tr('update')),
        );
      } else {
        return Chip(
          avatar: Icon(
            Icons.check_circle,
            color: Theme.of(context).colorScheme.primary,
            size: isCompact ? 14 : 16,
          ),
          label: Text(
            tr('updated'),
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: isCompact ? 10 : 12,
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        );
      }
    }

    // Simplified grid tile widget using Material Design 3 components
    Widget _buildGridTile(int index) {
      final appInfo = listedApps[index];
      final app = appInfo.app;
      final isInstalled = app.installedVersion != null;
      final hasUpdate =
          isInstalled && app.installedVersion != app.latestVersion;
      final isTrackOnly = app.additionalSettings['trackOnly'] == true;
      final isSelected = selectedAppIds.contains(app.id);

      return Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        color: isSelected
            ? Theme.of(
                context,
              ).colorScheme.primaryContainer.withValues(alpha: 0.3)
            : null,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () => _handleAppTap(app),
          onLongPress: () => toggleAppSelected(app),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // App icon with status indicators
                    Stack(
                      children: [
                        SizedBox(
                          height: 56,
                          width: 56,
                          child: getAppIcon(index),
                        ),
                        if (app.pinned)
                          Positioned(
                            top: -4,
                            left: -4,
                            child: Icon(
                              Icons.push_pin,
                              size: 16,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        if (hasUpdate)
                          Positioned(
                            top: -4,
                            right: -4,
                            child: Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    // App name
                    Text(
                      appInfo.name,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 2),
                    // Author name
                    Text(
                      appInfo.author,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(height: 8),
                    // Action button or progress indicator
                    if (appInfo.downloadProgress != null)
                      SizedBox(
                        width: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (appInfo.downloadProgress! >= 0)
                              Text(
                                '${appInfo.downloadProgress!.toInt()}%',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            const SizedBox(height: 4),
                            SizedBox(
                              width: 40,
                              height: 4,
                              child: LinearProgressIndicator(
                                value: appInfo.downloadProgress! >= 0
                                    ? appInfo.downloadProgress! / 100
                                    : null,
                              ),
                            ),
                          ],
                        ),
                      )
                    else if (!isTrackOnly)
                      _buildActionButton(
                        app,
                        isInstalled,
                        hasUpdate,
                        isCompact: true,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    // Simplified list tile widget using Material Design 3 components
    Widget _buildListTile(int index) {
      final appInfo = listedApps[index];
      final app = appInfo.app;
      final isInstalled = app.installedVersion != null;
      final hasUpdate =
          isInstalled && app.installedVersion != app.latestVersion;
      final isTrackOnly = app.additionalSettings['trackOnly'] == true;
      final isSelected = selectedAppIds.contains(app.id);

      return Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: ListTile(
          selected: isSelected,
          selectedTileColor: Theme.of(
            context,
          ).colorScheme.primaryContainer.withValues(alpha: 0.3),
          leading: SizedBox(
            height: 48,
            width: 48,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: getAppIcon(index),
            ),
          ),
          title: Row(
            children: [
              Expanded(
                child: Text(
                  appInfo.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: app.pinned ? FontWeight.w600 : FontWeight.w500,
                  ),
                ),
              ),
              if (app.pinned)
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(
                    Icons.push_pin,
                    size: 16,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
            ],
          ),
          subtitle: Text(
            tr('byX', args: [appInfo.author]),
            maxLines: 1,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          trailing: appInfo.downloadProgress != null
              ? SizedBox(
                  width: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (appInfo.downloadProgress! >= 0)
                        Text(
                          '${appInfo.downloadProgress!.toInt()}%',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      const SizedBox(height: 4),
                      SizedBox(
                        width: 40,
                        height: 4,
                        child: LinearProgressIndicator(
                          value: appInfo.downloadProgress! >= 0
                              ? appInfo.downloadProgress! / 100
                              : null,
                        ),
                      ),
                    ],
                  ),
                )
              : isTrackOnly
              ? Icon(
                  Icons.check_circle_outline,
                  color: Theme.of(context).colorScheme.primary,
                )
              : _buildActionButton(app, isInstalled, hasUpdate),
          onTap: () => _handleAppTap(app),
          onLongPress: () => toggleAppSelected(app),
        ),
      );
    }

    getSingleAppHorizTile(int index) {
      return _buildListTile(index);
    }

    getSingleAppGridTile(int index) {
      return _buildGridTile(index);
    }

    getCategoryGridTile(int index) {
      var filteredEntries = listedApps
          .asMap()
          .entries
          .where(
            (e) =>
                e.value.app.categories?.contains(listedCategories[index]) ==
                    true ||
                e.value.app.categories?.isEmpty == true &&
                    listedCategories[index] == null,
          )
          .toList();

      capFirstChar(String str) => str[0].toUpperCase() + str.substring(1);
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
            child: Row(
              children: [
                Text(
                  capFirstChar(listedCategories[index] ?? tr('noCategory')),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 8),
                Text(
                  '(${filteredEntries.length})',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.6,
              ),
              delegate: SliverChildBuilderDelegate((
                BuildContext context,
                int index,
              ) {
                return getSingleAppGridTile(filteredEntries[index].key);
              }, childCount: filteredEntries.length),
            ),
          ),
        ],
      );
    }

    getSelectAllButton() {
      return selectedAppIds.isEmpty
          ? TextButton.icon(
              onPressed: () {
                selectThese(listedApps.map((e) => e.app).toList());
              },
              icon: Icon(
                Icons.select_all,
                color: Theme.of(context).colorScheme.primary,
              ),
              label: Text(listedApps.length.toString()),
            )
          : TextButton.icon(
              onPressed: () {
                selectedAppIds.isEmpty
                    ? selectThese(listedApps.map((e) => e.app).toList())
                    : clearSelected();
              },
              icon: Icon(
                selectedAppIds.isEmpty ? Icons.select_all : Icons.deselect,
                color: Theme.of(context).colorScheme.primary,
              ),
              label: Text(selectedAppIds.length.toString()),
            );
    }

    getMassObtainFunction() {
      return appsProvider.areDownloadsRunning() ||
              (existingUpdateIdsAllOrSelected.isEmpty &&
                  newInstallIdsAllOrSelected.isEmpty &&
                  trackOnlyUpdateIdsAllOrSelected.isEmpty)
          ? null
          : () {
              HapticFeedback.heavyImpact();
              List<GeneratedFormItem> formItems = [];
              if (existingUpdateIdsAllOrSelected.isNotEmpty) {
                formItems.add(
                  GeneratedFormSwitch(
                    'updates',
                    label: tr(
                      'updateX',
                      args: [
                        plural(
                          'apps',
                          existingUpdateIdsAllOrSelected.length,
                        ).toLowerCase(),
                      ],
                    ),
                    defaultValue: true,
                  ),
                );
              }
              if (newInstallIdsAllOrSelected.isNotEmpty) {
                formItems.add(
                  GeneratedFormSwitch(
                    'installs',
                    label: tr(
                      'installX',
                      args: [
                        plural(
                          'apps',
                          newInstallIdsAllOrSelected.length,
                        ).toLowerCase(),
                      ],
                    ),
                    defaultValue: existingUpdateIdsAllOrSelected.isEmpty,
                  ),
                );
              }
              if (trackOnlyUpdateIdsAllOrSelected.isNotEmpty) {
                formItems.add(
                  GeneratedFormSwitch(
                    'trackonlies',
                    label: tr(
                      'markXTrackOnlyAsUpdated',
                      args: [
                        plural('apps', trackOnlyUpdateIdsAllOrSelected.length),
                      ],
                    ),
                    defaultValue:
                        existingUpdateIdsAllOrSelected.isEmpty &&
                        newInstallIdsAllOrSelected.isEmpty,
                  ),
                );
              }
              showDialog<Map<String, dynamic>?>(
                context: context,
                builder: (BuildContext ctx) {
                  Map<String, dynamic> localValues = {};
                  var totalApps =
                      existingUpdateIdsAllOrSelected.length +
                      newInstallIdsAllOrSelected.length +
                      trackOnlyUpdateIdsAllOrSelected.length;
                  return AlertDialog(
                    title: Text(
                      tr(
                        'changeX',
                        args: [plural('apps', totalApps).toLowerCase()],
                      ),
                    ),
                    content: GeneratedForm(
                      items: formItems.map((e) => [e]).toList(),
                      onValueChanges: (vals, valid, isBuilding) {
                        localValues = vals;
                      },
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(ctx).pop(null),
                        child: Text(tr('cancel')),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(ctx).pop(localValues),
                        child: Text(tr('ok')),
                      ),
                    ],
                  );
                },
              ).then((values) async {
                if (values != null) {
                  if (values.isEmpty) {
                    values = getDefaultValuesFromFormItems([formItems]);
                  }
                  bool shouldInstallUpdates = values['updates'] == true;
                  bool shouldInstallNew = values['installs'] == true;
                  bool shouldMarkTrackOnlies = values['trackonlies'] == true;
                  List<String> toInstall = [];
                  if (shouldInstallUpdates) {
                    toInstall.addAll(existingUpdateIdsAllOrSelected);
                  }
                  if (shouldInstallNew) {
                    toInstall.addAll(newInstallIdsAllOrSelected);
                  }
                  if (shouldMarkTrackOnlies) {
                    toInstall.addAll(trackOnlyUpdateIdsAllOrSelected);
                  }
                  appsProvider
                      .downloadAndInstallLatestApps(
                        toInstall,
                        globalNavigatorKey.currentContext,
                      )
                      .catchError((e) {
                        if (mounted) {
                          showError(e, context);
                        }
                        return <String>[];
                      })
                      .then((value) {
                        if (value.isNotEmpty &&
                            shouldInstallUpdates &&
                            mounted) {
                          showMessage(tr('appsUpdated'), context);
                        }
                      });
                }
              });
            };
    }

    launchCategorizeDialog() {
      return () async {
        try {
          Set<String>? preselected;
          var showPrompt = false;
          for (var element in selectedApps) {
            var currentCats = element.categories?.toSet() ?? <String>{};
            if (preselected == null) {
              preselected = currentCats;
            } else {
              if (!settingsProvider.setEqual(currentCats, preselected)) {
                showPrompt = true;
                break;
              }
            }
          }
          var cont = true;
          if (showPrompt) {
            cont =
                await showDialog<bool>(
                  context: context,
                  builder: (BuildContext ctx) {
                    return AlertDialog(
                      title: Text(tr('categorize')),
                      content: Text(tr('selectedCategorizeWarning')),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(ctx).pop(false),
                          child: Text(tr('cancel')),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(ctx).pop(true),
                          child: Text(tr('ok')),
                        ),
                      ],
                    );
                  },
                ) ==
                true;
          }
          if (cont) {
            // ignore: use_build_context_synchronously
            await showDialog<void>(
              context: context,
              builder: (BuildContext ctx) {
                return AlertDialog(
                  title: Text(tr('categorize')),
                  content: CategorySelector(
                    preselected: !showPrompt ? preselected ?? {} : {},
                    showLabelWhenNotEmpty: false,
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(ctx).pop(),
                      child: Text(tr('continue')),
                    ),
                  ],
                );
              },
            );
          }
        } catch (err) {
          if (mounted) {
            showError(err, context);
          }
        }
      };
    }

    showMassMarkDialog() {
      return showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: Text(
              tr(
                'markXSelectedAppsAsUpdated',
                args: [selectedAppIds.length.toString()],
              ),
            ),
            content: Text(
              tr('onlyWorksWithNonVersionDetectApps'),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(tr('no')),
              ),
              TextButton(
                onPressed: () {
                  HapticFeedback.selectionClick();
                  appsProvider.saveApps(
                    selectedApps.map((a) {
                      if (a.installedVersion != null &&
                          !appsProvider.isVersionDetectionPossible(
                            appsProvider.apps[a.id],
                          )) {
                        a.installedVersion = a.latestVersion;
                      }
                      return a;
                    }).toList(),
                  );

                  Navigator.of(context).pop();
                },
                child: Text(tr('yes')),
              ),
            ],
          );
        },
      ).whenComplete(() {
        Navigator.of(context).pop();
      });
    }

    pinSelectedApps() {
      var pinStatus = selectedApps.where((element) => element.pinned).isEmpty;
      appsProvider.saveApps(
        selectedApps.map((e) {
          e.pinned = pinStatus;
          return e;
        }).toList(),
      );
      Navigator.of(context).pop();
    }

    showMoreOptionsDialog() {
      return showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            scrollable: true,
            content: Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: pinSelectedApps,
                    child: Text(
                      selectedApps.where((element) => element.pinned).isEmpty
                          ? tr('pinToTop')
                          : tr('unpinFromTop'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Divider(),
                  TextButton(
                    onPressed: () {
                      String urls = '';
                      for (var a in selectedApps) {
                        urls += '${a.url}\n';
                      }
                      urls = urls.substring(0, urls.length - 1);
                      SharePlus.instance.share(
                        ShareParams(
                          text: urls,
                          subject: 'Updatium - ${tr('appsString')}',
                        ),
                      );
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      tr('shareSelectedAppURLs'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Divider(),
                  TextButton(
                    onPressed: selectedAppIds.isEmpty
                        ? null
                        : () {
                            var encoder = const JsonEncoder.withIndent("    ");
                            var exportJSON = encoder.convert(
                              appsProvider.generateExportJSON(
                                appIds: selectedApps.map((e) => e.id).toList(),
                                overrideExportSettings: 0,
                              ),
                            );
                            String fn =
                                '${tr('updatiumExportHyphenatedLowercase')}-${DateTime.now().toIso8601String().replaceAll(':', '-')}-count-${selectedApps.length}';
                            XFile f = XFile.fromData(
                              Uint8List.fromList(utf8.encode(exportJSON)),
                              mimeType: 'application/json',
                              name: fn,
                            );
                            SharePlus.instance.share(ShareParams(files: [f]));
                          },
                    child: Text(
                      '${tr('share')} - ${tr('updatiumExport')}',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Divider(),
                  TextButton(
                    onPressed: () {
                      appsProvider
                          .downloadAppAssets(
                            selectedApps.map((e) => e.id).toList(),
                            globalNavigatorKey.currentContext ?? context,
                          )
                          .catchError(
                            // ignore: invalid_return_type_for_catch_error
                            (e) => showError(
                              e,
                              globalNavigatorKey.currentContext ?? context,
                            ),
                          );
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      tr(
                        'downloadX',
                        args: [lowerCaseIfEnglish(tr('releaseAsset'))],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Divider(),
                  TextButton(
                    onPressed: appsProvider.areDownloadsRunning()
                        ? null
                        : showMassMarkDialog,
                    child: Text(
                      tr('markSelectedAppsUpdated'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    getMainBottomButtons() {
      return [
        Semantics(
          button: true,
          label: selectedAppIds.isEmpty
              ? tr('installUpdateApps')
              : tr('installUpdateSelectedApps'),
          hint: selectedAppIds.isEmpty
              ? 'Install or update all apps'
              : 'Install or update ${selectedAppIds.length} selected apps',
          child: IconButton(
            visualDensity: VisualDensity.compact,
            onPressed: getMassObtainFunction(),
            tooltip: selectedAppIds.isEmpty
                ? tr('installUpdateApps')
                : tr('installUpdateSelectedApps'),
            icon: const Icon(Icons.file_download),
          ),
        ),
        Semantics(
          button: true,
          label: tr('removeSelectedApps'),
          hint: selectedAppIds.isEmpty
              ? 'No apps selected'
              : 'Remove ${selectedAppIds.length} selected apps',
          child: IconButton(
            visualDensity: VisualDensity.compact,
            onPressed: selectedAppIds.isEmpty
                ? null
                : () {
                    appsProvider.removeAppsWithModal(
                      context,
                      selectedApps.toList(),
                    );
                  },
            tooltip: tr('removeSelectedApps'),
            icon: const Icon(Icons.delete),
          ),
        ),
        IconButton(
          visualDensity: VisualDensity.compact,
          onPressed: selectedAppIds.isEmpty ? null : launchCategorizeDialog(),
          tooltip: tr('categorize'),
          icon: const Icon(Icons.category),
        ),
        IconButton(
          visualDensity: VisualDensity.compact,
          onPressed: selectedAppIds.isEmpty ? null : showMoreOptionsDialog,
          tooltip: tr('more'),
          icon: const Icon(Icons.more_horiz),
        ),
      ];
    }

    showFilterDialog() async {
      var values = await showDialog<Map<String, dynamic>?>(
        context: context,
        builder: (BuildContext ctx) {
          Map<String, dynamic> localValues = filter.toFormValuesMap();
          return AlertDialog(
            scrollable: true,
            title: Text(tr('filterApps')),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GeneratedForm(
                  items: [
                    [
                      GeneratedFormTextField(
                        'appName',
                        label: tr('appName'),
                        required: false,
                        defaultValue: localValues['appName'],
                      ),
                    ],
                    [
                      GeneratedFormTextField(
                        'author',
                        label: tr('author'),
                        required: false,
                        defaultValue: localValues['author'],
                      ),
                    ],
                    [
                      GeneratedFormTextField(
                        'appId',
                        label: tr('appId'),
                        required: false,
                        defaultValue: localValues['appId'],
                      ),
                    ],
                    [
                      GeneratedFormTextField(
                        'description',
                        label: tr('description'),
                        required: false,
                        defaultValue: localValues['description'],
                      ),
                    ],
                    [
                      GeneratedFormSwitch(
                        'upToDateApps',
                        label: tr('upToDateApps'),
                        defaultValue: localValues['upToDateApps'],
                      ),
                    ],
                    [
                      GeneratedFormSwitch(
                        'nonInstalledApps',
                        label: tr('nonInstalledApps'),
                        defaultValue: localValues['nonInstalledApps'],
                      ),
                    ],
                    [
                      GeneratedFormDropdown(
                        'sourceFilter',
                        label: tr('appSource'),
                        defaultValue: localValues['sourceFilter'],
                        [
                          MapEntry('', tr('none')),
                          ...sourceProvider.sources.map(
                            (e) => MapEntry(e.runtimeType.toString(), e.name),
                          ),
                        ],
                      ),
                    ],
                  ],
                  onValueChanges: (vals, valid, isBuilding) {
                    localValues = vals;
                  },
                ),
                gap16,
                CategorySelector(
                  preselected: filter.categoryFilter,
                  onSelected: (categories) {
                    filter.categoryFilter = categories.toSet();
                  },
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(null),
                child: Text(tr('cancel')),
              ),
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(localValues),
                child: Text(tr('ok')),
              ),
            ],
          );
        },
      );
      if (values != null) {
        setState(() {
          filter.setFormValuesFromMap(values);
        });
      }
    }

    getFilterButtonsRow() {
      return Row(
        children: [
          getSelectAllButton(),
          horizontalGap16,
          const VerticalDivider(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: getMainBottomButtons(),
            ),
          ),
        ],
      );
    }

    Widget getDisplayedList() {
      if (settingsProvider.groupByCategory &&
          !(listedCategories.isEmpty ||
              (listedCategories.length == 1 && listedCategories[0] == null))) {
        // Category View
        if (settingsProvider.useGridView) {
          return SliverList(
            delegate: SliverChildBuilderDelegate((
              BuildContext context,
              int index,
            ) {
              return getCategoryGridTile(index);
            }, childCount: listedCategories.length),
          );
        } else {
          // Build all expansion panels at once for ExpansionPanelList
          final panels = <ExpansionPanel>[];
          for (int i = 0; i < listedCategories.length; i++) {
            var filteredEntries = listedApps
                .asMap()
                .entries
                .where(
                  (e) =>
                      e.value.app.categories?.contains(listedCategories[i]) ==
                          true ||
                      e.value.app.categories?.isEmpty == true &&
                          listedCategories[i] == null,
                )
                .toList();

            var tiles = filteredEntries
                .map((e) => getSingleAppHorizTile(e.key))
                .toList();

            capFirstChar(String str) => str[0].toUpperCase() + str.substring(1);
            panels.add(
              ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text(
                      capFirstChar(listedCategories[i] ?? tr('noCategory')),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: Text(tiles.length.toString()),
                  );
                },
                body: Column(children: tiles),
                isExpanded: _expandedCategories.contains(i),
              ),
            );
          }

          return SliverToBoxAdapter(
            child: ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  if (isExpanded) {
                    _expandedCategories.remove(index);
                  } else {
                    _expandedCategories.add(index);
                  }
                });
              },
              children: panels,
            ),
          );
        }
      } else {
        // Flat View
        if (settingsProvider.useGridView) {
          final spacing = 8.0;

          return SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              crossAxisSpacing: spacing,
              mainAxisSpacing: spacing,
              childAspectRatio: 0.6,
            ),
            delegate: SliverChildBuilderDelegate((
              BuildContext context,
              int index,
            ) {
              return getSingleAppGridTile(index);
            }, childCount: listedApps.length),
          );
        } else {
          return SliverList(
            delegate: SliverChildBuilderDelegate((
              BuildContext context,
              int index,
            ) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                child: getSingleAppHorizTile(index),
              );
            }, childCount: listedApps.length),
          );
        }
      }
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: RefreshIndicator(
        onRefresh: refresh,
        child: Scrollbar(
          interactive: true,
          controller: scrollController,
          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            controller: scrollController,
            slivers: <Widget>[
              SliverAppBar.large(
                pinned: true,
                automaticallyImplyLeading: false,
                actions: [
                  Consumer<AppsProvider>(
                    builder: (context, appsProvider, child) {
                      var isFilterOff = filter.isIdenticalTo(
                        neutralFilter,
                        settingsProvider,
                      );
                      return IconButton(
                        color: Theme.of(context).colorScheme.primary,
                        style: const ButtonStyle(
                          visualDensity: VisualDensity.compact,
                        ),
                        tooltip: isFilterOff
                            ? tr('filterApps')
                            : '${tr('filter')} - ${tr('remove')}',
                        onPressed: isFilterOff
                            ? showFilterDialog
                            : () {
                                setState(() {
                                  filter = AppsFilter();
                                });
                              },
                        icon: Icon(
                          isFilterOff
                              ? Icons.search_rounded
                              : Icons.search_off_rounded,
                        ),
                      );
                    },
                  ),
                  Consumer<SettingsProvider>(
                    builder: (context, settingsProvider, child) {
                      return IconButton(
                        color: Theme.of(context).colorScheme.primary,
                        style: const ButtonStyle(
                          visualDensity: VisualDensity.compact,
                        ),
                        tooltip: settingsProvider.useGridView
                            ? tr('listView')
                            : tr('gridView'),
                        onPressed: () {
                          settingsProvider.useGridView =
                              !settingsProvider.useGridView;
                        },
                        icon: Icon(
                          settingsProvider.useGridView
                              ? Icons.view_list_rounded
                              : Icons.grid_view_rounded,
                        ),
                      );
                    },
                  ),
                ],
                title: Text(tr('appsString')),
              ),
              ...getLoadingWidgets(),
              getDisplayedList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: appsProvider.apps.isEmpty
          ? null
          : BottomAppBar(child: getFilterButtonsRow()),
    );
  }

  void openAppById(String appId) {
    AppsProvider appsProvider = context.read<AppsProvider>();

    AppInMemory? app = appsProvider.apps[appId];

    // Should exist, since we just looked it up, but just in case...
    if (app == null) {
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => AppPage(appId: app.app.id),
      ),
    );
  }

  Widget _buildSimpleGridIcon(App app) {
    return Consumer<AppsProvider>(
      builder: (ctx, appsProvider, child) {
        final appInMemory = appsProvider.apps[app.id];

        // If icon is already loaded, display it immediately
        if (appInMemory?.icon != null) {
          return Image.memory(
            appInMemory!.icon!,
            gaplessPlayback: true,
            opacity: AlwaysStoppedAnimation(
              appInMemory.installedInfo == null ? 0.6 : 1,
            ),
            errorBuilder: (context, error, stackTrace) {
              return _buildFallbackIcon();
            },
          );
        }

        // Load icon asynchronously if not available
        return FutureBuilder(
          future: appsProvider.updateAppIcon(app.id),
          builder: (ctx, snapshot) {
            final updatedAppInMemory = appsProvider.apps[app.id];

            if (updatedAppInMemory?.icon != null) {
              return Image.memory(
                updatedAppInMemory!.icon!,
                gaplessPlayback: true,
                opacity: AlwaysStoppedAnimation(
                  updatedAppInMemory.installedInfo == null ? 0.6 : 1,
                ),
                errorBuilder: (context, error, stackTrace) {
                  return _buildFallbackIcon();
                },
              );
            }

            // Show fallback while loading or if failed
            return _buildFallbackIcon();
          },
        );
      },
    );
  }

  Widget _buildFallbackIcon() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationZ(0.31),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Image(
              image: const AssetImage('assets/graphics/icon_small.png'),
              color: Theme.of(context).brightness == Brightness.dark
                  ? preserveTransparency(Colors.white, 0.4)
                  : preserveTransparency(Colors.white, 0.3),
              colorBlendMode: BlendMode.modulate,
              gaplessPlayback: true,
              errorBuilder: (context, error, stackTrace) {
                // Final fallback - colored container
                return Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: preserveTransparency(
                      Theme.of(context).colorScheme.primary,
                      0.1,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.apps,
                    color: preserveTransparency(
                      Theme.of(context).colorScheme.primary,
                      0.6,
                    ),
                    size: 24,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class AppsFilter {
  late String nameFilter;
  late String authorFilter;
  late String idFilter;
  late String descriptionFilter;
  late bool includeUptodate;
  late bool includeNonInstalled;
  late Set<String> categoryFilter;
  late String sourceFilter;

  AppsFilter({
    this.nameFilter = '',
    this.authorFilter = '',
    this.idFilter = '',
    this.descriptionFilter = '',
    this.includeUptodate = true,
    this.includeNonInstalled = true,
    this.categoryFilter = const {},
    this.sourceFilter = '',
  });

  Map<String, dynamic> toFormValuesMap() {
    return {
      'appName': nameFilter,
      'author': authorFilter,
      'appId': idFilter,
      'description': descriptionFilter,
      'upToDateApps': includeUptodate,
      'nonInstalledApps': includeNonInstalled,
      'sourceFilter': sourceFilter,
      'categoryFilter': categoryFilter,
    };
  }

  void setFormValuesFromMap(Map<String, dynamic> values) {
    nameFilter = values['appName']!;
    authorFilter = values['author']!;
    idFilter = values['appId']!;
    descriptionFilter = values['description']!;
    includeUptodate = values['upToDateApps'];
    includeNonInstalled = values['nonInstalledApps'];
    sourceFilter = values['sourceFilter'];
    categoryFilter = values['categoryFilter'] ?? {};
  }

  bool isIdenticalTo(AppsFilter other, SettingsProvider settingsProvider) =>
      authorFilter.trim() == other.authorFilter.trim() &&
      nameFilter.trim() == other.nameFilter.trim() &&
      idFilter.trim() == other.idFilter.trim() &&
      descriptionFilter.trim() == other.descriptionFilter.trim() &&
      includeUptodate == other.includeUptodate &&
      includeNonInstalled == other.includeNonInstalled &&
      settingsProvider.setEqual(categoryFilter, other.categoryFilter) &&
      sourceFilter.trim() == other.sourceFilter.trim();
}
