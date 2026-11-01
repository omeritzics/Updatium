import 'package:animations/animations.dart';
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:m3e_core/m3e_core.dart';

import 'package:updatium/custom_errors.dart';
import 'package:updatium/services/slang_converter.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:markdown/markdown.dart' as md;

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

// Tiles keep a uniform size and stretch to fill the row, with identical gaps
// between them regardless of screen width
const appGridDelegate = SliverGridDelegateWithMaxCrossAxisExtent(
  maxCrossAxisExtent: 128,
  crossAxisSpacing: 3,
  mainAxisSpacing: 3,
  mainAxisExtent: 200,
);

Color preserveTransparency(Color color, double opacity) {
  return color.withValues(alpha: opacity);
}

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
        title: Text('changes'.t()),
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
                  style: const TextStyle(decoration: TextDecoration.underline),
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
          M3EFilledButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('ok'.t()),
          ),
        ],
      );
    },
  );
}

Null Function()? getChangeLogFn(BuildContext context, App app) {
  String? changesUrl;
  String? changeLog = app.changeLog;
  if (changeLog?.split('\n').length == 1 &&
      RegExp(
        '(http|ftp|https)://([\\w_-]+(?:(?:\\.[\\w_-]+)+))([\\w.,@?^=%&:/~+#-]*[\\w@?^=%&/~+#-])?',
      ).hasMatch(changeLog!)) {
    changesUrl = changeLog;
    changeLog = null;
  }
  if (changeLog == null && changesUrl == null) return null;
  return () {
    var appSource = SourceProvider().getSource(
      app.url,
      overrideSource: app.overrideSource,
    );
    changesUrl ??= appSource.changeLogPageFromStandardUrl(app.url);
    if (changeLog != null) {
      showChangeLogDialog(context, app, changesUrl, appSource, changeLog);
    } else if (changesUrl != null) {
      launchUrlString(changesUrl!, mode: LaunchMode.externalApplication);
    }
  };
}

class AppsPageState extends State<AppsPage> with TickerProviderStateMixin {
  late TabController _tabController;
  AppsFilter filter = AppsFilter();
  final AppsFilter neutralFilter = AppsFilter();
  var updatesOnlyFilter = AppsFilter(
    includeUptodate: false,
    includeNonInstalled: false,
  );
  Set<String> selectedAppIds = {};
  DateTime? refreshingSince;
  final _pullController = M3EPullToRefreshController();
  final Set<int> _expandedCategories = {};

  void clearSelected() {
    setState(() {
      selectedAppIds.clear();
    });
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

  var sourceProvider = SourceProvider();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: context.read<SettingsProvider>().defaultTab.index,
      length: 3,
      vsync: this,
    );
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pullController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var appsProvider = context.watch<AppsProvider>();
    var settingsProvider = context.watch<SettingsProvider>();
    var listedApps = appsProvider.getAppValues().toList();

    refresh() {
      settingsProvider.lightImpact();
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
      _pullController.refresh();
    }

    var listedAppIdSet = listedApps.map((e) => e.app.id).toSet();
    selectedAppIds = selectedAppIds.where(listedAppIdSet.contains).toSet();

    toggleAppSelected(App app) {
      setState(() {
        if (selectedAppIds.contains(app.id)) {
          selectedAppIds.removeWhere((a) => a == app.id);
        } else {
          selectedAppIds.add(app.id);
        }
      });
    }

