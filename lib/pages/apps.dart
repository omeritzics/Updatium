import 'package:animations/animations.dart';
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:expressive_refresh/expressive_refresh.dart';
import 'package:updatium/custom_errors.dart';

import 'package:updatium/services/slang_converter.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:markdown/markdown.dart' as md;
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

Color preserveTransparency(Color color, double opacity) {
  return color.withValues(alpha: opacity);
}

class AppsPage extends StatefulWidget {
  const AppsPage({
    super.key,
    this.onAppSelected,
    this.selectedAppId,
    this.onSelectionChanged,
  });

  /// In a two-pane layout, called when the user taps an app (instead of pushing
  /// an [AppPage] route). In single-pane mode this is null and taps push a
  /// route as usual.
  final void Function(String appId)? onAppSelected;

  /// The app currently shown in the detail pane (two-pane), used to highlight
  /// the tile.
  final String? selectedAppId;

  /// Called whenever the set of selected app ids changes (e.g. when the user
  /// toggles a row or clears the selection), reporting whether any apps are now
  /// selected. The parent shell uses this to morph the FAB between "Add" and
  /// "Actions".
  final void Function(bool hasSelection)? onSelectionChanged;

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
          TextButton(
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
  Set<String> selectedAppIds = {};
  DateTime? refreshingSince;
  final GlobalKey<ExpressiveRefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<ExpressiveRefreshIndicatorState>();
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

  late final ScrollController scrollController = ScrollController();
  final TextEditingController searchController = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_providersInitialized) {
      appsProvider = context.read<AppsProvider>();
      settingsProvider = context.read<SettingsProvider>();
      _providersInitialized = true;
    }
  }

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

  void clearSelected() {
    selectedAppIds.clear();
    setState(() {});
    widget.onSelectionChanged?.call(selectedAppIds.isNotEmpty);
  }

  void selectThese(List<App> apps) {
    if (selectedAppIds.isEmpty) {
      for (var a in apps) {
        selectedAppIds.add(a.id);
      }
      setState(() {});
      widget.onSelectionChanged?.call(selectedAppIds.isNotEmpty);
    }
  }

  void toggleAppSelected(App app) {
    if (selectedAppIds.contains(app.id)) {
      selectedAppIds.remove(app.id);
    } else {
      selectedAppIds.add(app.id);
    }
    setState(() {});
    widget.onSelectionChanged?.call(selectedAppIds.isNotEmpty);
  }

  List<AppInMemory> getFilteredAndSortedApps(
    List<AppInMemory> listedApps,
    Set<String> existingUpdates,
  ) {
    var result = AppListBuilder.filter(listedApps, filter);
    result = AppListBuilder.sort(
      result,
      settingsProvider.sortColumn,
      settingsProvider.sortOrder,
    );
    result = AppListBuilder.reorder(
      result,
      settingsProvider.pinUpdates,
      settingsProvider.buryNonInstalled,
      existingUpdates,
    );
    return result;
  }

  Future<List<App>> refresh() {
    settingsProvider.lightImpact();
    setState(() {});
    final ctx = context;
    return appsProvider
        .checkUpdates(forceAll: true)
        .catchError((e) {
          if (ctx.mounted) {
            showError(e is CheckUpdatesException ? e.errors : e, ctx);
          }
          return <App>[];
        })
        .whenComplete(() {
          setState(() {});
        });
  }

  VoidCallback? massObtainCallback(
    BuildContext context,
    List<String> existingUpdateIdsAllOrSelected,
    List<String> newInstallIdsAllOrSelected,
    List<String> trackOnlyUpdateIdsAllOrSelected,
  ) {
    return appsProvider.areDownloadsRunning() ||
            (existingUpdateIdsAllOrSelected.isEmpty &&
                newInstallIdsAllOrSelected.isEmpty &&
                trackOnlyUpdateIdsAllOrSelected.isEmpty)
        ? null
        : () {
            settingsProvider.heavyImpact();
            _showObtainDialog(
              context,
              existingUpdateIdsAllOrSelected,
              newInstallIdsAllOrSelected,
              trackOnlyUpdateIdsAllOrSelected,
            );
          };
  }

  void _showObtainDialog(
    BuildContext context,
    List<String> existingUpdateIds,
    List<String> newInstallIds,
    List<String> trackOnlyUpdateIds,
  ) {
    final totalApps =
        existingUpdateIds.length +
        newInstallIds.length +
        trackOnlyUpdateIds.length;
    showDialog<Set<String>>(
      context: context,
      builder: (BuildContext ctx) {
        return _BulkUpdateDialog(
          existingUpdateIds: existingUpdateIds,
          newInstallIds: newInstallIds,
          trackOnlyUpdateIds: trackOnlyUpdateIds,
          totalApps: totalApps,
          apps: appsProvider.apps,
        );
      },
    ).then((selectedIds) async {
      if (selectedIds != null && selectedIds.isNotEmpty) {
        if (!context.mounted) return;
        unawaited(
          appsProvider
              .downloadAndInstallLatestApps(
                selectedIds.toList(),
                appNavigatorKey.currentContext,
              )
              .then((value) {
                if (value.isNotEmpty) {
                  if (context.mounted) {
                    showMessage(tr('appsUpdated'), context);
                    final np = context.read<NotificationsProvider>();
                    np.cancel(updateNotificationId);
                    np.cancel(
                      SilentUpdateAttemptNotification(
                        [],
                        id: value[0].hashCode,
                      ).id,
                    );
                  }
                }
              })
              .catchError((e) {
                if (context.mounted) showError(e, context);
              }),
        );
      }
    });
  }

  Future<void> showFilterDialog(BuildContext context) async {
    var pendingCategories = {...filter.categoryFilter};
    final values = await showDialog<Map<String, dynamic>?>(
      context: context,
      builder: (BuildContext ctx) {
        final vals = filter.toFormValuesMap();
        return GeneratedFormModal(
          tileMode: true,
          initValid: true,
          title: tr('filterApps'),
          items: [
            [
              GeneratedFormTextField(
                'appName',
                label: tr('appName'),
                required: false,
                value: vals['appName'],
              ),
            ],
            [
              GeneratedFormTextField(
                'author',
                label: tr('author'),
                required: false,
                value: vals['author'],
              ),
            ],
            [
              GeneratedFormTextField(
                'appId',
                label: tr('appId'),
                required: false,
                value: vals['appId'],
              ),
            ],
            [
              GeneratedFormSwitch(
                'upToDateApps',
                label: tr('upToDateApps'),
                value: vals['upToDateApps'],
              ),
            ],
            [
              GeneratedFormSwitch(
                'nonInstalledApps',
                label: tr('nonInstalledApps'),
                value: vals['nonInstalledApps'],
              ),
            ],
            [
              GeneratedFormDropdown(
                'sourceFilter',
                label: tr('appSource'),
                value: filter.sourceFilter,
                [
                  MapEntry('', tr('none')),
                  ...ctx.read<SourceProvider>().sources.map(
                    (e) => MapEntry(e.sourceIdentifier, e.name),
                  ),
                ],
              ),
            ],
          ],
          additionalWidgets: [
            const SizedBox(height: 16),
            ConnectedCard(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: CategorySelector(
                  selected: filter.categoryFilter,
                  allowCreate: false,
                  onChanged: (categories) {
                    pendingCategories = categories;
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
    if (values != null) {
      _searchDebounce?.cancel();
      filter.setFormValuesFromMap(values);
      filter.categoryFilter = pendingCategories;
      // Keep the search bar in sync with the name filter the dialog just set,
      // otherwise it shows stale text and the next keystroke overwrites it.
      if (searchController.text != filter.nameFilter) {
        searchController.text = filter.nameFilter;
      }
      if (mounted) setState(() {});
    }
  }

  void onSearchChanged(String value) {
    _searchDebounce?.cancel();
    _searchDebounce = Timer(const Duration(milliseconds: 300), () {
      filter.nameFilter = value;
      if (mounted) setState(() {});
    });
  }

  void clearSearchAndFilter() {
    _searchDebounce?.cancel();
    filter = AppsFilter();
    searchController.clear();
    setState(() {});
  }

  Future<void> Function() launchCategorizeDialogCallback(
    BuildContext context,
    Set<App> selectedApps,
  ) {
    return () async {
      try {
        Set<String>? preselected;
        var showPrompt = false;
        for (var element in selectedApps) {
          final currentCats = element.categories.toSet();
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
        if (cont && context.mounted) {
          var pendingCategories = !showPrompt
              ? (preselected ?? <String>{})
              : <String>{};
          var categoriesChanged = false;
          await showDialog<Map<String, dynamic>?>(
            context: context,
            builder: (BuildContext ctx) {
              return GeneratedFormModal(
                title: tr('categorize'),
                items: const [],
                initValid: true,
                singleNullReturnButton: tr('continue'),
                additionalWidgets: [
                  CategorySelector(
                    selected: !showPrompt ? (preselected ?? {}) : {},
                    onChanged: (categories) {
                      pendingCategories = categories;
                      categoriesChanged = true;
                    },
                  ),
                ],
              );
            },
          );
          if (categoriesChanged) {
            unawaited(
              appsProvider.saveApps(
                selectedApps.map((e) {
                  e = e.copyWith(categories: pendingCategories.toList());
                  return e;
                }).toList(),
              ),
            );
          }
        }
      } catch (err) {
        if (context.mounted) showError(err, context);
      }
    };
  }

  Future<void> showMassMarkDialog(
    BuildContext context,
    Set<App> selectedApps,
  ) async {
    try {
      final confirmed = await showConfirmDialog(
        context,
        title: tr(
          'markXSelectedAppsAsUpdated',
          args: [selectedAppIds.length.toString()],
        ),
        content: Text(
          tr('onlyWorksWithNonVersionDetectApps'),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        autofocusConfirm: context.read<SettingsProvider>().isTV,
      );
      if (!confirmed) return;
      settingsProvider.selectionClick();
      unawaited(
        appsProvider.saveApps(
          selectedApps.map((a) {
            if (a.installedVersion != null &&
                !appsProvider.isVersionDetectionPossible(
                  appsProvider.apps[a.id],
                )) {
              a = a.copyWith(installedVersion: a.latestVersion);
            }
            return a;
          }).toList(),
        ),
      );
    } catch (e) {
      if (context.mounted) showError(e, context);
    }
  }

  void pinSelectedApps(Set<App> selectedApps) {
    final pinStatus = selectedApps.where((element) => element.pinned).isEmpty;
    unawaited(
      appsProvider.saveApps(
        selectedApps.map((e) {
          e = e.copyWith(pinned: pinStatus);
          return e;
        }).toList(),
      ),
    );
  }

  void showMoreOptionsBottomSheet(BuildContext context, Set<App> selectedApps) {
    final isPinned = selectedApps.where((e) => e.pinned).isNotEmpty;
    final hasSelection = selectedAppIds.isNotEmpty;

    final existingUpdateIds = selectedApps
        .where(
          (a) =>
              a.installedVersion != null &&
              a.installedVersion != a.latestVersion &&
              a.settings.getBool('trackOnly') != true,
        )
        .map((a) => a.id)
        .toList();
    final newInstallIds = selectedApps
        .where(
          (a) =>
              a.installedVersion == null &&
              a.settings.getBool('trackOnly') != true,
        )
        .map((a) => a.id)
        .toList();
    final trackOnlyUpdateIds = selectedApps
        .where(
          (a) =>
              a.installedVersion != null &&
              a.installedVersion != a.latestVersion &&
              a.settings.getBool('trackOnly') == true,
        )
        .map((a) => a.id)
        .toList();
    final hasObtainActions =
        existingUpdateIds.isNotEmpty ||
        newInstallIds.isNotEmpty ||
        trackOnlyUpdateIds.isNotEmpty;

    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      builder: (BuildContext ctx) {
        Widget optionTile({
          required IconData icon,
          required String label,
          required VoidCallback? onTap,
        }) => ActionListTile(
          icon: icon,
          label: label,
          onTap: onTap,
          autoPop: true,
        );

        return SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                optionTile(
                  icon: Icons.delete_outline,
                  label: tr('remove'),
                  onTap: hasSelection
                      ? () {
                          appsProvider.removeAppsWithModal(
                            context,
                            selectedApps.toList(),
                          );
                        }
                      : null,
                ),
                optionTile(
                  icon: Icons.category_outlined,
                  label: tr('categorize'),
                  onTap: hasSelection
                      ? launchCategorizeDialogCallback(context, selectedApps)
                      : null,
                ),
                optionTile(
                  icon: isPinned ? Icons.push_pin : Icons.push_pin_outlined,
                  label: isPinned ? tr('unpinFromTop') : tr('pinToTop'),
                  onTap: () => pinSelectedApps(selectedApps),
                ),
                if (hasObtainActions && !appsProvider.areDownloadsRunning())
                  optionTile(
                    icon: Icons.download_rounded,
                    label: tr('installUpdateSelectedApps'),
                    onTap: () {
                      settingsProvider.heavyImpact();
                      _showObtainDialog(
                        context,
                        existingUpdateIds,
                        newInstallIds,
                        trackOnlyUpdateIds,
                      );
                    },
                  ),
                optionTile(
                  icon: Icons.share_outlined,
                  label: tr('shareSelectedAppURLs'),
                  onTap: () => shareAppURLs(selectedApps),
                ),
                optionTile(
                  icon: Icons.link_outlined,
                  label: tr('shareAppConfigLinks'),
                  onTap: !hasSelection
                      ? null
                      : () => shareConfigLinks(selectedApps),
                ),
                optionTile(
                  icon: Icons.file_download_outlined,
                  label: '${tr('share')} - ${tr('updatiumExport')}',
                  onTap: !hasSelection ? null : () => shareExport(selectedApps),
                ),
                optionTile(
                  icon: Icons.download_outlined,
                  label: tr(
                    'downloadX',
                    args: [lowerCaseIfEnglish(tr('releaseAsset'))],
                  ),
                  onTap: () {
                    appsProvider
                        .downloadAppAssets(
                          selectedApps.map((e) => e.id).toList(),
                          context,
                        )
                        .catchError((e) {
                          if (context.mounted) showError(e, context);
                          return <String>[];
                        });
                  },
                ),
                optionTile(
                  icon: Icons.done_all,
                  label: tr('markSelectedAppsUpdated'),
                  onTap: appsProvider.areDownloadsRunning()
                      ? null
                      : () => showMassMarkDialog(context, selectedApps),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void shareAppURLs(Set<App> selectedApps) {
    final buf = StringBuffer();
    for (var a in selectedApps) {
      buf.writeln(a.url);
    }
    final urls = buf.toString().trimRight();
    unawaited(
      SharePlus.instance.share(
        ShareParams(text: urls, subject: 'Updatium - ${tr('appsString')}'),
      ),
    );
  }

  void shareConfigLinks(Set<App> selectedApps) {
    final buf = StringBuffer();
    for (var a in selectedApps) {
      buf.writeln(
        'https://apps.updatium.imranr.dev/redirect?r=updatium://app/${Uri.encodeComponent(jsonEncode({'id': a.id, 'url': a.url, 'author': a.author, 'name': a.name, 'preferredApkIndex': a.preferredApkIndex, 'additionalSettings': jsonEncode(a.additionalSettings), 'overrideSource': a.overrideSource}))}',
      );
    }
    unawaited(
      SharePlus.instance.share(
        ShareParams(
          text: buf.toString(),
          subject: 'Updatium - ${tr('appsString')}',
        ),
      ),
    );
  }

  void shareExport(Set<App> selectedApps) {
    const encoder = JsonEncoder.withIndent('    ');
    final exportJSON = encoder.convert(
      appsProvider.generateExportJSON(
        appIds: selectedApps.map((e) => e.id).toList(),
        overrideExportSettings: 0,
      ),
    );
    final String fn =
        '${tr('updatiumExportHyphenatedLowercase')}-${DateTime.now().toIso8601String().replaceAll(':', '-')}-count-${selectedApps.length}';
    final XFile f = XFile.fromData(
      Uint8List.fromList(utf8.encode(exportJSON)),
      mimeType: 'application/json',
      name: fn,
    );
    unawaited(
      SharePlus.instance.share(
        ShareParams(files: [f], fileNameOverrides: ['$fn.json']),
      ),
    );
  }

  void toggleGroupCollapse(String? group) {
    if (collapsedGroups.contains(group)) {
      collapsedGroups.remove(group);
    } else {
      collapsedGroups.add(group);
    }
    setState(() {});
  }

  Widget _buildTile(
    int index,
    BuildContext context,
    List<AppInMemory> listedApps,
    SettingsProvider settingsProvider,
    AppsProvider appsProvider, {
    BorderRadius? borderRadius,
  }) {
    final aim = listedApps[index];
    final app = aim.app;
    return AppListTile(
      appInMemory: aim,
      settingsProvider: settingsProvider,
      appsProvider: appsProvider,
      borderRadius: borderRadius,
      multiSelected: selectedAppIds.contains(app.id),
      detailSelected: widget.selectedAppId == app.id,
      autofocus: index == 0 && settingsProvider.isTV,
      onToggleSelected: () => toggleAppSelected(app),
      onTap: () {
        if (selectedAppIds.isNotEmpty) {
          toggleAppSelected(app);
        } else if (widget.onAppSelected != null) {
          widget.onAppSelected!(app.id);
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AppPage(appId: app.id)),
          );
        }
      },
    );
  }

  Widget _appTileCard(
    int index,
    BuildContext context,
    List<AppInMemory> listedApps,
    SettingsProvider settingsProvider,
    AppsProvider appsProvider,
  ) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 4, 12, 4),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: _buildTile(
          index,
          context,
          listedApps,
          settingsProvider,
          appsProvider,
          borderRadius: BorderRadius.circular(connectedTileBigRadius),
        ),
      ),
    );
  }

  Widget _getGroupCollapsibleTile(
    int index,
    BuildContext context,
    List<AppInMemory> listedApps,
    String groupBy,
    List<String?> listedGroups,
    Map<String?, List<int>> grouped,
    SettingsProvider settingsProvider,
    AppsProvider appsProvider,
  ) {
    final group = listedGroups[index];
    final appIndices = grouped[group] ?? [];
    final expanded = !collapsedGroups.contains(group);
    final title = groupBy == GroupByMode.source.name
        ? (group ?? tr('noSource'))
        : capitalizeFirst(group ?? tr('noCategory'));
    return AppListGroupSection(
      title: title,
      expanded: expanded,
      appCount: appIndices.length,
      onToggle: () => toggleGroupCollapse(group),
      buildTiles: () => [
        for (var j = 0; j < appIndices.length; j++)
          _buildTile(
            appIndices[j],
            context,
            listedApps,
            settingsProvider,
            appsProvider,
            // Header occupies the top slot, so tiles are never first; the last
            // tile gets the group's rounded bottom.
            borderRadius: positionalTileRadius(
              isFirst: false,
              isLast: j == appIndices.length - 1,
            ),
          ),
      ],
    );
  }

  Widget _getSelectAllButton(
    BuildContext context,
    List<AppInMemory> listedApps,
  ) {
    return selectedAppIds.isEmpty
        ? TextButton.icon(
            style: const ButtonStyle(visualDensity: VisualDensity.compact),
            onPressed: () {
              selectThese(listedApps.map((e) => e.app).toList());
            },
            icon: Icon(
              Icons.select_all_outlined,
              color: Theme.of(context).colorScheme.primary,
            ),
            label: Text(listedApps.length.toString()),
          )
        : TextButton.icon(
            style: const ButtonStyle(visualDensity: VisualDensity.compact),
            onPressed: () {
              clearSelected();
            },
            icon: Icon(
              Icons.deselect_outlined,
              color: Theme.of(context).colorScheme.primary,
            ),
            label: Text(selectedAppIds.length.toString()),
          );
  }

  Widget _getDisplayedList(
    BuildContext context,
    List<AppInMemory> listedApps,
    String groupBy,
    List<String?> listedGroups,
    Map<String?, List<int>> grouped,
    SettingsProvider settingsProvider,
    AppsProvider appsProvider,
  ) {
    return groupBy != GroupByMode.none.name &&
            !(listedGroups.isEmpty ||
                (listedGroups.length == 1 && listedGroups[0] == null))
        ? SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return _getGroupCollapsibleTile(
                  index,
                  context,
                  listedApps,
                  groupBy,
                  listedGroups,
                  grouped,
                  settingsProvider,
                  appsProvider,
                );
              },
              childCount: listedGroups.length,
              addAutomaticKeepAlives: false,
            ),
          )
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return _appTileCard(
                  index,
                  context,
                  listedApps,
                  settingsProvider,
                  appsProvider,
                );
              },
              childCount: listedApps.length,
              addAutomaticKeepAlives: false,
            ),
          );
  }

  Widget _getSearchBarSliver(
    BuildContext context,
    SettingsProvider settingsProvider,
    List<AppInMemory> listedApps,
  ) {
    final isFilterOff = filter.isIdenticalTo(neutralFilter, settingsProvider);
    final trailing = <Widget>[
      _getSelectAllButton(context, listedApps),
      if (!isFilterOff)
        IconButton(
          tooltip: '${tr('filter')} - ${tr('remove')}',
          onPressed: () => clearSearchAndFilter(),
          icon: const Icon(Icons.filter_alt_off_outlined),
        ),
      IconButton(
        tooltip: tr('filterApps'),
        onPressed: () => showFilterDialog(context),
        icon: const Icon(Icons.filter_list_rounded),
      ),
    ];
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
        child: settingsProvider.isTV
            ? _TVSearchBar(
                controller: searchController,
                onChanged: onSearchChanged,
                trailing: trailing,
                hintText: tr('search'),
              )
            : SearchBar(
                controller: searchController,
                hintText: tr('search'),
                padding: const WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 16),
                ),
                leading: const Icon(Icons.search_rounded),
                trailing: trailing,
                onChanged: (value) {
                  onSearchChanged(value);
                },
              ),
      ),
    );
  }

  Widget _getUpdateBannerSliver(
    BuildContext context,
    AppsProvider appsProvider,
    SettingsProvider settingsProvider,
    List<String> existingUpdateIdsAllOrSelected,
    List<String> newInstallIdsAllOrSelected,
    List<String> trackOnlyUpdateIdsAllOrSelected,
  ) {
    final mode = settingsProvider.actionBannerMode;
    if (mode == ActionBannerMode.none) {
      return const SliverToBoxAdapter(child: SizedBox(width: double.infinity));
    }
    final onObtain =
        mode == ActionBannerMode.updatesOnly &&
            existingUpdateIdsAllOrSelected.isEmpty
        ? null
        : massObtainCallback(
            context,
            existingUpdateIdsAllOrSelected,
            newInstallIdsAllOrSelected,
            trackOnlyUpdateIdsAllOrSelected,
          );
    final cs = Theme.of(context).colorScheme;
    return SliverToBoxAdapter(
      child: AnimatedSize(
        duration: ExpressiveMotion.medium,
        curve: ExpressiveMotion.emphasized,
        alignment: Alignment.topCenter,
        child: onObtain == null
            ? const SizedBox(width: double.infinity)
            : Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: ConnectedCard(
                  color: cs.primaryContainer,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Icon(
                          Icons.system_update_alt_rounded,
                          color: cs.onPrimaryContainer,
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Text(
                            selectedAppIds.isEmpty
                                ? tr('installUpdateApps')
                                : tr('installUpdateSelectedApps'),
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(
                                  color: cs.onPrimaryContainer,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        FilledButton(
                          onPressed: onObtain,
                          child: Text(tr('update')),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }

  List<Widget> _getLoadingWidgets(
    BuildContext context,
    AppsProvider appsProvider,
    List<AppInMemory> listedApps,
  ) {
    if (appsProvider.loadingApps && appsProvider.apps.isEmpty) {
      return [
        const SliverFillRemaining(
          hasScrollBody: false,
          child: Center(
            child: CircularProgressIndicator(
              strokeCap: StrokeCap.round,
              strokeWidth: 6,
            ),
          ),
        ),
      ];
    }
    return [
      if (appsProvider.loadingApps && listedApps.isEmpty)
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.fromLTRB(32, 0, 32, 8),
            child: LinearProgressIndicator(),
          ),
        ),
      if (listedApps.isEmpty)
        SliverFillRemaining(
          child: EmptyState(
            icon: appsProvider.apps.isEmpty
                ? Icons.apps_outlined
                : Icons.search_off_rounded,
            message: appsProvider.apps.isEmpty
                ? tr('noApps')
                : tr('noAppsForFilter'),
          ),
        ),
    ];
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
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        refreshIndicatorKey.currentState?.show();
      });
    }

    final apps = appsProvider.getAppValues().toList();
    final allAppIds = apps.map((e) => e.app.id).toSet();
    final localSelected = selectedAppIds.where(allAppIds.contains).toSet();
    if (localSelected.length != selectedAppIds.length) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          final freshListedIds = appsProvider
              .getAppValues()
              .map((e) => e.app.id)
              .toSet();
          setState(() {
            selectedAppIds = selectedAppIds
                .where(freshListedIds.contains)
                .toSet();
          });
          widget.onSelectionChanged?.call(selectedAppIds.isNotEmpty);
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
              ? listedAppIdSet2.contains(element)
              : selectedAppIds.contains(element),
        )
        .toList();
    var newInstallIdsAllOrSelected = appsProvider
        .findAppIdsWithPendingUpdates(nonInstalledOnly: true)
        .where(
          (element) => selectedAppIds.isEmpty
              ? listedAppIdSet2.contains(element)
              : selectedAppIds.contains(element),
        )
        .toList();

    final List<String> trackOnlyUpdateIdsAllOrSelected = [];
    for (var id in existingUpdateIdsAllOrSelected) {
      if (appsProvider.apps[id]!.app.settings.getBool('trackOnly')) {
        trackOnlyUpdateIdsAllOrSelected.add(id);
      }
    }
    for (var id in newInstallIdsAllOrSelected) {
      if (appsProvider.apps[id]!.app.settings.getBool('trackOnly') &&
          !trackOnlyUpdateIdsAllOrSelected.contains(id)) {
        trackOnlyUpdateIdsAllOrSelected.add(id);
      }
    }
    existingUpdateIdsAllOrSelected = existingUpdateIdsAllOrSelected
        .where((id) => !trackOnlyUpdateIdsAllOrSelected.contains(id))
        .toList();
    newInstallIdsAllOrSelected = newInstallIdsAllOrSelected
        .where((id) => !trackOnlyUpdateIdsAllOrSelected.contains(id))
        .toList();

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
                          0.55,
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

    // Simplified grid tile widget using Material Design 3 components
    Widget buildGridTile(int index) {
      final appInfo = listedApps[index];
      final app = appInfo.app;
      final isInstalled = app.installedVersion != null;
      final hasUpdate =
          isInstalled && app.installedVersion != app.latestVersion;
      final isTrackOnly = app.additionalSettings['trackOnly'] == true;
      final isSelected = selectedAppIds.contains(app.id);

      return Card(
        margin: const EdgeInsets.symmetric(vertical: 4),
        color: isSelected
            ? Theme.of(
                context,
              ).colorScheme.primaryContainer.withValues(alpha: 0.3)
            : null,
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
            child: Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                      ),
                      const SizedBox(height: 8),
                      // App name
                      Text(
                        appInfo.name,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.labelMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      // Author name
                      Text(
                        t('byX', args: [appInfo.author]),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(height: 8),
                      // Action button or progress indicator
                      if (appInfo.downloadProgress != null)
                        Semantics(
                          label: 'downloadProgress'.t(),
                          value: '${appInfo.downloadProgress!.toInt()}%',
                          child: SizedBox(
                            width: 80,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (appInfo.downloadProgress! >= 0)
                                  Text(
                                    '${appInfo.downloadProgress!.toInt()}%',
                                    style: Theme.of(
                                      context,
                                    ).textTheme.bodySmall,
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
                          ),
                        )
                      else if (!isTrackOnly)
                        buildActionButton(
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
        ),
      );
    }

    // Simplified list tile widget using Material Design 3 components
    Widget buildListTile(int index) {
      final appInfo = listedApps[index];
      final app = appInfo.app;
      final isInstalled = app.installedVersion != null;
      final hasUpdate =
          isInstalled && app.installedVersion != app.latestVersion;
      final isTrackOnly = app.additionalSettings['trackOnly'] == true;
      final isSelected = selectedAppIds.contains(app.id);

      return Card(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
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
                      fontWeight: app.pinned
                          ? FontWeight.w600
                          : FontWeight.w500,
                    ),
                  ),
                ),
                if (app.pinned)
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
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
            ),
            subtitle: Text(
              t('byX', args: [appInfo.author]),
              maxLines: 1,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            trailing: appInfo.downloadProgress != null
                ? Semantics(
                    label: 'downloadProgress'.t(),
                    value: '${appInfo.downloadProgress!.toInt()}%',
                    child: SizedBox(
                      width: 80,
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
                    ),
                  )
                : isTrackOnly
                ? Semantics(
                    label: 'trackOnly'.t(),
                    child: Icon(
                      Icons.check_circle_outline,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  )
                : buildActionButton(app, isInstalled, hasUpdate),
            onTap: () => handleAppTap(app),
            onLongPress: () => toggleAppSelected(app),
          ),
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

      // Grid view when 'Group by category' is enabled

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: ExpansionTile(
          key: ValueKey(
            'category_grid_${listedCategories[index] ?? "null"}_$index',
          ),
          title: Text(
            '${listedCategories[index] ?? 'noCategory'.t()} (${filteredEntries.length})',
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
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
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: filteredEntries.map((entry) {
                final appIndex = entry.key;
                if (appIndex >= 0 && appIndex < listedApps.length) {
                  return SizedBox(
                    width: 120,
                    height: 200,
                    child: getSingleAppGridTile(appIndex),
                  );
                }
                return const SizedBox.shrink();
              }).toList(),
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
      }
    } else if (groupBy == GroupByMode.source.name) {
      final sourceNames = {
        for (final s in sourceProvider.sources) s.sourceIdentifier: s.name,
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

              // List view when 'Group by category' is enabled
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: ExpansionTile(
                  key: ValueKey(
                    'category_${listedCategories[index] ?? "null"}_$index',
                  ),
                  title: Text(
                    '${listedCategories[index] ?? 'noCategory'.t()} (${tiles.length})',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
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
          return SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: listedApps.asMap().entries.map((entry) {
                  final index = entry.key;
                  return SizedBox(
                    width: 120,
                    height: 200,
                    child: getSingleAppGridTile(index),
                  );
                }).toList(),
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
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
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
            key: _refreshIndicatorKey,
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
    final AppInMemory? app = context.read<AppsProvider>().apps[appId];

    if (app == null) {
      return;
    }

    if (widget.onAppSelected != null) {
      widget.onAppSelected!(app.app.id);
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => AppPage(appId: app.app.id),
        ),
      );
    }
  }

  void showSelectedAppActions() {
    if (!mounted) return;
    final listedApps = context.read<AppsProvider>().getAppValues().toList();
    final selectedApps = listedApps
        .map((e) => e.app)
        .where((a) => selectedAppIds.contains(a.id))
        .toSet();
    if (selectedApps.isNotEmpty) {
      showMoreOptionsBottomSheet(context, selectedApps);
    }
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

class _BulkUpdateDialog extends StatefulWidget {
  final List<String> existingUpdateIds;
  final List<String> newInstallIds;
  final List<String> trackOnlyUpdateIds;
  final int totalApps;
  final Map<String, AppInMemory> apps;

  const _BulkUpdateDialog({
    required this.existingUpdateIds,
    required this.newInstallIds,
    required this.trackOnlyUpdateIds,
    required this.totalApps,
    required this.apps,
  });

  @override
  State<_BulkUpdateDialog> createState() => _BulkUpdateDialogState();
}

class _BulkUpdateDialogState extends State<_BulkUpdateDialog> {
  late Set<String> selectedIds;

  @override
  void initState() {
    super.initState();
    selectedIds = {...widget.existingUpdateIds, ...widget.trackOnlyUpdateIds};
    if (widget.existingUpdateIds.isEmpty) {
      selectedIds.addAll(widget.newInstallIds);
    }
  }

  bool get allSelected => selectedIds.length == widget.totalApps;

  void _toggleAll() {
    setState(() {
      if (allSelected) {
        selectedIds.clear();
      } else {
        selectedIds = {
          ...widget.existingUpdateIds,
          ...widget.newInstallIds,
          ...widget.trackOnlyUpdateIds,
        };
      }
    });
  }

  Widget _sectionHeader(String label, List<String> ids, ColorScheme cs) {
    if (ids.isEmpty) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 4),
      child: Row(
        children: [
          const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: cs.primary,
            ),
          ),
          Text(
            ' (${ids.length})',
            style: TextStyle(fontSize: 12, color: cs.onSurfaceVariant),
          ),
        ],
      ),
    );
  }

  Widget _appCheckRow(String id, ColorScheme cs) {
    final aim = widget.apps[id];
    if (aim == null) return const SizedBox.shrink();
    final isNewInstall = aim.app.installedVersion == null;
    final isUpdate =
        aim.app.installedVersion != null &&
        aim.app.installedVersion != aim.app.latestVersion;
    final versionLabel = isUpdate
        ? '${aim.app.installedVersion} → ${aim.app.latestVersion}'
        : aim.app.latestVersion;
    return CheckboxListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 4, right: 4),
      visualDensity: VisualDensity.compact,
      value: selectedIds.contains(id),
      onChanged: (checked) {
        setState(() {
          if (checked == true) {
            selectedIds.add(id);
          } else {
            selectedIds.remove(id);
          }
        });
      },
      secondary: AppIcon(
        bytes: aim.icon,
        size: 36,
        radius: 8,
        dimmed: isNewInstall,
      ),
      title: Text(
        aim.name,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(fontSize: 14),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (aim.author.isNotEmpty)
            Text(
              tr('byX', args: [aim.author]),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12, color: cs.onSurfaceVariant),
            ),
          if (versionLabel.isNotEmpty)
            Text(
              versionLabel,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12, color: cs.onSurfaceVariant),
            ),
        ],
      ),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return AlertDialog(
      scrollable: true,
      title: Text(
        tr('changeX', args: [plural('apps', widget.totalApps).toLowerCase()]),
      ),
      content: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Checkbox(
                  value: allSelected,
                  tristate: selectedIds.isNotEmpty && !allSelected,
                  onChanged: (_) => _toggleAll(),
                  visualDensity: VisualDensity.compact,
                ),
                TextButton(
                  onPressed: _toggleAll,
                  child: Text(
                    allSelected
                        ? tr('deselectX', args: [widget.totalApps.toString()])
                        : tr('selectAll'),
                  ),
                ),
              ],
            ),
            _sectionHeader(tr('updates'), widget.existingUpdateIds, cs),
            ...widget.existingUpdateIds.map((id) => _appCheckRow(id, cs)),
            _sectionHeader(tr('nonInstalledApps'), widget.newInstallIds, cs),
            ...widget.newInstallIds.map((id) => _appCheckRow(id, cs)),
            if (widget.trackOnlyUpdateIds.isNotEmpty) ...[
              _sectionHeader(tr('trackOnly'), widget.trackOnlyUpdateIds, cs),
              ...widget.trackOnlyUpdateIds.map((id) => _appCheckRow(id, cs)),
            ],
          ],
        ),
      ),
      actions: [
        TextButton(
          autofocus: context.read<SettingsProvider>().isTV,
          onPressed: () {
            Navigator.of(context).pop(null);
          },
          child: Text(tr('cancel')),
        ),
        FilledButton(
          onPressed: selectedIds.isEmpty
              ? null
              : () {
                  context.read<SettingsProvider>().selectionClick();
                  Navigator.of(context).pop(selectedIds);
                },
          child: Text(tr('continue')),
        ),
      ],
    );
  }
}

class _TVSearchBar extends StatefulWidget {
  const _TVSearchBar({
    required this.controller,
    required this.onChanged,
    required this.trailing,
    required this.hintText,
  });

  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final List<Widget> trailing;
  final String hintText;

  @override
  State<_TVSearchBar> createState() => _TVSearchBarState();
}

class _TVSearchBarState extends State<_TVSearchBar> {
  final FocusNode _textFocus = FocusNode();

  @override
  void dispose() {
    _textFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TvTextFieldFocus(
          textFocusNode: _textFocus,
          borderRadius: 28,
          child: TextField(
            focusNode: _textFocus,
            controller: widget.controller,
            onChanged: widget.onChanged,
            decoration: InputDecoration(
              hintText: widget.hintText,
              prefixIcon: const Icon(Icons.search_rounded),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(28)),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: widget.trailing,
        ),
      ],
    );
  }
}
