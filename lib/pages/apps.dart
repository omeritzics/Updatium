import 'package:animations/animations.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:updatium/components/button_helpers.dart';
import 'package:updatium/components/generated_form.dart';
import 'package:updatium/components/generated_form_modal.dart';
import 'package:updatium/custom_errors.dart';
import 'package:updatium/main.dart';
import 'package:updatium/pages/app.dart';
import 'package:updatium/pages/settings.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/utils/category_emojis.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:markdown/markdown.dart' as md;

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
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
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

  // Helper function to preserve transparency regardless of theme overrides
  Color preserveTransparency(Color baseColor, double alpha) {
    // Always apply the requested transparency, ensuring it takes priority
    // over any theme-based color overrides
    return baseColor.withOpacity(alpha);
  }

  // Helper function to get category emoji
  String getCategoryEmoji(
    String category,
    SettingsProvider settingsProvider,
  ) {
    final categoryEmojiValue = settingsProvider.categoryEmojis[category];
    if (categoryEmojiValue != null) {
      return categoryEmojiValue;
    }
    // Fallback to default emoji mapping
    return CategoryEmojis.getEmojiForCategory(category);
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
    // M3 Expressive spacing constants (based on 4dp baseline grid)
    const height4 = SizedBox(height: 4);
    const height8 = SizedBox(height: 8);
    const height12 = SizedBox(height: 12);
    const height16 = SizedBox(height: 16);
    const height20 = SizedBox(height: 20);
    const height24 = SizedBox(height: 24);
    const height28 = SizedBox(height: 28);
    const height32 = SizedBox(height: 32);
    const height40 = SizedBox(height: 40);
    const height48 = SizedBox(height: 48);
    const height56 = SizedBox(height: 56);
    const height64 = SizedBox(height: 64);
    const width4 = SizedBox(width: 4);
    const width8 = SizedBox(width: 8);
    const width12 = SizedBox(width: 12);
    const width16 = SizedBox(width: 16);
    const width20 = SizedBox(width: 20);
    const width24 = SizedBox(width: 24);

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
      if (filter.nameFilter.isNotEmpty || filter.authorFilter.isNotEmpty) {
        List<String> nameTokens = filter.nameFilter
            .split(' ')
            .where((element) => element.trim().isNotEmpty)
            .toList();
        List<String> authorTokens = filter.authorFilter
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
        (e) => e.app.categories.isNotEmpty ? e.app.categories : [null],
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
                    height24,
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

    getSingleAppHorizTile(int index) {
      // New trailing: show Install / Update button or Updated indicator
      Widget trailingRow = Builder(
        builder: (ctx) {
          final ai = listedApps[index];
          final app = ai.app;
          final isInstalled = app.installedVersion != null;
          final hasUpdateLocal =
              isInstalled && app.installedVersion != app.latestVersion;
          final isTrackOnly = app.additionalSettings['trackOnly'] == true;

          Widget action;
          if (isTrackOnly) {
            action = const Icon(Icons.check_circle_outline);
          } else if (!isInstalled) {
            action = FilledButton.tonal(
              onPressed: appsProvider.areDownloadsRunning()
                  ? null
                  : () {
                      appsProvider
                          .downloadAndInstallLatestApps([
                            app.id,
                          ], globalNavigatorKey.currentContext)
                          .catchError((e) {
                            showError(e, context);
                            return <String>[];
                          });
                    },
              style: const ButtonStyle(visualDensity: VisualDensity.compact),
              child: Text(tr('install')),
            );
          } else if (hasUpdateLocal) {
            action = FilledButton.tonal(
              onPressed: appsProvider.areDownloadsRunning()
                  ? null
                  : () {
                      appsProvider
                          .downloadAndInstallLatestApps([
                            app.id,
                          ], globalNavigatorKey.currentContext)
                          .catchError((e) {
                            showError(e, context);
                            return <String>[];
                          });
                    },
              style: const ButtonStyle(visualDensity: VisualDensity.compact),
              child: Text(tr('update')),
            );
          } else {
            action = Chip(
              avatar: Icon(
                Icons.check_circle,
                color: Theme.of(context).colorScheme.primary,
                size: 16,
              ),
              label: Text(
                tr('updated'),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 12,
                ),
              ),
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              side: BorderSide(
                color: preserveTransparency(
                  Theme.of(context).colorScheme.primary,
                  0.3,
                ),
                width: 1,
              ),
            );
          }

          return SizedBox(
            width: 120,
            height: double.infinity,
            child: Center(child: action),
          );
        },
      );

      // Get category emojis for display
      List<String> categoryEmojis = listedApps[index].app.categories
          .map((e) => getCategoryEmoji(e, settingsProvider))
          .toList();
      
      return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
          ),
        ),
        child: Stack(
          children: [
            // Main content
            InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
            if (selectedAppIds.isNotEmpty) {
              toggleAppSelected(listedApps[index].app);
            } else {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      AppPage(appId: listedApps[index].app.id),
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
            }
          },
          onLongPress: () {
            toggleAppSelected(listedApps[index].app);
          },
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 12,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: selectedAppIds.contains(listedApps[index].app.id)
                  ? BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 2,
                    )
                  : BorderSide.none,
            ),
            tileColor: Theme.of(context).colorScheme.surface,
            selectedTileColor: preserveTransparency(
              Theme.of(context).colorScheme.primaryContainer,
              0.3,
            ),
            selected: selectedAppIds.contains(listedApps[index].app.id),
            leading: SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
              width: MediaQuery.of(context).size.width * 0.1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: getAppIcon(index),
              ),
            ),
            title: Text(
              listedApps[index].name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: listedApps[index].app.pinned
                    ? FontWeight.w600
                    : FontWeight.w500,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            subtitle: Text(
              tr('byX', args: [listedApps[index].author]),
              maxLines: 1,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontWeight: listedApps[index].app.pinned
                    ? FontWeight.w500
                    : FontWeight.w400,
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
          ),
        ),
            // Emoji overlay
            if (categoryEmojis.isNotEmpty && settingsProvider.showCategoryEmojis)
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    categoryEmojis.take(3).join(' '),
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
          ],
        ),
      );
    }

    Widget getSingleAppGridTile(int index) {
      var hasUpdate =
          listedApps[index].app.installedVersion != null &&
          listedApps[index].app.installedVersion !=
              listedApps[index].app.latestVersion;
      
      // Get category emojis for display
      List<String> categoryEmojis = listedApps[index].app.categories
          .map((e) => getCategoryEmoji(e, settingsProvider))
          .toList();

      return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
          ),
        ),
        child: Stack(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(12),
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
          onLongPress: () {
            toggleAppSelected(listedApps[index].app);
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              if (selectedAppIds.contains(listedApps[index].app.id))
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: preserveTransparency(
                        Theme.of(context).colorScheme.primary,
                        0.2,
                      ),
                    ),
                  ),
                ),
              if (listedApps[index].app.pinned)
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Icon(
                      Icons.push_pin,
                      size: 16,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              if (hasUpdate)
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Icon(
                      Icons.circle,
                      size: 10,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  height12,
                  SizedBox(
                    height: 64,
                    width: 64,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: getAppIcon(index),
                    ),
                  ),
                  height8,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      listedApps[index].name,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      listedApps[index].author,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(fontSize: 11),
                    ),
                  ),
                  height8,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Builder(
                      builder: (ctx) {
                        final ai = listedApps[index];
                        final app = ai.app;
                        final isInstalled = app.installedVersion != null;
                        final hasUpdateLocal =
                            isInstalled &&
                            app.installedVersion != app.latestVersion;
                        final isTrackOnly =
                            app.additionalSettings['trackOnly'] == true;

                        if (isTrackOnly) {
                          return const SizedBox.shrink();
                        }

                        if (!isInstalled) {
                          return FilledButton.tonal(
                            onPressed: appsProvider.areDownloadsRunning()
                                ? null
                                : () {
                                    appsProvider
                                        .downloadAndInstallLatestApps([
                                          app.id,
                                        ], globalNavigatorKey.currentContext)
                                        .catchError((e) {
                                          showError(e, context);
                                          return <String>[];
                                        });
                                  },
                            style: const ButtonStyle(
                              visualDensity: VisualDensity.compact,
                            ),
                            child: Text(tr('install')),
                          );
                        }

                        if (hasUpdateLocal) {
                          return FilledButton.tonal(
                            onPressed: appsProvider.areDownloadsRunning()
                                ? null
                                : () {
                                    appsProvider
                                        .downloadAndInstallLatestApps([
                                          app.id,
                                        ], globalNavigatorKey.currentContext)
                                        .catchError((e) {
                                          showError(e, context);
                                          return <String>[];
                                        });
                                  },
                            style: const ButtonStyle(
                              visualDensity: VisualDensity.compact,
                            ),
                            child: Text(tr('update')),
                          );
                        }

                        return Chip(
                          avatar: Icon(
                            Icons.check_circle,
                            color: Theme.of(context).colorScheme.primary,
                            size: 14,
                          ),
                          label: Text(
                            tr('updated'),
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 10,
                            ),
                          ),
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.primaryContainer,
                          side: BorderSide(
                            color: preserveTransparency(
                              Theme.of(context).colorScheme.primary,
                              0.3,
                            ),
                            width: 1,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              if (listedApps[index].downloadProgress != null)
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black45,
                    ),
                    child: Center(
                      child: CircularProgressIndicator(
                        value: listedApps[index].downloadProgress! >= 0
                            ? listedApps[index].downloadProgress! / 100
                            : null,
                      ),
                    ),
                  ),
                ),
                // Emoji overlay
                if (categoryEmojis.isNotEmpty && settingsProvider.showCategoryEmojis)
                  Positioned(
                    top: 4,
                    left: 4,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        categoryEmojis.take(2).join(' '),
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
            ],
          ),
        ),
      );
    }

    getCategoryCollapsibleTile(int index) {
      var filteredEntries = listedApps
          .asMap()
          .entries
          .where(
            (e) =>
                e.value.app.categories.contains(listedCategories[index]) ||
                e.value.app.categories.isEmpty &&
                    listedCategories[index] == null,
          )
          .toList();

      var tiles = filteredEntries
          .map((e) => getSingleAppHorizTile(e.key))
          .toList();

      capFirstChar(String str) => str[0].toUpperCase() + str.substring(1);
      
      final settingsProvider = context.read<SettingsProvider>();
      final categoryName = listedCategories[index] ?? tr('noCategory');
      String displayText = capFirstChar(categoryName);
      
      if (settingsProvider.showCategoryEmojis && listedCategories[index] != null) {
        final emoji = CategoryEmojis.getEmojiForCategory(listedCategories[index]!);
        displayText = '$emoji $displayText';
      }
      
      return ExpansionTile(
        initiallyExpanded: true,
        title: Text(
          displayText,
          style: const TextStyle(fontWeight: FontWeight.bold),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        controlAffinity: ListTileControlAffinity.leading,
        trailing: Text(tiles.length.toString()),
        children: [Column(children: tiles)],
      );
    }

    getSelectAllButton() {
      return selectedAppIds.isEmpty
          ? AppTextButtonWithIcon(
              onPressed: () {
                selectThese(listedApps.map((e) => e.app).toList());
              },
              icon: Icon(
                Icons.select_all,
                color: Theme.of(context).colorScheme.primary,
              ),
              label: Text(listedApps.length.toString()),
            )
          : AppTextButtonWithIcon(
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
                  var totalApps =
                      existingUpdateIdsAllOrSelected.length +
                      newInstallIdsAllOrSelected.length +
                      trackOnlyUpdateIdsAllOrSelected.length;
                  return GeneratedFormModal(
                    title: tr(
                      'changeX',
                      args: [plural('apps', totalApps).toLowerCase()],
                    ),
                    items: formItems.map((e) => [e]).toList(),
                    initValid: true,
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
                await showDialog<Map<String, dynamic>?>(
                  context: context,
                  builder: (BuildContext ctx) {
                    return GeneratedFormModal(
                      title: tr('categorize'),
                      items: const [],
                      initValid: true,
                      message: tr('selectedCategorizeWarning'),
                    );
                  },
                ) !=
                null;
          }
          if (cont) {
            // ignore: use_build_context_synchronously
            await showDialog<Map<String, dynamic>?>(
              context: context,
              builder: (BuildContext ctx) {
                return GeneratedFormModal(
                  title: tr('categorize'),
                  items: const [],
                  initValid: true,
                  singleNullReturnButton: tr('continue'),
                  additionalWidgets: [
                    EmojiCategoryEditorSelector(
                      preselected: !showPrompt ? preselected ?? {} : {},
                      showLabelWhenNotEmpty: false,
                      onSelected: (categories) {
                        appsProvider.saveApps(
                          selectedApps.map((e) {
                            e.categories = categories;
                            return e;
                          }).toList(),
                        );
                      },
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
              AppTextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(tr('no')),
              ),
              AppTextButton(
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
                  AppTextButton(
                    onPressed: pinSelectedApps,
                    child: Text(
                      selectedApps.where((element) => element.pinned).isEmpty
                          ? tr('pinToTop')
                          : tr('unpinFromTop'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Divider(),
                  AppTextButton(
                    onPressed: () {
                      String urls = '';
                      for (var a in selectedApps) {
                        urls += '${a.url}\n';
                      }
                      urls = urls.substring(0, urls.length - 1);
                      Share.share(
                        urls,
                        subject: 'Updatium - ${tr('appsString')}',
                      );
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      tr('shareSelectedAppURLs'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Divider(),
                  AppTextButton(
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
                            Share.shareXFiles(
                              [f],
                              fileNameOverrides: ['$fn.json'],
                            );
                          },
                    child: Text(
                      '${tr('share')} - ${tr('updatiumExport')}',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Divider(),
                  AppTextButton(
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
                  AppTextButton(
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
          var vals = filter.toFormValuesMap();
          return GeneratedFormModal(
            initValid: true,
            title: tr('filterApps'),
            items: [
              [
                GeneratedFormTextField(
                  'appName',
                  label: tr('appName'),
                  required: false,
                  defaultValue: vals['appName'],
                ),
                GeneratedFormTextField(
                  'author',
                  label: tr('author'),
                  required: false,
                  defaultValue: vals['author'],
                ),
              ],
              [
                GeneratedFormTextField(
                  'appId',
                  label: tr('appId'),
                  required: false,
                  defaultValue: vals['appId'],
                ),
              ],
              [
                GeneratedFormSwitch(
                  'upToDateApps',
                  label: tr('upToDateApps'),
                  defaultValue: vals['upToDateApps'],
                ),
              ],
              [
                GeneratedFormSwitch(
                  'nonInstalledApps',
                  label: tr('nonInstalledApps'),
                  defaultValue: vals['nonInstalledApps'],
                ),
              ],
              [
                GeneratedFormDropdown(
                  'sourceFilter',
                  label: tr('appSource'),
                  defaultValue: filter.sourceFilter,
                  [
                    MapEntry('', tr('none')),
                    ...sourceProvider.sources.map(
                      (e) => MapEntry(e.runtimeType.toString(), e.name),
                    ),
                  ],
                ),
              ],
            ],
            additionalWidgets: [
              height16,
              EmojiCategoryEditorSelector(
                preselected: filter.categoryFilter,
                onSelected: (categories) {
                  filter.categoryFilter = categories.toSet();
                },
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
      var isFilterOff = filter.isIdenticalTo(neutralFilter, settingsProvider);
      return Row(
        children: [
          getSelectAllButton(),
          width16,
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
        return SliverList(
          delegate: SliverChildBuilderDelegate((
            BuildContext context,
            int index,
          ) {
            // For now, Category view remains as list of ExpansionTiles
            return getCategoryCollapsibleTile(index);
          }, childCount: listedCategories.length),
        );
      } else {
        // Flat View
        if (settingsProvider.useGridView) {
          // Responsive grid configuration
          final screenWidth = MediaQuery.of(context).size.width;
          final screenHeight = MediaQuery.of(context).size.height;

          // Calculate optimal cross axis extent based on screen width
          double maxCrossAxisExtent;
          double childAspectRatio;

          if (screenWidth < 360) {
            // Very small screens (e.g., small phones)
            maxCrossAxisExtent = 120;
            childAspectRatio = 1.1;
          } else if (screenWidth < 480) {
            // Small screens (e.g., phones)
            maxCrossAxisExtent = 140;
            childAspectRatio = 1.0;
          } else if (screenWidth < 768) {
            // Medium screens (e.g., large phones, small tablets)
            maxCrossAxisExtent = 160;
            childAspectRatio = 0.95;
          } else if (screenWidth < 1024) {
            // Large screens (e.g., tablets)
            maxCrossAxisExtent = 180;
            childAspectRatio = 0.9;
          } else {
            // Very large screens (e.g., desktops, large tablets)
            maxCrossAxisExtent = 200;
            childAspectRatio = 0.85;
          }

          return SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: maxCrossAxisExtent,
              childAspectRatio: childAspectRatio,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
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
              return getSingleAppHorizTile(index);
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
              SliverAppBar(
                pinned: true,
                automaticallyImplyLeading: false,
                expandedHeight: MediaQuery.of(context).size.height * 0.15,
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
                flexibleSpace: FlexibleSpaceBar(
                  titlePadding: const EdgeInsets.only(
                    left: 28,
                    right: 88,
                    bottom: 24,
                  ),
                  title: Text(
                    tr('appsString'),
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyMedium!.color,
                    ),
                  ),
                ),
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
  late bool includeUptodate;
  late bool includeNonInstalled;
  late Set<String> categoryFilter;
  late String sourceFilter;

  AppsFilter({
    this.nameFilter = '',
    this.authorFilter = '',
    this.idFilter = '',
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
      'upToDateApps': includeUptodate,
      'nonInstalledApps': includeNonInstalled,
      'sourceFilter': sourceFilter,
    };
  }

  void setFormValuesFromMap(Map<String, dynamic> values) {
    nameFilter = values['appName']!;
    authorFilter = values['author']!;
    idFilter = values['appId']!;
    includeUptodate = values['upToDateApps'];
    includeNonInstalled = values['nonInstalledApps'];
    sourceFilter = values['sourceFilter'];
  }

  bool isIdenticalTo(AppsFilter other, SettingsProvider settingsProvider) =>
      authorFilter.trim() == other.authorFilter.trim() &&
      nameFilter.trim() == other.nameFilter.trim() &&
      idFilter.trim() == other.idFilter.trim() &&
      includeUptodate == other.includeUptodate &&
      includeNonInstalled == other.includeNonInstalled &&
      settingsProvider.setEqual(categoryFilter, other.categoryFilter) &&
      sourceFilter.trim() == other.sourceFilter.trim();
}
