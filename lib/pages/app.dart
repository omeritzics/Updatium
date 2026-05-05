import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:expressive_refresh/expressive_refresh.dart';
import 'package:simple_localization/simple_localization.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:m3_floating_toolbar/m3_floating_toolbar.dart';
import 'package:m3_floating_toolbar/m3_floating_toolbar_action.dart';

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

enum AppAddFlowType { none, search, url }

class AppPage extends StatefulWidget {
  const AppPage({
    super.key,
    required this.appId,
    this.flowType = AppAddFlowType.none,
  });

  final String appId;
  final AppAddFlowType flowType;

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  AppInMemory? prevApp;
  bool updating = false;
  bool _iconRequested = false;
  Future<void>? _iconFuture;

  @override
  void initState() {
    super.initState();
  }

  Future<void> getUpdate(String id, {bool resetVersion = false}) async {
    var appsProvider = context.read<AppsProvider>();
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

  @override
  Widget build(BuildContext context) {
    var appsProvider = context.watch<AppsProvider>();
    var settingsProvider = context.watch<SettingsProvider>();

    bool areDownloadsRunning = appsProvider.areDownloadsRunning();

    var sourceProvider = SourceProvider();
    AppInMemory? app = appsProvider.apps[widget.appId]?.deepCopy();
    var source = app != null
        ? sourceProvider.getSource(
            app.app.url,
            overrideSource: app.app.overrideSource,
          )
        : null;

    // Handle null app case - show loading or error
    if (app == null) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (appsProvider.loadingApps)
                const CircularProgressIndicator()
              else
                Column(
                  children: [
                    Icon(
                      Icons.error_outline,
                      size: 64,
                      color: Theme.of(context).colorScheme.error,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      tr('appNotFound'),
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.appId,
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
            ],
          ),
        ),
      );
    }
    if (!areDownloadsRunning &&
        prevApp == null &&
        settingsProvider.checkUpdateOnDetailPage) {
      prevApp = app;
      getUpdate(app.app.id);
    }
    var trackOnly = app.app.additionalSettings['trackOnly'] == true;

    bool installedVersionIsEstimate = isVersionPseudo(app.app);

    getInfoColumn() {
      String versionLines = '';
      bool installed = app.app.installedVersion != null;
      versionLines = '${tr('latestVersion')}: ${app.app.latestVersion}';
      if (installed) {
        versionLines +=
            '\n${tr('installedVersion')}: ${app.app.installedVersion}';
      }
      String infoLines = tr(
        'lastUpdateCheckX',
        args: [
          app.app.lastUpdateCheck == null
              ? tr('never')
              : '${app.app.lastUpdateCheck?.toLocal()}',
        ],
      );
      if (trackOnly) {
        infoLines = '${tr('xIsTrackOnly', args: [tr('app')])}\n$infoLines';
      }
      if (installedVersionIsEstimate) {
        infoLines = '${tr('pseudoVersionInUse')}\n$infoLines';
      }
      if (app.app.apkUrls.length > 0) {
        infoLines =
            '$infoLines\n${app.app.apkUrls.length == 1 ? app.app.apkUrls[0].key : plural('apk', app.app.apkUrls.length)}';
      }
      var changeLogFn = getChangeLogFn(context, app.app);
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gap24,
              Text(
                versionLines,
                textAlign: TextAlign.start,
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
              ),
              changeLogFn != null || app.app.releaseDate != null
                  ? GestureDetector(
                      onTap: changeLogFn,
                      child: Text(
                        app.app.releaseDate == null
                            ? tr('changes')
                            : app.app.releaseDate!.toLocal().toString(),
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          decoration: changeLogFn != null
                              ? TextDecoration.underline
                              : null,
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
              gap24,
            ],
          ),
          Text(
            infoLines,
            textAlign: TextAlign.start,
            style: const TextStyle(fontSize: 12),
          ),

          /* Certificate Hashes */
          if (app.certificateHashes.isNotEmpty)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                gap24,
                Text(
                  "${plural('certificateHash', app.certificateHashes.length)}:"
                  "${app.hasMultipleSigners ? " (${tr('multipleSigners')})" : ""}",
                  textAlign: TextAlign.start,
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
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          hash,
                          textAlign: TextAlign.start,
                          style: const TextStyle(fontSize: 12),
                          maxLines: 3,
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
            alignment: WrapAlignment.start,
            preselected: app.app.categories?.toSet() ?? {},
            onSelected: (categories) {
              app.app.categories = categories;
              appsProvider.saveApps([app.app]);
            },
          ),
          if (app.app.additionalSettings['about'] is String &&
              app.app.additionalSettings['about'].isNotEmpty)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                gap24,
                GestureDetector(
                  onLongPress: () {
                    Clipboard.setData(
                      ClipboardData(
                        text: app.app.additionalSettings['about'] ?? '',
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
                      textAlign: WrapAlignment.start,
                    ),
                    data: app.app.additionalSettings['about'],
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
            launchUrlString(app.app.url, mode: LaunchMode.externalApplication);
          },
          onLongPress: () {
            Clipboard.setData(ClipboardData(text: app.app.url));
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
                              .withValues(
                                alpha:
                                    Theme.of(context).brightness ==
                                        Brightness.light
                                    ? 20 / 255
                                    : 40 / 255,
                              );
                        }()
                      : null,
                ),
                child: Tooltip(
                  message: app.app.url,
                  child: Text(
                    app.app.url,
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 4),
        Text(
          app.app.id,
          textAlign: TextAlign.start,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        getInfoColumn(),
        // Extra bottom padding to clear the docked toolbar
        const SizedBox(height: 96),
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
              if (app.app.additionalSettings[e.key] != null) {
                e.defaultValue = app.app.additionalSettings[e.key];
              }
              return e;
            }).toList();
            return row;
          }).toList();

