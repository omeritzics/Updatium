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
      return showGeneratedFormModal(
        context: context,
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

  // Cache gradient stops by category count to avoid recomputation
  final Map<int, List<double>> _stopsCache = {};

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

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: RefreshIndicator(
        onRefresh: () async {
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
        },
        child: Scrollbar(
          interactive: true,
          controller: scrollController,
          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            controller: scrollController,
            padding: const EdgeInsets.all(16),
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
                            ? () {
                                // Show filter dialog
                              }
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
                    left: 24,
                    right: 80,
                    bottom: 20,
                  ),
                  title: Text(
                    tr('appsString'),
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyMedium!.color,
                    ),
                  ),
                ),
              ),
              if (listedApps.isEmpty && !appsProvider.loadingApps)
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.widgets,
                          size: 80,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        const SizedBox(height: 24),
                        Text(
                          appsProvider.apps.isEmpty
                              ? tr('noApps')
                              : tr('noAppsForFilter'),
                          style: Theme.of(context).textTheme.headlineMedium,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
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
                  ? Colors.white
                  : Colors.white,
              colorBlendMode: BlendMode.modulate,
              gaplessPlayback: true,
              errorBuilder: (context, error, stackTrace) {
                // Final fallback - colored container
                return Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.apps,
                    color: Theme.of(context).colorScheme.onPrimary,
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
