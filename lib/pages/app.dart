import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';

import 'package:updatium/main.dart';
import 'package:updatium/pages/apps.dart';
import 'package:updatium/pages/settings.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:provider/provider.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:updatium/components/generated_form.dart';

// Material 3 spacing tokens
const gap8 = SizedBox(height: 8);
const gap12 = SizedBox(height: 12);
const gap16 = SizedBox(height: 16);
const gap24 = SizedBox(height: 24);
const gap32 = SizedBox(height: 32);
const gap80 = SizedBox(height: 80);

const horizontalGap8 = SizedBox(width: 8);
const horizontalGap12 = SizedBox(width: 12);
const horizontalGap16 = SizedBox(width: 16);
const horizontalGap24 = SizedBox(width: 24);

class AppPage extends StatefulWidget {
  const AppPage({super.key, required this.appId});

  final String appId;

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  AppInMemory? prevApp;
  bool updating = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var appsProvider = context.watch<AppsProvider>();
    var settingsProvider = context.watch<SettingsProvider>();
    getUpdate(String id, {bool resetVersion = false}) async {
      try {
        setState(() {
          updating = true;
        });
        await appsProvider.checkUpdate(id);
        if (resetVersion) {
          appsProvider.apps[id]?.app.additionalSettings['versionDetection'] =
              true;
          if (appsProvider.apps[id]?.app.installedVersion != null) {
            appsProvider.apps[id]?.app.installedVersion =
                appsProvider.apps[id]?.app.latestVersion;
          }
          appsProvider.saveApps([appsProvider.apps[id]!.app]);
        }
      } catch (err) {
        // ignore: use_build_context_synchronously
        showError(err, context);
      } finally {
        setState(() {
          updating = false;
        });
      }
    }

    bool areDownloadsRunning = appsProvider.areDownloadsRunning();

    var sourceProvider = SourceProvider();
    AppInMemory? app = appsProvider.apps[widget.appId]?.deepCopy();
    var source = app != null
        ? sourceProvider.getSource(
            app.app.url,
            overrideSource: app.app.overrideSource,
          )
        : null;
    if (!areDownloadsRunning &&
        prevApp == null &&
        app != null &&
        settingsProvider.checkUpdateOnDetailPage) {
      prevApp = app;
      getUpdate(app.app.id);
    }
    var trackOnly = app?.app.additionalSettings['trackOnly'] == true;

    bool isVersionDetectionStandard =
        app?.app.additionalSettings['versionDetection'] == true;

    bool installedVersionIsEstimate = app?.app != null
        ? isVersionPseudo(app!.app)
        : false;