    listedApps = listedApps.where((app) {
      // Filter based on tab selection
      if (_tabController.index == 1 && app.app.installedVersion == null) {
        return false;
      }
      if (_tabController.index == 2 && app.app.installedVersion != null) {
        return false;
      }
      if (app.app.installedVersion == app.app.latestVersion &&
          !(filter.includeUptodate)) {
        return false;
      }
      if (app.app.installedVersion == null && !(filter.includeNonInstalled)) {
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
              .intersection(app.app.categories.toSet())
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

    if (settingsProvider.sortColumn != SortColumnSettings.manually) {
      listedApps.sort((a, b) {
        int result = 0;
        if (settingsProvider.sortColumn == SortColumnSettings.authorName) {
          result = ((a.author + a.name).toLowerCase()).compareTo(
            (b.author + b.name).toLowerCase(),
          );
        } else if (settingsProvider.sortColumn ==
            SortColumnSettings.nameAuthor) {
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
        } else if (settingsProvider.sortColumn == SortColumnSettings.added) {
          // Handle null dates: apps with unknown added dates are grouped at the end
          final aDate = a.app.lastUpdateCheck;
          final bDate = b.app.lastUpdateCheck;
          final isDescending =
              settingsProvider.sortOrder == SortOrderSettings.descending;
          if (aDate == null && bDate == null) {
            result = 0;
          } else if (aDate == null) {
            result = isDescending ? -1 : 1;
          } else if (bDate == null) {
            result = isDescending ? 1 : -1;
          } else {
            result = aDate.compareTo(bDate);
          }
        }
        return result;
      });
    }

    if (settingsProvider.sortOrder == SortOrderSettings.descending) {
      listedApps = listedApps.reversed.toList();
    }

    var existingUpdates = appsProvider.findExistingUpdates(installedOnly: true);

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

    var existingUpdateIdsAllOrSelected = existingUpdates
        .where(
          (element) => selectedAppIds.isEmpty
              ? listedAppIdSet.contains(element)
              : selectedAppIds.contains(element),
        )
        .toList();
    var newInstallIdsAllOrSelected = appsProvider
        .findExistingUpdates(nonInstalledOnly: true)
        .where(
          (element) => selectedAppIds.isEmpty
              ? listedAppIdSet.contains(element)
              : selectedAppIds.contains(element),
        )
        .toList();

    List<String> trackOnlyUpdateIdsAllOrSelected = [];
    bool isNotTrackOnly(String id) {
      if (appsProvider.apps[id]!.app.additionalSettings['trackOnly'] == true) {
        trackOnlyUpdateIdsAllOrSelected.add(id);
        return false;
      }
      return true;
    }

    existingUpdateIdsAllOrSelected = existingUpdateIdsAllOrSelected
        .where(isNotTrackOnly)
        .toList();
    newInstallIdsAllOrSelected = newInstallIdsAllOrSelected
        .where(isNotTrackOnly)
        .toList();

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
        (e) => e.app.categories.isNotEmpty == true ? e.app.categories : [null],
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (appsProvider.loadingApps && appsProvider.apps.isEmpty)
                    const M3ELoadingIndicator()
                  else
                    Icon(
                      Icons.widgets,
                      size: 84,
                      color: preserveTransparency(
                        Theme.of(context).colorScheme.primary,
                        0.50,
                      ),
                    ),
                  gap24,
                  if (appsProvider.loadingApps && appsProvider.apps.isEmpty)
                    Text(
                      'pleaseWait'.t(),
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    )
                  else
                    Text(
                      appsProvider.apps.isEmpty
                          ? 'noApps'.t()
                          : 'noAppsForFilter'.t(),
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  if (appsProvider.apps.isEmpty && !appsProvider.loadingApps)
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        () {
                          final subtext = 'noAppsSubtext'.t();
                          // Hide subtext if translation key is not found (returns the key itself)
                          return subtext == 'noAppsSubtext' ? '' : subtext;
                        }(),
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                ],
              ),
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
    void handleAppTap(App app) {
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
    void installApp(App app) {
      appsProvider
          .downloadAndInstallLatestApps([
            app.id,
          ], globalNavigatorKey.currentContext)
          .catchError((e) {
            if (mounted) {
              showError(e, context);
            }
            return <String>[];
          });
    }

    // Build action button for install/update/updated states
    Widget buildActionButton(
      App app,
      bool isInstalled,
      bool hasUpdate, {
      bool isCompact = false,
    }) {
      if (!isInstalled) {
        return Semantics(
          button: true,
          label: 'install'.t(),
          enabled: !appsProvider.areDownloadsRunning(),
          child: M3EFilledButton.tonal(
            onPressed: appsProvider.areDownloadsRunning()
                ? null
                : () => installApp(app),
            child: Text('install'.t()),
          ),
        );
      } else if (hasUpdate) {
        return Semantics(
          button: true,
          label: 'update'.t(),
          enabled: !appsProvider.areDownloadsRunning(),
          child: M3EFilledButton.tonal(
            onPressed: appsProvider.areDownloadsRunning()
                ? null
                : () => installApp(app),
            child: Text('update'.t()),
          ),
        );
      } else {
        return Semantics(
          button: true,
          label: 'updated'.t(),
          enabled: false,
          child: M3EFilledButton.tonal(
            onPressed: null,
            child: Text('updated'.t()),
          ),
        );
      }
    }

    // Unified app tile widget for both list view and grid view
    Widget buildAppTile(int index, {required bool useGridView}) {
      final appInfo = listedApps[index];
      final app = appInfo.app;
      final isInstalled = app.installedVersion != null;
      final hasUpdate =
          isInstalled && app.installedVersion != app.latestVersion;
      final isTrackOnly = app.additionalSettings['trackOnly'] == true;
      final isSelected = selectedAppIds.contains(app.id);

      final appIcon = Stack(
        children: [
          SizedBox(
            height: 56,
            width: 56,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: getAppIcon(index),
            ),
          ),
          if (app.pinned)
            PositionedDirectional(
              top: -4,
              start: -4,
              child: Semantics(
                label: 'pinned'.t(),
                child: Icon(
                  Icons.push_pin,
                  size: 16,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
        ],
      );

      final appName = Text(
        appInfo.name,
        textAlign: useGridView ? TextAlign.center : TextAlign.start,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: useGridView
            ? Theme.of(context).textTheme.labelMedium
            : Theme.of(context).textTheme.titleMedium,
      );

      final appAuthor = Text(
        t('byX', args: [appInfo.author]),
        textAlign: useGridView ? TextAlign.center : TextAlign.start,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: useGridView
            ? Theme.of(context).textTheme.bodySmall
            : Theme.of(context).textTheme.bodyMedium,
      );

      final appStatus = appInfo.downloadProgress != null
          ? SizedBox(
              width: 140,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (appInfo.downloadProgress! >= 0)
                    Text(
                      '${appInfo.downloadProgress!.toInt()}%',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  const SizedBox(height: 4),
                  LinearProgressIndicator(
                    value: appInfo.downloadProgress! >= 0
                        ? appInfo.downloadProgress! / 100
                        : null,
                  ),
                ],
              ),
            )
          : isTrackOnly
          ? const SizedBox.shrink()
          : buildActionButton(
              app,
              isInstalled,
              hasUpdate,
              isCompact: useGridView,
            );

      final Widget content = useGridView
          ? Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  appIcon,
                  const SizedBox(height: 8),
                  appName,
                  const SizedBox(height: 4),
                  appAuthor,
                  const SizedBox(height: 8),
                  if (appInfo.downloadProgress != null || !isTrackOnly)
                    appStatus,
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  appIcon,
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [appName, appAuthor],
                    ),
                  ),
                  if (appInfo.downloadProgress != null || !isTrackOnly)
                    appStatus,
                ],
              ),
            );

