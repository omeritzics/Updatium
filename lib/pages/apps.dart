import 'package:animations/animations.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:expressive_refresh/expressive_refresh.dart';

import 'package:updatium/services/slang_converter.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:m3_floating_toolbar/m3_floating_toolbar.dart';
import 'package:m3_floating_toolbar/m3_floating_toolbar_action.dart';
import 'package:m3e_buttons/m3e_buttons.dart';
import 'package:loading_indicator_m3e/loading_indicator_m3e.dart';

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
      return GeneratedFormModal(
        title: tr('changes'),
        items: const [],
        message: app.latestVersion,
        additionalWidgets: [
          changesUrl != null
              ? GestureDetector(
                  child: Text(
                    changesUrl,
                    style: const TextStyle(
                      decoration: TextDecoration.underline,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  onTap: () {
                    launchUrlString(
                      changesUrl,
                      mode: LaunchMode.externalApplication,
                    );
                  },
                )
              : const SizedBox.shrink(),
          changesUrl != null
              ? const SizedBox(height: 16)
              : const SizedBox.shrink(),
          appSource.changeLogIfAnyIsMarkDown
              ? SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 350,
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
                )
              : Text(changeLog),
        ],
        singleNullReturnButton: tr('ok'),
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
  final GlobalKey<ExpressiveRefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey();
  // ... existing code ...
  final Set<int> _expandedCategories = <int>{};

  // Helper function to preserve transparency regardless of theme overrides
  Color preserveTransparency(Color baseColor, double alpha) {
    // ... existing code ...

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
      return Color(categoryColorValue).withValues(alpha: alpha / 255);
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
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    scrollController.dispose();
    super.dispose();
  }

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

    var tempRenamed = [];
    var tempPinned = [];
    var tempNotPinned = [];
    for (var a in listedApps) {
      if (a.app.hasPendingRepoRename) {
        tempRenamed.add(a);
      } else if (a.app.pinned) {
        tempPinned.add(a);
      } else {
        tempNotPinned.add(a);
      }
    }
    listedApps = [...tempRenamed, ...tempPinned, ...tempNotPinned];

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
                    if (appsProvider.loadingApps && appsProvider.apps.isEmpty)
                      const LoadingIndicatorM3E()
                    else
                      Icon(
                        Icons.widgets,
                        size: 80,
                        color: preserveTransparency(
                          Theme.of(context).colorScheme.primary,
                          0.6,
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
                        padding: const EdgeInsets.only(top: 12),
                        child: Text(
                          () {
                            final subtext = 'noAppsSubtext'.t();
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
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
          ),
      ];
    }

    getAppIcon(int appIndex) {
      return GestureDetector(
        child: FutureBuilder(
          future: appsProvider.updateAppIcon(listedApps[appIndex].app.id),
          builder: (ctx, val) {
            return listedApps[appIndex].icon != null
                ? Image.memory(
                    listedApps[appIndex].icon!,
                    gaplessPlayback: true,
                    opacity: AlwaysStoppedAnimation(
                      listedApps[appIndex].installedInfo == null ? 0.6 : 1,
                    ),
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationZ(0.31),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Image(
                            image: const AssetImage(
                              'assets/graphics/icon_small.png',
                            ),
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                ? Colors.white.withValues(alpha: 0.4)
                                : Colors.white.withValues(alpha: 0.3),
                            colorBlendMode: BlendMode.modulate,
                            gaplessPlayback: true,
                          ),
                        ),
                      ),
                    ],
                  );
          },
        ),
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

    getChangesButtonString(int appIndex, bool hasChangeLogFn) {
      return listedApps[appIndex].app.releaseDate == null
          ? hasChangeLogFn
                ? tr('changes')
                : ''
          : DateFormat(
              'yyyy-MM-dd',
            ).format(listedApps[appIndex].app.releaseDate!.toLocal());
    }

    getSingleAppHorizTile(int index) {
      var showChangesFn = getChangeLogFn(context, listedApps[index].app);
      var hasUpdate =
          listedApps[index].app.installedVersion != null &&
          listedApps[index].app.installedVersion !=
              listedApps[index].app.latestVersion;
      Widget trailingRow = Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          hasUpdate ? getUpdateButton(index) : const SizedBox.shrink(),
          hasUpdate ? const SizedBox(width: 5) : const SizedBox.shrink(),
          GestureDetector(
            onTap: showChangesFn,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color:
                    settingsProvider.highlightTouchTargets &&
                        showChangesFn != null
                    ? (Theme.of(context).brightness == Brightness.light
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).primaryColorLight)
                          .withAlpha(
                            Theme.of(context).brightness == Brightness.light
                                ? 20
                                : 40,
                          )
                    : null,
              ),
              padding: settingsProvider.highlightTouchTargets
                  ? const EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0)
                  : const EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width / 4,
                        ),
                        child: Text(
                          getVersionText(index),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.end,
                          style: isVersionPseudo(listedApps[index].app)
                              ? TextStyle(fontStyle: FontStyle.italic)
                              : null,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        getChangesButtonString(index, showChangesFn != null),
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          decoration: showChangesFn != null
                              ? TextDecoration.underline
                              : TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      );

      var transparent = Theme.of(
        context,
      ).colorScheme.surface.withAlpha(0).toARGB32();

      // Guard against null or insufficient categories
      final categories = listedApps[index].app.categories;
      final hasValidCategories = categories != null && categories.length >= 2;

      List<double> stops = [
        if (hasValidCategories)
          ...categories.asMap().entries.map(
            (e) => ((e.key / (categories.length - 1)) - 0.0001),
          ),
        1,
      ];
      if (stops.length == 2) {
        stops[0] = 0.9999;
      }
      return Container(
        decoration: BoxDecoration(
          gradient: hasValidCategories
              ? LinearGradient(
                  stops: stops,
                  begin: const Alignment(-1, 0),
                  end: const Alignment(-0.97, 0),
                  colors: [
                    ...categories.map(
                      (e) => Color(
                        settingsProvider.categories[e] ?? transparent,
                      ).withAlpha(255),
                    ),
                    Color(transparent),
                  ],
                )
              : null,
        ),
        child: ListTile(
          tileColor: listedApps[index].app.pinned
              ? Colors.grey.withValues(alpha: 0.1)
              : Colors.transparent,
          selectedTileColor: Theme.of(context).colorScheme.primary.withValues(
            alpha: listedApps[index].app.pinned ? 0.2 : 0.1,
          ),
          selected: selectedAppIds
              .map((e) => e)
              .contains(listedApps[index].app.id),
          onLongPress: () {
            toggleAppSelected(listedApps[index].app);
          },
          leading: getAppIcon(index),
          title: Text(
            maxLines: 1,
            listedApps[index].name,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontWeight: listedApps[index].app.pinned
                  ? FontWeight.bold
                  : FontWeight.normal,
            ),
          ),
          subtitle: Text(
            tr('byX', args: [listedApps[index].author]),
            maxLines: 1,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontWeight: listedApps[index].app.pinned
                  ? FontWeight.bold
                  : FontWeight.normal,
            ),
          ),
          trailing: listedApps[index].downloadProgress != null
              ? SizedBox(
                  child: Text(
                    listedApps[index].downloadProgress! >= 0
                        ? tr(
                            'percentProgress',
                            args: [
                              listedApps[index].downloadProgress!
                                  .toInt()
                                  .toString(),
                            ],
                          )
                        : tr('installing'),
                    textAlign: (listedApps[index].downloadProgress! >= 0)
                        ? TextAlign.start
                        : TextAlign.end,
                  ),
                )
              : trailingRow,
          onTap: () {
            if (selectedAppIds.isNotEmpty) {
              toggleAppSelected(listedApps[index].app);
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      AppPage(appId: listedApps[index].app.id),
                ),
              );
            }
          },
        ),
      );
    }

    getSingleAppHorizTile(int index) {
      return buildListTile(index);
    }

    getSingleAppGridTile(int index) {
      return buildGridTile(index);
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

      // Skip rendering if no apps in this category
      if (filteredEntries.isEmpty) {
        return const SizedBox.shrink();
      }

      capFirstChar(String str) => str[0].toUpperCase() + str.substring(1);
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Card(
          child: ExpansionTile(
            key: ValueKey(
              'category_grid_${listedCategories[index] ?? "null"}_$index',
            ),
            title: Text(
              capFirstChar(listedCategories[index] ?? 'noCategory'.t()),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text(filteredEntries.length.toString()),
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
            tilePadding: const EdgeInsets.symmetric(horizontal: 8),
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 160,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.7,
                ),
                itemCount: filteredEntries.length,
                itemBuilder: (BuildContext context, int index) {
                  final appIndex = filteredEntries[index].key;
                  // Check if the app index is valid
                  if (appIndex >= 0 && appIndex < listedApps.length) {
                    return getSingleAppGridTile(appIndex);
                  }
                  return const SizedBox.shrink();
                },
              ),
            ],
          ),
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
              HapticFeedback.heavyImpact();
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
                    title: Text(
                      t(
                        'changeX',
                        args: ['apps'.plural(totalApps).toLowerCase()],
                      ),
                    ),
                    content: SingleChildScrollView(
                      child: GeneratedForm(
                        items: formItems.map((e) => [e]).toList(),
                        onValueChanges: (vals, valid, isBuilding) {
                          localValues = vals;
                        },
                      ),
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
                      Semantics(
                        button: true,
                        label: 'ok'.t(),
                        child: TextButton(
                          onPressed: () => Navigator.of(ctx).pop(localValues),
                          child: Text('ok'.t()),
                        ),
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
                      title: Text('categorize'.t()),
                      content: Text('selectedCategorizeWarning'.t()),
                      actions: [
                        Semantics(
                          button: true,
                          label: 'cancel'.t(),
                          child: TextButton(
                            onPressed: () => Navigator.of(ctx).pop(false),
                            child: Text('cancel'.t()),
                          ),
                        ),
                        Semantics(
                          button: true,
                          label: 'ok'.t(),
                          child: TextButton(
                            onPressed: () => Navigator.of(ctx).pop(true),
                            child: Text('ok'.t()),
                          ),
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
                    Semantics(
                      button: true,
                      label: 'continue'.t(),
                      child: TextButton(
                        onPressed: () {
                          for (var app in selectedApps) {
                            app.categories = selectedCategories.toList();
                          }
                          appsProvider.saveApps(selectedApps.toList());
                          Navigator.of(ctx).pop();
                        },
                        child: Text('continue'.t()),
                      ),
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
              Semantics(
                button: true,
                label: 'no'.t(),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('no'.t()),
                ),
              ),
              Semantics(
                button: true,
                label: 'yes'.t(),
                child: TextButton(
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
                  child: Text('yes'.t()),
                ),
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
              padding: const EdgeInsets.only(top: 6),
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
                        'appAuthor',
                        label: 'appAuthor'.t(),
                        required: false,
                        defaultValue: localValues['appAuthor'],
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
                      GeneratedFormSwitch(
                        'nonInstalledApps',
                        label: 'nonInstalledApps'.t(),
                        defaultValue: localValues['nonInstalledApps'],
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
              Semantics(
                button: true,
                label: 'ok'.t(),
                child: TextButton(
                  onPressed: () => Navigator.of(ctx).pop(localValues),
                  child: Text('ok'.t()),
                ),
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
          capFirstChar(String str) => str[0].toUpperCase() + str.substring(1);
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
                        e.value.app.categories?.contains(
                              listedCategories[index],
                            ) ==
                            true ||
                        e.value.app.categories?.isEmpty == true &&
                            listedCategories[index] == null,
                  )
                  .toList();

              if (filteredEntries.isEmpty) {
                return const SizedBox.shrink();
              }

              var tiles = filteredEntries
                  .map((e) => getSingleAppHorizTile(e.key))
                  .toList();

              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                child: Card(
                  child: ExpansionTile(
                    key: ValueKey(
                      'category_${listedCategories[index] ?? "null"}_$index',
                    ),
                    title: Text(
                      capFirstChar(listedCategories[index] ?? 'noCategory'.t()),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(tiles.length.toString()),
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
                    tilePadding: const EdgeInsets.symmetric(horizontal: 16),
                    childrenPadding: const EdgeInsets.all(16),
                    children: tiles,
                  ),
                ),
              );
            }, childCount: listedCategories.length),
          );
        }
      } else {
        if (settingsProvider.useGridView) {
          final spacing = 8.0;

          return SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 160,
                crossAxisSpacing: spacing,
                mainAxisSpacing: spacing,
                childAspectRatio: 0.65,
              ),
              delegate: SliverChildBuilderDelegate((
                BuildContext context,
                int index,
              ) {
                return getSingleAppGridTile(index);
              }, childCount: listedApps.length),
            ),
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
                  vertical: 2,
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
      body: Stack(
        children: [
          ExpressiveRefreshIndicator(
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
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('appsString'.t()),
                        TabBar(
                          controller: _tabController,
                          labelPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          tabs: [
                            Tab(text: 'all'.t()),
                            Tab(text: 'installed'.t()),
                            Tab(text: 'notInstalledApps'.t()),
                          ],
                        ),
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
                          return Semantics(
                            button: true,
                            label: settingsProvider.useGridView
                                ? 'listView'.t()
                                : 'gridView'.t(),
                            child: IconButton(
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
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  const SliverToBoxAdapter(child: SizedBox(height: 8)),
                  ...getLoadingWidgets(),
                  getDisplayedList(),
                ],
              ),
            ),
          ),
          if (appsProvider.apps.isNotEmpty)
            Positioned(
              left: 16,
              right: 16,
              bottom: 16,
              child: Align(
                alignment: Alignment.center,
                child: M3FloatingToolbar(
                  actions: [
                    M3FloatingToolbarAction(
                      icon: selectedAppIds.length == listedApps.length
                          ? Icons.deselect
                          : Icons.select_all,
                      label: selectedAppIds.isEmpty
                          ? listedApps.length.toString()
                          : selectedAppIds.length.toString(),
                      semanticLabel: selectedAppIds.isEmpty
                          ? 'installUpdateApps'.t()
                          : 'installUpdateSelectedApps'.t(),
                      tooltip: selectedAppIds.isEmpty
                          ? 'installUpdateApps'.t()
                          : 'installUpdateSelectedApps'.t(),
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
                    if (!(appsProvider.areDownloadsRunning() ||
                        (existingUpdateIdsAllOrSelected.isEmpty &&
                            newInstallIdsAllOrSelected.isEmpty &&
                            trackOnlyUpdateIdsAllOrSelected.isEmpty)))
                      M3FloatingToolbarAction(
                        icon: Icons.file_download,
                        semanticLabel: selectedAppIds.isEmpty
                            ? 'installUpdateApps'.t()
                            : 'installUpdateSelectedApps'.t(),
                        tooltip: selectedAppIds.isEmpty
                            ? 'installUpdateApps'.t()
                            : 'installUpdateSelectedApps'.t(),
                        onPressed: getMassObtainFunction(),
                      ),
                    if (selectedAppIds.isNotEmpty)
                      M3FloatingToolbarAction(
                        icon: Icons.share,
                        semanticLabel:
                            '${'share'.t()} - ${'updatiumExport'.t()}',
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
                      ),
                    if (selectedAppIds.isNotEmpty)
                      M3FloatingToolbarAction(
                        icon: Icons.delete,
                        semanticLabel: 'removeSelectedApps'.t(),
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
                                      appsProvider.undoRestoreApps(removedApps);
                                    },
                                  ),
                                ),
                              );
                            }
                          }
                        },
                      ),
                    if (selectedAppIds.isNotEmpty)
                      M3FloatingToolbarAction(
                        icon: Icons.category,
                        semanticLabel: 'categorize'.t(),
                        tooltip: 'categorize'.t(),
                        onPressed: () {
                          launchCategorizeDialog()();
                        },
                      ),
                    if (selectedAppIds.isNotEmpty)
                      M3FloatingToolbarAction(
                        icon: Icons.more_horiz,
                        semanticLabel: 'more'.t(),
                        tooltip: 'more'.t(),
                        onPressed: () {
                          showMoreOptionsDialog();
                        },
                      ),
                  ],
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
      'appAuthor': authorFilter,
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
    authorFilter = values['appAuthor']!;
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
