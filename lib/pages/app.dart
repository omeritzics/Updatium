import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:updatium/components/button_helpers.dart';
import 'package:updatium/components/generated_form_modal.dart';
import 'package:updatium/custom_errors.dart';
import 'package:updatium/main.dart';
import 'package:updatium/pages/apps.dart';
import 'package:updatium/pages/settings.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:provider/provider.dart';
import 'package:markdown/markdown.dart' as md;

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
    // Consistent spacing constants
    const height2 = SizedBox(height: 2);
    const height8 = SizedBox(height: 8);
    const height10 = SizedBox(height: 10);
    const height24 = SizedBox(height: 24);
    const height32 = SizedBox(height: 32);
    const height85 = SizedBox(height: 85);

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
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: Column(
              children: [
                height32,
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
                          textAlign: TextAlign.center,
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
                height32,
              ],
            ),
          ),
          Text(
            infoLines,
            textAlign: TextAlign.center,
            style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
          ),
          if (app?.app.apkUrls.isNotEmpty == true ||
              app?.app.otherAssetUrls.isNotEmpty == true)
            GestureDetector(
              onTap: app?.app == null || updating
                  ? null
                  : () async {
                      try {
                        await appsProvider.downloadAppAssets([
                          app!.app.id,
                        ], context);
                      } catch (e) {
                        showError(e, context);
                      }
                    },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: settingsProvider.highlightTouchTargets
                          ? () {
                              bool usePureBlack =
                                  settingsProvider.useBlackTheme &&
                                  Theme.of(context).brightness ==
                                      Brightness.dark;
                              if (usePureBlack) {
                                return Colors.white.withValues(alpha: 0.16);
                              }
                              return (Theme.of(context).brightness ==
                                          Brightness.light
                                      ? Theme.of(context).primaryColor
                                      : Theme.of(context).primaryColorLight)
                                  .withAlpha(
                                    Theme.of(context).brightness ==
                                            Brightness.light
                                        ? 20
                                        : 40,
                                  );
                            }()
                          : null,
                    ),
                    padding: settingsProvider.highlightTouchTargets
                        ? const EdgeInsetsDirectional.fromSTEB(12, 6, 12, 6)
                        : const EdgeInsetsDirectional.fromSTEB(0, 2, 0, 2),
                    margin: const EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                    child: Text(
                      tr(
                        'downloadX',
                        args: [lowerCaseIfEnglish(tr('releaseAsset'))],
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        decoration: TextDecoration.underline,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
            ),

          /* Certificate Hashes */
          if (app != null && app.certificateHashes.isNotEmpty)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                height32,
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
                          horizontal: 25,
                          vertical: 0,
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

          height32,
          CategoryEditorSelector(
            alignment: WrapAlignment.center,
            preselected: app?.app.categories != null
                ? app!.app.categories.toSet()
                : {},
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
                height32,
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
        SizedBox(height: 0),
        if (app?.app != null)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.info_outline,
                color: Theme.of(context).colorScheme.primary,
                size: small ? 16 : 24,
              ),
            ],
          ),
        SizedBox(height: small ? 10 : 24),
        Text(
          app?.name ?? tr('app'),
          textAlign: TextAlign.center,
          style: small
              ? Theme.of(context).textTheme.titleLarge
              : Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          tr('byX', args: [app?.author ?? tr('unknown')]),
          textAlign: TextAlign.center,
          style: small
              ? Theme.of(context).textTheme.titleMedium
              : Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(height: settingsProvider.highlightTouchTargets ? 2 : 8),
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
            mainAxisAlignment: MainAxisAlignment.center,
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
                    ? const EdgeInsetsDirectional.fromSTEB(12, 6, 12, 6)
                    : const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                margin: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Tooltip(
                  message: app?.app.url ?? '',
                  child: Text(
                    app?.app.url ?? '',
                    textAlign: TextAlign.center,
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
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        getInfoColumn(),
        height85,
      ],
    );

    showMarkUpdatedDialog() {
      return showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: Text(tr('alreadyUpToDateQuestion')),
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
                  var updatedApp = app?.app;
                  if (updatedApp != null) {
                    updatedApp.installedVersion = updatedApp.latestVersion;
                    appsProvider.saveApps([updatedApp]);
                  }
                  Navigator.of(context).pop();
                },
                child: Text(tr('yesMarkUpdated')),
              ),
            ],
          );
        },
      );
    }

    showAdditionalOptionsDialog() async {
      return await showDialog<Map<String, dynamic>?>(
        context: context,
        builder: (BuildContext ctx) {
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

          return GeneratedFormModal(
            title: tr('additionalOptions'),
            items: items,
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

    getInstallOrUpdateButton() => AppTextButton(
      onPressed:
          !updating &&
              (app?.app.installedVersion == null ||
                  app?.app.installedVersion != app?.app.latestVersion) &&
              !areDownloadsRunning
          ? () async {
              try {
                var successMessage = app?.app.installedVersion == null
                    ? tr('installed')
                    : tr('appsUpdated');
                HapticFeedback.heavyImpact();
                var res = await appsProvider.downloadAndInstallLatestApps(
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
      child: Text(
        app?.app.installedVersion == null
            ? !trackOnly
                  ? tr('install')
                  : tr('markInstalled')
            : !trackOnly
            ? tr('update')
            : tr('markUpdated'),
      ),
    );

    getBottomSheetMenu() => Padding(
      padding: EdgeInsets.fromLTRB(
        16,
        8,
        16,
        MediaQuery.of(context).padding.bottom + 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (source != null &&
                    source.combinedAppSpecificSettingFormItems.isNotEmpty)
                  IconButton(
                    onPressed: app?.downloadProgress != null || updating
                        ? null
                        : () async {
                            var values = await showAdditionalOptionsDialog();
                            handleAdditionalOptionChanges(values);
                          },
                    tooltip: tr('additionalOptions'),
                    icon: const Icon(Icons.edit),
                  ),
                if (app?.app.installedVersion != null &&
                    app?.app.installedVersion != app?.app.latestVersion &&
                    !isVersionDetectionStandard &&
                    !trackOnly)
                  IconButton(
                    onPressed: app?.downloadProgress != null || updating
                        ? null
                        : showMarkUpdatedDialog,
                    tooltip: tr('markUpdated'),
                    icon: const Icon(Icons.done),
                  ),
                if ((!isVersionDetectionStandard || trackOnly) &&
                    app?.app.installedVersion != null &&
                    app?.app.installedVersion == app?.app.latestVersion)
                  IconButton(
                    onPressed: app?.app == null || updating
                        ? null
                        : () {
                            app!.app.installedVersion = null;
                            appsProvider.saveApps([app.app]);
                          },
                    icon: const Icon(Icons.restore_rounded),
                    tooltip: tr('resetInstallStatus'),
                  ),
                const SizedBox(width: 16.0),
                Expanded(child: getInstallOrUpdateButton()),
                const SizedBox(width: 16.0),
                IconButton(
                  onPressed: app?.downloadProgress != null || updating
                      ? null
                      : () {
                          appsProvider
                              .removeAppsWithModal(
                                context,
                                app != null ? [app.app] : [],
                              )
                              .then((value) {
                                if (value == true) {
                                  Navigator.of(context).pop();
                                }
                              });
                        },
                  tooltip: tr('remove'),
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
          ),
          if (app?.downloadProgress != null)
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: LinearProgressIndicator(
                value: app!.downloadProgress! >= 0
                    ? app.downloadProgress! / 100
                    : null,
              ),
            ),
        ],
      ),
    );

    appScreenAppBar() => AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );

    return Scaffold(
      appBar: appScreenAppBar(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: RefreshIndicator(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: Column(children: [getFullInfoColumn()])),
          ],
        ),
        onRefresh: () async {
          if (app != null) {
            getUpdate(app.app.id);
          }
        },
      ),
      bottomSheet: getBottomSheetMenu(),
    );
  }

  Widget _buildSimpleIcon(App app, double size) {
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
                  ? Colors.white.withOpacity(0.4)
                  : Colors.white.withOpacity(0.4),
              colorBlendMode: BlendMode.modulate,
              gaplessPlayback: true,
              errorBuilder: (context, error, stackTrace) {
                // Final fallback - colored container
                return Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Theme.of(
                      context,
                    ).colorScheme.primary.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.apps,
                    color: Theme.of(
                      context,
                    ).colorScheme.primary.withOpacity(0.6),
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