    getInfoColumn() {
      String versionLines = '';
      bool installed = app?.app.installedVersion != null;
      bool upToDate = app?.app.installedVersion == app?.app.latestVersion;
      if (installed) {
        versionLines = '${app?.app.installedVersion} ${tr('installed')}';
        if (upToDate) {
          versionLines += '/${tr('latest')}';
        }
      } else {
        versionLines = tr('notInstalled');
      }
      if (!upToDate) {
        versionLines += '\n${app?.app.latestVersion} ${tr('latest')}';
      }
      String infoLines = tr(
        'lastUpdateCheckX',
        args: [
          app?.app.lastUpdateCheck == null
              ? tr('never')
              : '${app?.app.lastUpdateCheck?.toLocal()}',
        ],
      );
      if (trackOnly) {
        infoLines = '${tr('xIsTrackOnly', args: [tr('app')])}\n$infoLines';
      }
      if (installedVersionIsEstimate) {
        infoLines = '${tr('pseudoVersionInUse')}\n$infoLines';
      }
      if ((app?.app.apkUrls.length ?? 0) > 0) {
        infoLines =
            '$infoLines\n${app?.app.apkUrls.length == 1 ? app?.app.apkUrls[0].key : plural('apk', app?.app.apkUrls.length ?? 0)}';
      }
      var changeLogFn = app != null ? getChangeLogFn(context, app.app) : null;
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            child: Column(
              children: [
                gap24,
                Text(
                  versionLines,
                  textAlign: TextAlign.start,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
                ),
                changeLogFn != null || app?.app.releaseDate != null
                    ? GestureDetector(
                        onTap: changeLogFn,
                        child: Text(
                          app?.app.releaseDate == null
                              ? tr('changes')
                              : app!.app.releaseDate!.toLocal().toString(),
                          textAlign: TextAlign.start,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.labelSmall!
                              .copyWith(
                                decoration: changeLogFn != null
                                    ? TextDecoration.underline
                                    : null,
                                fontStyle: changeLogFn != null
                                    ? FontStyle.italic
                                    : null,
                              ),
                        ),
                      )
                    : const SizedBox.shrink(),
                gap24,
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              infoLines,
              textAlign: TextAlign.start,
              style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
            ),
          ),


          /* Certificate Hashes */
          if (app != null && app.certificateHashes.isNotEmpty)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                gap24,
                Text(
                  "${plural('certificateHash', app.certificateHashes.length)}"
                  "${app.hasMultipleSigners ? " (${tr('multipleSigners')})" : ""}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 12),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: app.certificateHashes.map((hash) {
                    return GestureDetector(
                      onLongPress: () {
                        Clipboard.setData(ClipboardData(text: hash));
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(tr('copiedToClipboard'))),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 4,
                        ),
                        child: Text(
                          hash,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 12),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),

          gap24,
          CategorySelector(
            alignment: WrapAlignment.center,
            preselected: app?.app.categories?.toSet() ?? {},
            onSelected: (categories) {
              if (app != null) {
                app.app.categories = categories;
                appsProvider.saveApps([app.app]);
              }
            },
          ),
          if (app?.app.additionalSettings['about'] is String &&
              app?.app.additionalSettings['about'].isNotEmpty)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                gap24,
                GestureDetector(
                  onLongPress: () {
                    Clipboard.setData(
                      ClipboardData(
                        text: app?.app.additionalSettings['about'] ?? '',
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(tr('copiedToClipboard'))),
                    );
                  },
                  child: Markdown(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    styleSheet: MarkdownStyleSheet(
                      blockquoteDecoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                      ),
                      textAlign: WrapAlignment.center,
                    ),
                    data: app?.app.additionalSettings['about'],
                    onTapLink: (text, href, title) {
                      if (href != null) {
                        launchUrlString(
                          href,
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
              ],
            ),
        ],
      );
    }