      return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
        color: isSelected
            ? Theme.of(
                context,
              ).colorScheme.primaryContainer.withValues(alpha: 0.3)
            : null,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
          child: Semantics(
            button: true,
            label: app.pinned
                ? t(
                    'pinnedApp',
                    args: [
                      appInfo.name,
                      t('byX', args: [appInfo.author]),
                    ],
                  )
                : '${appInfo.name}, ${t('byX', args: [appInfo.author])}',
            value: isInstalled
                ? (hasUpdate ? 'updateAvailable'.t() : 'upToDate'.t())
                : 'notInstalled'.t(),
            onTapHint: 'openAppDetails'.t(),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () => handleAppTap(app),
              onLongPress: () => toggleAppSelected(app),
              child: useGridView
                  ? Stack(alignment: Alignment.center, children: [content])
                  : content,
            ),
          ),
        ),
      );
    }

    getSingleAppHorizTile(int index) {
      return buildAppTile(index, useGridView: false);
    }

    getSingleAppGridTile(int index) {
      return buildAppTile(index, useGridView: true);
    }

    getCategoryGridTile(int index) {
      var filteredEntries = listedApps
          .asMap()
          .entries
          .where(
            (e) =>
                e.value.app.categories.contains(listedCategories[index]) ==
                    true ||
                e.value.app.categories.isEmpty == true &&
                    listedCategories[index] == null,
          )
          .toList();

      // Skip rendering if no apps in this category
      if (filteredEntries.isEmpty) {
        return const SizedBox.shrink();
      }

      // Grid view when 'Group by category' is enabled
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: ExpansionTile(
          key: ValueKey(
            'category_grid_${listedCategories[index] ?? "null"}_$index',
          ),
          title: Text(
            '${listedCategories[index] ?? 'noCategory'.t()} (${filteredEntries.length})',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          initiallyExpanded: _expandedCategories.contains(index),
          onExpansionChanged: (isExpanded) {
            setState(() {
              if (isExpanded) {
                _expandedCategories.add(index);
              } else {
                _expandedCategories.remove(index);
              }
            });
          },
          leading: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: Color(
                settingsProvider.categories[listedCategories[index]] ??
                    Colors.transparent.toARGB32(),
              ),
              shape: BoxShape.circle,
            ),
          ),
          tilePadding: const EdgeInsets.symmetric(horizontal: 8),
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              gridDelegate: appGridDelegate,
              itemCount: filteredEntries.length,
              itemBuilder: (BuildContext context, int index) {
                final appIndex = filteredEntries[index].key;
                if (appIndex >= 0 && appIndex < listedApps.length) {
                  return getSingleAppGridTile(appIndex);
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      );
    }

    void Function() getMassObtainFunction() {
      return appsProvider.areDownloadsRunning() ||
              (existingUpdateIdsAllOrSelected.isEmpty &&
                  newInstallIdsAllOrSelected.isEmpty &&
                  trackOnlyUpdateIdsAllOrSelected.isEmpty)
          ? () {}
          : () {
              settingsProvider.heavyImpact();
              List<GeneratedFormItem> formItems = [];
              if (existingUpdateIdsAllOrSelected.isNotEmpty) {
                formItems.add(
                  GeneratedFormSwitch(
                    'updates',
                    label: t(
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
                    label: t(
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
                    label: t(
                      'markXTrackOnlyAsUpdated',
                      args: [
                        'apps'.plural(trackOnlyUpdateIdsAllOrSelected.length),
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
                    scrollable: true,
                    title: Text(
                      t(
                        'changeX',
                        args: ['apps'.plural(totalApps).toLowerCase()],
                      ),
                    ),
                    content: SizedBox(
                      width: double.maxFinite,
                      child: GeneratedForm(
                        items: formItems.map((e) => [e]).toList(),
                        onValueChanges: (vals, valid, isBuilding) {
                          localValues = vals;
                        },
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(ctx).pop(null),
                        child: Text('cancel'.t()),
                      ),
                      M3EFilledButton(
                        onPressed: () => Navigator.of(ctx).pop(localValues),
                        child: Text('ok'.t()),
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
                          showMessage('appsUpdated'.t(), context);
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
            var currentCats = element.categories.toSet();
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
                      title: Text('categorize'.t()),
                      content: Text('selectedCategorizeWarning'.t()),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(ctx).pop(false),
                          child: Text('cancel'.t()),
                        ),
                        M3EFilledButton(
                          onPressed: () => Navigator.of(ctx).pop(true),
                          child: Text('ok'.t()),
                        ),
                      ],
                    );
                  },
                ) ==
                true;
          }
          if (cont) {
            Set<String> selectedCategories = !showPrompt
                ? preselected ?? {}
                : {};
            if (!mounted) return;
            await showDialog<void>(
              context: context,
              builder: (BuildContext ctx) {
                return AlertDialog(
                  title: Text('categorize'.t()),
                  content: SingleChildScrollView(
                    child: CategorySelector(
                      preselected: selectedCategories,
                      showLabelWhenNotEmpty: false,
                      onSelected: (categories) {
                        selectedCategories = categories.toSet();
                      },
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        for (var app in selectedApps) {
                          app.categories = selectedCategories.toList();
                        }
                        appsProvider.saveApps(selectedApps.toList());
                        Navigator.of(ctx).pop();
                      },
                      child: Text('continue'.t()),
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
              t(
                'markXSelectedAppsAsUpdated',
                args: [selectedAppIds.length.toString()],
              ),
            ),
            content: Text(
              'onlyWorksWithNonVersionDetectApps'.t(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('no'.t()),
              ),
              TextButton(
                onPressed: () {
                  settingsProvider.selectionClick();
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
                child: Text('yes'.t()),
              ),
            ],
          );
        },
      ).whenComplete(() {
        if (mounted) {
          Navigator.of(context).pop();
        }
      });
    }

    showMoreOptionsDialog() {
      return showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            scrollable: true,
            content: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Semantics(
                    button: true,
                    label: 'markSelectedAppsUpdated'.t(),
                    enabled: !appsProvider.areDownloadsRunning(),
                    child: TextButton(
                      onPressed: appsProvider.areDownloadsRunning()
                          ? null
                          : showMassMarkDialog,
                      child: Text(
                        'markSelectedAppsUpdated'.t(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Semantics(
                    button: true,
                    label: selectedApps.every((element) => element.pinned)
                        ? 'unpinFromTop'.t()
                        : 'pinToTop'.t(),
                    child: TextButton(
                      onPressed: () {
                        var allPinned = selectedApps.every(
                          (element) => element.pinned,
                        );
                        appsProvider.saveApps(
                          selectedApps.map((e) {
                            e.pinned = !allPinned;
                            return e;
                          }).toList(),
                        );
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        selectedApps.every((element) => element.pinned)
                            ? 'unpinFromTop'.t()
                            : 'pinToTop'.t(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    showFilterDialog() async {
      var values = await showDialog<Map<String, dynamic>?>(
        context: context,
        builder: (BuildContext ctx) {
          Map<String, dynamic> localValues = filter.toFormValuesMap();
          return AlertDialog(
            scrollable: true,
            title: Text('filterApps'.t()),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GeneratedForm(
                  items: [
                    [
                      GeneratedFormTextField(
                        'appName',
                        label: 'appName'.t(),
                        required: false,
                        defaultValue: localValues['appName'],
                      ),
                    ],
                    [
                      GeneratedFormTextField(
                        'author',
                        label: 'author'.t(),
                        required: false,
                        defaultValue: localValues['author'],
                      ),
                    ],
                    [
                      GeneratedFormTextField(
                        'appId',
                        label: 'appId'.t(),
                        required: false,
                        defaultValue: localValues['appId'],
                      ),
                    ],
                    [
                      GeneratedFormTextField(
                        'description',
                        label: 'about'.t(),
                        required: false,
                        defaultValue: localValues['description'],
                      ),
                    ],
                    [
                      GeneratedFormSwitch(
                        'upToDateApps',
                        label: 'upToDateApps'.t(),
                        defaultValue: localValues['upToDateApps'],
                      ),
                    ],
                    [
                      GeneratedFormDropdown(
                        'sourceFilter',
                        label: 'appSource'.t(),
                        defaultValue: localValues['sourceFilter'],
                        [
                          MapEntry('', 'none'.t()),
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
                    localValues['categoryFilter'] = categories.toSet();
                  },
                ),
              ],
            ),
            actions: [
              Semantics(
                button: true,
                label: 'cancel'.t(),
                child: TextButton(
                  onPressed: () => Navigator.of(ctx).pop(null),
                  child: Text('cancel'.t()),
                ),
              ),
              M3EFilledButton(
                onPressed: () => Navigator.of(ctx).pop(localValues),
                child: Text('ok'.t()),
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
          // Build expansion tiles similar to settings page
          return SliverList(
            delegate: SliverChildBuilderDelegate((
              BuildContext context,
              int index,
            ) {
              var filteredEntries = listedApps
                  .asMap()
                  .entries
                  .where(
                    (e) =>
                        e.value.app.categories.contains(
                              listedCategories[index],
                            ) ==
                            true ||
                        e.value.app.categories.isEmpty == true &&
                            listedCategories[index] == null,
                  )
                  .toList();

              if (filteredEntries.isEmpty) {
                return const SizedBox.shrink();
              }

              var tiles = filteredEntries
                  .map((e) => getSingleAppHorizTile(e.key))
                  .toList();

              // List view when 'Group by category' is enabled
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: ExpansionTile(
                  key: ValueKey(
                    'category_${listedCategories[index] ?? "null"}_$index',
                  ),
                  title: Text(
                    '${listedCategories[index] ?? 'noCategory'.t()} (${tiles.length})',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  initiallyExpanded: _expandedCategories.contains(index),
                  onExpansionChanged: (isExpanded) {
                    setState(() {
                      if (isExpanded) {
                        _expandedCategories.add(index);
                      } else {
                        _expandedCategories.remove(index);
                      }
                    });
                  },
                  leading: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: Color(
                        settingsProvider.categories[listedCategories[index]] ??
                            Colors.transparent.toARGB32(),
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  tilePadding: const EdgeInsets.symmetric(horizontal: 8),
                  children: tiles,
                ),
              );
            }, childCount: listedCategories.length),
          );
        }
      } else {
        if (settingsProvider.useGridView) {
          return SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            sliver: SliverGrid(
              gridDelegate: appGridDelegate,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) =>
                    getSingleAppGridTile(index),
                childCount: listedApps.length,
              ),
            ),
          );
        } else {
          return SliverList(
            delegate: SliverChildBuilderDelegate((
              BuildContext context,
              int index,
            ) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: getSingleAppHorizTile(index),
              );
            }, childCount: listedApps.length),
          );
        }
      }
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar.medium(
                pinned: true,
                title: Text('appsString'.t()),
                bottom: TabBar(
                  controller: _tabController,
                  tabs: [
                    Tab(text: 'all'.t()),
                    Tab(text: 'installed'.t()),
                    Tab(text: 'notInstalledApps'.t()),
                  ],
                ),
                actions: [
                  Consumer<AppsProvider>(
                    builder: (context, appsProvider, child) {
                      var isFilterOff = filter.isIdenticalTo(
                        neutralFilter,
                        settingsProvider,
                      );
                      return Semantics(
                        button: true,
                        label: isFilterOff
                            ? 'filterApps'.t()
                            : 'removeFilter'.t(),
                        child: IconButton(
                          tooltip: isFilterOff
                              ? 'filterApps'.t()
                              : '${'filter'.t()} - ${'remove'.t()}',
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
                        ),
                      );
                    },
                  ),
                  Consumer<SettingsProvider>(
                    builder: (context, settingsProvider, child) {
                      return IconButton(
                        tooltip: settingsProvider.useGridView
                            ? 'listView'.t()
                            : 'gridView'.t(),
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
              ),
            ],
            body: Column(
              children: [
                if (refreshingSince != null || appsProvider.loadingApps)
                  LinearProgressIndicator(
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
                Expanded(
                  child: M3EPullToRefreshIndicator(
                    controller: _pullController,
                    shapes: const [Shapes.softBurst, Shapes.sunny, Shapes.pill],
                    triggerDistance: 110.00,
                    indicatorHeight: 64.00,
                    dragResistance: 0.50,
                    maxDragMultiplier: 2.00,
                    edgeOffset: 0.00,
                    springMotion: M3EMotion.expressiveSpatialDefault,
                    hapticFeedback: M3EHapticFeedback.none,
                    onRefresh: refresh,
                    style: M3EPullToRefreshStyle(
                      size: 56.00,
                      padding: const EdgeInsets.all(8.00),
                      elevation: 2,
                      borderRadius: BorderRadius.circular(28.00),
                      triggerDistance: 110.00,
                      indicatorHeight: 64.00,
                      springMotion: const M3EMotion.custom(
                        stiffness: 380.00,
                        damping: 0.80,
                      ),
                      hapticFeedback: M3EHapticFeedback.none,
                      dragResistance: 0.50,
                      maxDragMultiplier: 2.00,
                    ),
                    child: Scrollbar(
                      interactive: true,
                      child: CustomScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        slivers: <Widget>[
                          const SliverToBoxAdapter(child: SizedBox(height: 8)),
                          ...getLoadingWidgets(),
                          getDisplayedList(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (appsProvider.apps.isNotEmpty)
            Positioned(
              left: 16,
              right: 16,
              bottom: 16,
              child: Align(
                alignment: Alignment.center,
                child: M3EHorizontalFloatingToolbar(
                  expanded: true,
                  content: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Tooltip(
                        message: selectedAppIds.isEmpty
                            ? 'installUpdateApps'.t()
                            : 'installUpdateSelectedApps'.t(),
                        child: Semantics(
                          label: selectedAppIds.isEmpty
                              ? 'installUpdateApps'.t()
                              : 'installUpdateSelectedApps'.t(),
                          button: true,
                          child: TextButton.icon(
                            style: TextButton.styleFrom(
                              foregroundColor: Theme.of(
                                context,
                              ).colorScheme.onSurface,
                              minimumSize: const Size(0, 48),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            icon: Icon(
                              selectedAppIds.length == listedApps.length
                                  ? Icons.deselect
                                  : Icons.select_all,
                              size: 24,
                            ),
                            label: Text(
                              selectedAppIds.isEmpty
                                  ? listedApps.length.toString()
                                  : selectedAppIds.length.toString(),
                            ),
                            onPressed: selectedAppIds.isEmpty
                                ? () {
                                    selectThese(
                                      listedApps.map((e) => e.app).toList(),
                                    );
                                  }
                                : selectedAppIds.length == listedApps.length
                                ? () {
                                    clearSelected();
                                  }
                                : () {
                                    selectThese(
                                      listedApps.map((e) => e.app).toList(),
                                    );
                                  },
                          ),
                        ),
                      ),
                      if (!(appsProvider.areDownloadsRunning() ||
                          (existingUpdateIdsAllOrSelected.isEmpty &&
                              newInstallIdsAllOrSelected.isEmpty &&
                              trackOnlyUpdateIdsAllOrSelected.isEmpty)))
                        IconButton(
                          tooltip: selectedAppIds.isEmpty
                              ? 'installUpdateApps'.t()
                              : 'installUpdateSelectedApps'.t(),
                          onPressed: getMassObtainFunction(),
                          style: IconButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          icon: const Icon(Icons.file_download, size: 24),
                        ),
                      if (selectedAppIds.isNotEmpty)
                        IconButton(
                          tooltip: '${'share'.t()} - ${'updatiumExport'.t()}',
                          onPressed: () {
                            var encoder = const JsonEncoder.withIndent("    ");
                            var exportJSON = encoder.convert(
                              appsProvider.generateExportJSON(
                                appIds: selectedApps.map((e) => e.id).toList(),
                                overrideExportSettings: 0,
                              ),
                            );
                            String fn =
                                '${'updatiumExportHyphenatedLowercase'.t()}-${DateTime.now().toIso8601String().replaceAll(':', '-')}-count-${selectedApps.length}';
                            XFile f = XFile.fromData(
                              Uint8List.fromList(utf8.encode(exportJSON)),
                              mimeType: 'application/json',
                              name: fn,
                            );
                            SharePlus.instance.share(ShareParams(files: [f]));
                          },
                          style: IconButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          icon: const Icon(Icons.share, size: 24),
                        ),
                      if (selectedAppIds.isNotEmpty)
                        IconButton(
                          tooltip: 'removeSelectedApps'.t(),
                          onPressed: () async {
                            final removedApps = await appsProvider
                                .removeAppsWithModal(
                                  context,
                                  selectedApps.toList(),
                                );
                            if (removedApps != null && removedApps.isNotEmpty) {
                              if (mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'appRemoved'.plural(removedApps.length),
                                    ),
                                    action: SnackBarAction(
                                      label: 'undo'.t(),
                                      onPressed: () {
                                        appsProvider.undoRestoreApps(
                                          removedApps,
                                        );
                                      },
                                    ),
                                  ),
                                );
                              }
                            }
                          },
                          style: IconButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          icon: const Icon(Icons.delete, size: 24),
                        ),
                      if (selectedAppIds.isNotEmpty)
                        IconButton(
                          tooltip: 'categorize'.t(),
                          onPressed: () {
                            launchCategorizeDialog()();
                          },
                          style: IconButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          icon: const Icon(Icons.category, size: 24),
                        ),
                      if (selectedAppIds.isNotEmpty)
                        IconButton(
                          tooltip: 'more'.t(),
                          onPressed: () {
                            showMoreOptionsDialog();
                          },
                          style: IconButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          icon: const Icon(Icons.more_horiz, size: 24),
                        ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
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
            padding: const EdgeInsets.all(12),
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
