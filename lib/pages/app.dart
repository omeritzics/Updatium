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
    // Material 3 spacing constants (4dp grid system)
    const height24 = SizedBox(height: 24);
    const height80 = SizedBox(height: 80);

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
                height24,
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
                height24,
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
                mainAxisAlignment: MainAxisAlignment.start,
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
                        ? const EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8)
                        : const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                    margin: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
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
                height24,
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

          height24,
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
                height24,
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
        height80,
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

    getInstallOrUpdateButton() => Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Main action button (left side)
        Expanded(
          flex: 4,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
              elevation: 2,
              shadowColor: Theme.of(context).colorScheme.shadow,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
            ),
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
          ),
        ),
        // Visual divider
        Container(
          width: 1,
          height: 40,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.outline,
          ),
        ),
        // Dropdown menu button (right side)
        Container(
          width: 48,
          height: 48,
          child: PopupMenuButton<String>(
            icon: Icon(
              Icons.arrow_drop_down,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
              elevation: 2,
              shadowColor: Theme.of(context).colorScheme.shadow,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              padding: EdgeInsets.zero,
              minimumSize: const Size(48, 48),
            ),
            enabled: !updating,
            onSelected: (String value) async {
              switch (value) {
                case 'check_update':
                  if (app != null) {
                    getUpdate(app.app.id);
                  }
                  break;
                case 'additional_options':
                  if (source != null &&
                      source.combinedAppSpecificSettingFormItems.isNotEmpty) {
                    showAdditionalOptionsDialog().then(
                      handleAdditionalOptionChanges,
                    );
                  }
                  break;
                case 'download_assets':
                  if (app?.app == null || updating) {
                    return;
                  }
                  try {
                    await appsProvider.downloadAppAssets([
                      app!.app.id,
                    ], context);
                  } catch (e) {
                    showError(e, context);
                  }
                  break;
                case 'remove':
                  if (app?.app.installedVersion != null &&
                      app?.app.installedVersion != app?.app.latestVersion &&
                      !isVersionDetectionStandard &&
                      !trackOnly) {
                    appsProvider
                        .removeAppsWithModal(
                          context,
                          app != null ? [app.app] : [],
                        )
                        .then((result) {
                          if (result == true) {
                            Navigator.of(context).pop();
                          }
                        });
                  }
                  break;
              }
            },
            itemBuilder: (BuildContext context) => [
              if (source != null &&
                  source.combinedAppSpecificSettingFormItems.isNotEmpty)
                PopupMenuItem<String>(
                  value: 'additional_options',
                  child: Row(
                    children: [
                      const Icon(Icons.edit),
                      const SizedBox(width: 8),
                      Text(tr('additionalOptions')),
                    ],
                  ),
                ),
              if (app?.app.apkUrls.isNotEmpty == true ||
                  app?.app.otherAssetUrls.isNotEmpty == true)
                PopupMenuItem<String>(
                  value: 'download_assets',
                  child: Row(
                    children: [
                      const Icon(Icons.file_download),
                      const SizedBox(width: 8),
                      Text(
                        tr(
                          'downloadX',
                          args: [lowerCaseIfEnglish(tr('releaseAsset'))],
                        ),
                      ),
                    ],
                  ),
                ),
              if (app?.app.installedVersion != null &&
                  app?.app.installedVersion != app?.app.latestVersion &&
                  !isVersionDetectionStandard &&
                  !trackOnly)
                PopupMenuItem<String>(
                  value: 'remove',
                  child: Row(
                    children: [
                      const Icon(Icons.delete),
                      const SizedBox(width: 8),
                      Text(tr('remove')),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ],
    );

    
    return Scaffold(
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
                              width: 32,
                              height: 32,
                              gaplessPlayback: true,
                              errorBuilder: (context, error, stackTrace) {
                                return Icon(
                                  Icons.apps,
                                  size: 32,
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
                                  width: 32,
                                  height: 32,
                                  gaplessPlayback: true,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Icon(
                                      Icons.apps,
                                      size: 32,
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
                                size: 32,
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 16.0),
                        Expanded(child: getInstallOrUpdateButton()),
                        const SizedBox(width: 16.0),
                      ],
                    ),
                  ),
                  if (app?.downloadProgress != null)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
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