    getFullInfoColumn({bool small = false}) => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: settingsProvider.highlightTouchTargets ? 4 : 8),
        GestureDetector(
          onTap: () {
            if (app?.app.url != null) {
              launchUrlString(
                app?.app.url ?? '',
                mode: LaunchMode.externalApplication,
              );
            }
          },
          onLongPress: () {
            Clipboard.setData(ClipboardData(text: app?.app.url ?? ''));
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(tr('copiedToClipboard'))));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: settingsProvider.highlightTouchTargets
                      ? () {
                          bool usePureBlack =
                              settingsProvider.useBlackTheme &&
                              Theme.of(context).brightness == Brightness.dark;
                          if (usePureBlack) {
                            return Colors.white.withValues(alpha: 0.16);
                          }
                          return (Theme.of(context).brightness ==
                                      Brightness.light
                                  ? Theme.of(context).primaryColor
                                  : Theme.of(context).primaryColorLight)
                              .withAlpha(
                                Theme.of(context).brightness == Brightness.light
                                    ? 20
                                    : 40,
                              );
                        }()
                      : null,
                ),
                padding: settingsProvider.highlightTouchTargets
                    ? const EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8)
                    : const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                margin: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                child: Tooltip(
                  message: app?.app.url ?? '',
                  child: Text(
                    app?.app.url ?? '',
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      decoration: TextDecoration.underline,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Text(
          app?.app.id ?? '',
          textAlign: TextAlign.start,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        getInfoColumn(),
        // Extra bottom padding to clear the floating toolbar + FAB
        const SizedBox(height: 120),
      ],
    );

    showAdditionalOptionsDialog() async {
      return await showDialog<Map<String, dynamic>?>(
        context: context,
        builder: (BuildContext ctx) {
          Map<String, dynamic> localValues = {};
          var items = (source?.combinedAppSpecificSettingFormItems ?? []).map((
            row,
          ) {
            row = row.map((e) {
              if (app?.app.additionalSettings[e.key] != null) {
                e.defaultValue = app?.app.additionalSettings[e.key];
              }
              return e;
            }).toList();
            return row;
          }).toList();

          return AlertDialog(
            scrollable: true,
            title: Text(tr('additionalOptions')),
            content: GeneratedForm(
              items: items,
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
      );
    }

    handleAdditionalOptionChanges(Map<String, dynamic>? values) {
      if (app != null && values != null) {
        Map<String, dynamic> originalSettings = app.app.additionalSettings;
        app.app.additionalSettings = values;
        if (source?.enforceTrackOnly == true) {
          app.app.additionalSettings['trackOnly'] = true;
          // ignore: use_build_context_synchronously
          showMessage(tr('appsFromSourceAreTrackOnly'), context);
        }
        var versionDetectionEnabled =
            app.app.additionalSettings['versionDetection'] == true &&
            originalSettings['versionDetection'] != true;
        var releaseDateVersionEnabled =
            app.app.additionalSettings['releaseDateAsVersion'] == true &&
            originalSettings['releaseDateAsVersion'] != true;
        var releaseDateVersionDisabled =
            app.app.additionalSettings['releaseDateAsVersion'] != true &&
            originalSettings['releaseDateAsVersion'] == true;
        if (releaseDateVersionEnabled) {
          if (app.app.releaseDate != null) {
            bool isUpdated = app.app.installedVersion == app.app.latestVersion;
            app.app.latestVersion = app.app.releaseDate!.microsecondsSinceEpoch
                .toString();
            if (isUpdated) {
              app.app.installedVersion = app.app.latestVersion;
            }
          }
        } else if (releaseDateVersionDisabled) {
          app.app.installedVersion =
              app.installedInfo?.versionName ?? app.app.installedVersion;
        }
        if (versionDetectionEnabled) {
          app.app.additionalSettings['versionDetection'] = true;
          app.app.additionalSettings['releaseDateAsVersion'] = false;
        }
        appsProvider.saveApps([app.app]).then((value) {
          getUpdate(app.app.id, resetVersion: versionDetectionEnabled);
        });
      }
    }



    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ── Floating Toolbar pill (secondary actions) ──────────────────
          Card(
            elevation: 3,
            shape: const StadiumBorder(),
            color: Theme.of(context).colorScheme.surfaceContainerHigh,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Check for update
                  IconButton(
                    icon: updating
                        ? SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          )
                        : const Icon(Icons.refresh),
                    tooltip: tr('checkForUpdate'),
                    onPressed:
                        updating || areDownloadsRunning || app == null
                            ? null
                            : () => getUpdate(app.app.id),
                  ),
                  // Additional options (conditional)
                  if (source != null &&
                      source
                          .combinedAppSpecificSettingFormItems
                          .isNotEmpty)
                    IconButton(
                      icon: const Icon(Icons.tune),
                      tooltip: tr('additionalOptions'),
                      onPressed: updating
                          ? null
                          : () => showAdditionalOptionsDialog().then(
                                handleAdditionalOptionChanges,
                              ),
                    ),
                  // Download assets (conditional)
                  if (app?.app.apkUrls.isNotEmpty == true ||
                      app?.app.otherAssetUrls.isNotEmpty == true)
                    IconButton(
                      icon: const Icon(Icons.file_download_outlined),
                      tooltip: tr(
                        'downloadX',
                        args: [lowerCaseIfEnglish(tr('releaseAsset'))],
                      ),
                      onPressed: app?.app == null || updating
                          ? null
                          : () async {
                              try {
                                await appsProvider.downloadAppAssets(
                                  [app!.app.id],
                                  context,
                                );
                              } catch (e) {
                                showError(e, context);
                              }
                            },
                    ),
                  // Remove (conditional)
                  if (app?.app.installedVersion != null &&
                      app?.app.installedVersion != app?.app.latestVersion &&
                      !isVersionDetectionStandard &&
                      !trackOnly)
                    IconButton(
                      icon: const Icon(Icons.delete_outline),
                      tooltip: tr('remove'),
                      color: Theme.of(context).colorScheme.error,
                      onPressed: updating
                          ? null
                          : () => appsProvider
                                .removeAppsWithModal(
                                  context,
                                  app != null ? [app.app] : [],
                                )
                                .then((result) {
                                  if (result == true) {
                                    Navigator.of(context).pop();
                                  }
                                }),
                    ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 16),
          // ── FAB – primary action (Install / Update) ────────────────────
          FloatingActionButton.extended(
            heroTag: 'app_details_fab',
            onPressed:
                !updating &&
                    (app?.app.installedVersion == null ||
                        app?.app.installedVersion !=
                            app?.app.latestVersion) &&
                    !areDownloadsRunning
                    ? () async {
                        try {
                          var successMessage =
                              app?.app.installedVersion == null
                                  ? tr('installed')
                                  : tr('appsUpdated');
                          HapticFeedback.heavyImpact();
                          var res = await appsProvider
                              .downloadAndInstallLatestApps(
                            app?.app.id != null ? [app!.app.id] : [],
                            globalNavigatorKey.currentContext,
                          );
                          if (res.isNotEmpty && !trackOnly) {
                            // ignore: use_build_context_synchronously
                            showMessage(successMessage, context);
                          }
                          if (res.isNotEmpty && mounted) {
                            Navigator.of(context).pop();
                          }
                        } catch (e) {
                          // ignore: use_build_context_synchronously
                          showError(e, context);
                        }
                      }
                    : null,
            icon: Icon(
              app?.app.installedVersion == null
                  ? Icons.install_mobile
                  : Icons.system_update,
            ),
            label: Text(
              app?.app.installedVersion == null
                  ? !trackOnly
                        ? tr('install')
                        : tr('markInstalled')
                  : !trackOnly
                  ? tr('update')
                  : tr('markUpdated'),
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        child: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              pinned: true,
              title: Row(
                children: [
                  if (app != null)
                    Consumer<AppsProvider>(
                      builder: (ctx, appsProvider, child) {
                        final appInMemory = appsProvider.apps[app.app.id];

                        if (appInMemory?.icon != null) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: Image.memory(
                              appInMemory!.icon!,
                              width: 40,
                              height: 40,
                              gaplessPlayback: true,
                              errorBuilder: (context, error, stackTrace) {
                                return Icon(
                                  Icons.apps,
                                  size: 40,
                                  color: Theme.of(context).colorScheme.primary,
                                );
                              },
                            ),
                          );
                        }

                        // Load icon asynchronously if not available
                        return FutureBuilder(
                          future: appsProvider.updateAppIcon(app.app.id),
                          builder: (ctx, snapshot) {
                            final updatedAppInMemory =
                                appsProvider.apps[app.app.id];

                            if (updatedAppInMemory?.icon != null) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 12.0),
                                child: Image.memory(
                                  updatedAppInMemory!.icon!,
                                  width: 40,
                                  height: 40,
                                  gaplessPlayback: true,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Icon(
                                      Icons.apps,
                                      size: 40,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.primary,
                                    );
                                  },
                                ),
                              );
                            }

                            // Fallback icon while loading
                            return Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Icon(
                                Icons.apps,
                                size: 40,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            );
                          },
                        );
                      },
                    ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(app?.name ?? tr('app')),
                        if (app?.author != null)
                          Text(
                            'By ${app?.author}',
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onSurfaceVariant,
                                ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  getFullInfoColumn(),
                  if (app?.downloadProgress != null)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                      child: LinearProgressIndicator(
                        value: app!.downloadProgress! >= 0
                            ? app.downloadProgress! / 100
                            : null,
                        backgroundColor: Theme.of(
                          context,
                        ).colorScheme.surfaceContainerHighest,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
        onRefresh: () async {
          if (app != null) {
            getUpdate(app.app.id);
          }
        },
      ),
    );
  }
}