          return Dialog.fullscreen(
            child: Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(ctx).pop(null),
                ),
                title: Text(tr('editApp')),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(ctx).pop(null),
                    child: Text(tr('cancel')),
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(ctx).pop(localValues),
                    child: Text(tr('save')),
                  ),
                ],
              ),
              body: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tr('basicInfo'),
                      style: Theme.of(ctx).textTheme.titleSmall?.copyWith(
                        color: Theme.of(ctx).colorScheme.primary,
                      ),
                    ),
                    gap16,
                    GeneratedForm(
                      items: [
                        [
                          GeneratedFormTextField(
                            'appName',
                            label: tr('appName'),
                            defaultValue: app.app.name,
                            required: true,
                          ),
                        ],
                        [
                          GeneratedFormTextField(
                            'appAuthor',
                            label: tr('appAuthor'),
                            defaultValue: app.app.author,
                            required: true,
                          ),
                        ],
                        [
                          GeneratedFormTextField(
                            'appId',
                            label: tr('appId'),
                            defaultValue: app.app.id,
                            required: true,
                            additionalValidators: [
                              (value) {
                                if (value == null || value.isEmpty) {
                                  return tr('required');
                                }
                                final isValid = RegExp(
                                  r'^([A-Za-z]{1}[A-Za-z\d_]*\.)+[A-Za-z][A-Za-z\d_]*$',
                                ).hasMatch(value);
                                if (!isValid) {
                                  return tr('invalidInput');
                                }
                                return null;
                              },
                            ],
                          ),
                        ],
                        [
                          GeneratedFormTextField(
                            'appSourceURL',
                            label: tr('appSourceURL'),
                            defaultValue: app.app.url,
                            required: true,
                          ),
                        ],
                        [
                          GeneratedFormSwitch(
                            'pinned',
                            label: tr('pinned'),
                            defaultValue: app.app.pinned,
                          ),
                        ],
                      ],
                      onValueChanges: (vals, valid, isBuilding) {
                        localValues.addAll(vals);
                      },
                    ),
                    gap24,
                    Text(
                      tr('sourceOptions'),
                      style: Theme.of(ctx).textTheme.titleSmall?.copyWith(
                        color: Theme.of(ctx).colorScheme.primary,
                      ),
                    ),
                    gap16,
                    GeneratedForm(
                      items: items,
                      onValueChanges: (vals, valid, isBuilding) {
                        localValues.addAll(vals);
                      },
                    ),
                    gap24,
                    Text(
                      tr('categories'),
                      style: Theme.of(ctx).textTheme.titleSmall?.copyWith(
                        color: Theme.of(ctx).colorScheme.primary,
                      ),
                    ),
                    gap16,
                    CategorySelector(
                      alignment: WrapAlignment.start,
                      preselected: app.app.categories?.toSet() ?? {},
                      onSelected: (categories) {
                        localValues['categories'] = categories;
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    }

    handleAdditionalOptionChanges(Map<String, dynamic>? values) {
      if (values != null) {
        // Handle basic app info changes
        if (values['appName'] != null) {
          app.app.name = values['appName'];
        }
        if (values['appAuthor'] != null) {
          app.app.author = values['appAuthor'];
        }
        if (values['appId'] != null && values['appId'] != app.app.id) {
          // ID change requires special handling - need to update the map key
          var newId = values['appId'] as String;
          if (!appsProvider.apps.containsKey(newId)) {
            app.app.id = newId;
            app.app.allowIdChange = true;
          }
        }
        if (values['appSourceURL'] != null) {
          app.app.url = values['appSourceURL'];
        }
        if (values['pinned'] != null) {
          app.app.pinned = values['pinned'] == true;
        }
        if (values['categories'] != null) {
          app.app.categories = values['categories'] as List<String>;
        }

        // Handle additional settings
        Map<String, dynamic> originalSettings = Map.from(
          app.app.additionalSettings,
        );
        var sourceItems = source?.combinedAppSpecificSettingFormItems ?? [];
        for (var row in sourceItems) {
          for (var item in row) {
            if (values[item.key] != null) {
              app.app.additionalSettings[item.key] = values[item.key];
            }
          }
        }

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

    getInstallOrUpdateButton() => FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
      onPressed:
          !updating &&
              (app.app.installedVersion == null ||
                  app.app.installedVersion != app.app.latestVersion) &&
              !areDownloadsRunning
          ? () async {
              try {
                var successMessage = app.app.installedVersion == null
                    ? tr('installed')
                    : tr('appsUpdated');
                HapticFeedback.heavyImpact();
                var res = await appsProvider.downloadAndInstallLatestApps([
                  app.app.id,
                ], globalNavigatorKey.currentContext);
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
        app.app.installedVersion == null
            ? !trackOnly
                  ? tr('install')
                  : tr('markInstalled')
            : !trackOnly
            ? tr('update')
            : tr('markUpdated'),
      ),
    );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Stack(
          children: [
            ExpressiveRefreshIndicator(
              onRefresh: () async {
                await getUpdate(app.app.id);
              },
              child: CustomScrollView(
                slivers: [
                  SliverAppBar.large(
                    pinned: true,
                    title: Row(
                      children: [
                        Consumer<AppsProvider>(
                          builder: (ctx, appsProvider, child) {
                            final appInMemory = appsProvider.apps[app.app.id];

                            if (appInMemory?.icon != null) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8.0,
                                ),
                                child: Image.memory(
                                  appInMemory!.icon!,
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

                            // Load icon asynchronously if not available
                            if (!_iconRequested) {
                              _iconRequested = true;
                              _iconFuture = appsProvider.updateAppIcon(
                                app.app.id,
                              );
                            }
                            return FutureBuilder(
                              future: _iconFuture,
                              builder: (ctx, snapshot) {
                                final updatedAppInMemory =
                                    appsProvider.apps[app.app.id];

                                if (updatedAppInMemory?.icon != null) {
                                  return Padding(
                                    padding: EdgeInsets.zero,
                                    child: Image.memory(
                                      updatedAppInMemory!.icon!,
                                      width: 40,
                                      height: 40,
                                      gaplessPlayback: true,
                                      errorBuilder:
                                          (context, error, stackTrace) {
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
                                  padding: EdgeInsets.zero,
                                  child: Icon(
                                    Icons.apps,
                                    size: 40,
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        horizontalGap16,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(app.name),
                              Text(
                                tr('byX', args: [app.author]),
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
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(child: getInstallOrUpdateButton()),
                            ],
                          ),
                        ),
                        if (app.downloadProgress != null)
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              bottom: 32,
                            ),
                            child: Semantics(
                              label: tr('downloadProgress'),
                              value: '${app.downloadProgress!.toInt()}%',
                              child: LinearProgressIndicator(
                                value: app.downloadProgress! >= 0
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
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 16,
              child: Align(
                alignment: Alignment.center,
                child: M3FloatingToolbar(
                  actions: [
                    if (app.app.installedVersion != null)
                      M3FloatingToolbarAction(
                        icon: Icons.open_in_new,
                        semanticLabel: tr('open'),
                        tooltip: tr('open'),
                        onPressed: () {
                          pm.openApp(app.app.id);
                        },
                      ),
                    if (!updating &&
                        source != null &&
                        source.combinedAppSpecificSettingFormItems.isNotEmpty)
                      M3FloatingToolbarAction(
                        icon: Icons.edit,
                        semanticLabel: tr('additionalOptions'),
                        tooltip: tr('additionalOptions'),
                        onPressed: () {
                          showAdditionalOptionsDialog().then(
                            handleAdditionalOptionChanges,
                          );
                        },
                      ),
                    if (!updating &&
                        (app.app.apkUrls.isNotEmpty == true ||
                            app.app.otherAssetUrls.isNotEmpty == true))
                      M3FloatingToolbarAction(
                        icon: Icons.archive,
                        semanticLabel: tr(
                          'downloadX',
                          args: [lowerCaseIfEnglish(tr('releaseAsset'))],
                        ),
                        tooltip: tr(
                          'downloadX',
                          args: [lowerCaseIfEnglish(tr('releaseAsset'))],
                        ),
                        onPressed: () async {
                          try {
                            await appsProvider.downloadAppAssets([
                              app.app.id,
                            ], context);
                          } catch (e) {
                            showError(e, context);
                          }
                        },
                      ),
                    M3FloatingToolbarAction(
                      icon: Icons.delete,
                      semanticLabel: tr('remove'),
                      tooltip: tr('remove'),
                      onPressed: () async {
                        final removedApps = await appsProvider
                            .removeAppsWithModal(context, [app.app]);
                        if (removedApps != null && removedApps.isNotEmpty) {
                          if (mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(tr('appRemoved')),
                                action: SnackBarAction(
                                  label: tr('undo'),
                                  onPressed: () {
                                    appsProvider.undoRestoreApps(removedApps);
                                  },
                                ),
                              ),
                            );
                            Navigator.of(context).pop();
                          }
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
