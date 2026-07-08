import 'package:flutter/material.dart';
import 'package:m3e_buttons/m3e_buttons.dart';
import 'package:flutter/services.dart';
import 'package:expressive_refresh/expressive_refresh.dart';
import 'package:http/http.dart' as http;

import 'package:updatium/services/slang_converter.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:m3_floating_toolbar/m3_floating_toolbar.dart';
import 'package:m3_floating_toolbar/m3_floating_toolbar_action.dart';
import 'package:updatium/main.dart';
import 'package:updatium/pages/apps.dart';
import 'package:updatium/pages/settings.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:obtainium/providers/notifications_provider.dart';
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

Widget buildRepoRenameWarning({
    required AppInMemory? app,
    required AppsProvider appsProvider,
    required Future<void> Function(String id) onUpdate,
  }) {
    if (app?.app.hasPendingRepoRename != true) {
      return const SizedBox.shrink();
    }
    var appValue = app!;
    var pendingUrl = appValue.app.pendingRepoRenameUrl!;
    final colorScheme = ColorScheme.of(context);
    final textTheme = TextTheme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 2,
      children: [
        Material(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(16),
              bottom: Radius.circular(4),
            ),
          ),
          color: colorScheme.surfaceContainer,
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 48),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                spacing: 12,
                children: [
                  Icon(
                    Icons.info_outline_rounded,
                    size: 24,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          tr('repoRenamed'),
                          style: textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: colorScheme.onSurface,
                          ),
                        ),
                        Text(
                          tr('repoRenamedExplanation'),
                          style: textTheme.bodyMedium?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Material(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          color: colorScheme.surfaceContainer,
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 48),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                spacing: 12,
                children: [
                  Icon(
                    Icons.link_rounded,
                    size: 24,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          tr('newUrl'),
                          style: textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: colorScheme.onSurface,
                          ),
                        ),
                        Text(
                          pendingUrl,
                          style: textTheme.bodyMedium?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Material(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(4),
              bottom: Radius.circular(16),
            ),
          ),
          color: colorScheme.surfaceContainer,
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 48),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                // Min tap target has a height of 48dp
                vertical: 10 - 4,
              ),
              child: Row(
                spacing: 12,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.fromMap({
                          WidgetState.disabled: colorScheme.onSurface
                              .withValues(alpha: 0.10),
                          WidgetState.any: Colors.transparent,
                        }),
                        side: WidgetStatePropertyAll(
                          BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignInside,
                            color: colorScheme.outlineVariant,
                          ),
                        ),
                        elevation: WidgetStatePropertyAll(0),
                        overlayColor: WidgetStateProperty.fromMap({
                          WidgetState.disabled: colorScheme.onSurfaceVariant
                              .withAlpha(0),
                          WidgetState.pressed: colorScheme.onSurfaceVariant
                              .withValues(alpha: 0.10),
                          WidgetState.focused: colorScheme.onSurfaceVariant
                              .withValues(alpha: 0.10),
                          WidgetState.hovered: colorScheme.onSurfaceVariant
                              .withValues(alpha: 0.08),
                          WidgetState.any: colorScheme.onSurfaceVariant
                              .withAlpha(0),
                        }),
                        foregroundColor: WidgetStateProperty.fromMap({
                          WidgetState.disabled: colorScheme.onSurface
                              .withValues(alpha: 0.38),
                          WidgetState.any: colorScheme.onSurfaceVariant,
                        }),
                        textStyle: WidgetStatePropertyAll(textTheme.labelLarge),
                      ),
                      onPressed: () async {
                        await appsProvider.updatePendingRepoRename(
                          appValue.app.id,
                          null,
                        );
                      },
                      child: Text(tr('dismiss')),
                    ),
                  ),
                  Expanded(
                    child: FilledButton.tonal(
                      style: ButtonStyle(
                        elevation: WidgetStatePropertyAll(0),
                        textStyle: WidgetStatePropertyAll(
                          textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      onPressed: () async {
                        await appsProvider.acceptRepoRename(
                          appValue.app.id,
                          pendingUrl,
                        );
                        if (mounted) {
                          onUpdate(appValue.app.id);
                        }
                      },
                      child: Text(tr('updateUrl')),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    // Fetch APK file size when the app is loaded
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _fetchApkFileSize();
    });
  }

  Future<void> _fetchApkFileSize() async {
    if (!mounted) return;
    var appsProvider = context.read<AppsProvider>();
    AppInMemory? app = appsProvider.apps[widget.appId];
    if (app != null && app.app.apkUrls.isNotEmpty) {
      final idx =
          (app.app.preferredApkIndex >= 0 &&
              app.app.preferredApkIndex < app.app.apkUrls.length)
          ? app.app.preferredApkIndex
          : 0;
      final size = await getApkFileSize(app.app.apkUrls[idx].value);
      if (mounted) {
        setState(() {
          _apkFileSize = size;
        });
      }
    }
  }

  Future<int?> getApkFileSize(String url) async {
    try {
      final updatiumInfo = await getInstalledInfo(updatiumId, printErr: false);
      final userAgent = 'Updatium/${updatiumInfo?.versionName ?? '1.0.0'}';
      final response = await http
          .get(
            Uri.parse(url),
            headers: {'User-Agent': userAgent, 'Range': 'bytes=0-0'},
          )
          .timeout(const Duration(seconds: 5));

      if (response.statusCode == 206) {
        final contentRange = response.headers['content-range'];
        if (contentRange != null) {
          final parts = contentRange.split('/');
          if (parts.length == 2) {
            final size = int.tryParse(parts[1]);
            if (size != null && size > 10240) {
              return size;
            }
          }
        }
      } else if (response.statusCode == 200) {
        final contentLength = response.headers['content-length'];
        if (contentLength != null) {
          final size = int.tryParse(contentLength);
          if (size != null && size > 10240) {
            return size;
          }
        }
      }
    } catch (e) {}
    return null;
  }

  String formatFileSize(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    if (bytes < 1024 * 1024 * 1024) {
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    }
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
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

    // Refresh APK size when preferred APK index changes
    if (app != null && _prevPreferredApkIndex != app.app.preferredApkIndex) {
      _prevPreferredApkIndex = app.app.preferredApkIndex;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _fetchApkFileSize();
      });
    }

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
                      'appNotFound'.t(),
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
      versionLines = '${'latestVersion'.t()}: ${app.app.latestVersion}';
      if (installed) {
        versionLines +=
            '\n${'installedVersion'.t()}: ${app.app.installedVersion}';
        if (installed && installedVersionIsEstimate) {
          versionLines += ' (${tr('pseudoVersionInUse').toLowerCase()})';
        }
      }
      final lastUpdateCheck = app?.app.lastUpdateCheck?.toLocal();
      String infoLines = t(
        'lastUpdateCheckX',
        args: [
          lastUpdateCheck == null
              ? tr('never')
              : lastUpdateCheck.toString().split('.').first,
        ],
      );
      if (trackOnly) {
        infoLines = '${t('xIsTrackOnly', args: ['app'.t()])}\n$infoLines';
      }
      if (installedVersionIsEstimate) {
        infoLines = '${'pseudoVersionInUse'.t()}\n$infoLines';
      }
      if ((app?.app.apkUrls.length ?? 0) > 0) {
        infoLines =
            '$infoLines\n${app?.app.apkUrls.length == 1 ? app?.app.apkUrls[0].key : plural('apk', app?.app.apkUrls.length ?? 0)}';
      }
      var changeLogFn = app != null ? getChangeLogFn(context, app.app) : null;
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 8,
                  ),
                  child: buildRepoRenameWarning(
                    app: app,
                    appsProvider: appsProvider,
                    onUpdate: (id) => getUpdate(id),
                  ),
                ),
              gap24,
              Text(
                versionLines,
                textAlign: TextAlign.start,
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
              ),
              changeLogFn != null || app.app.releaseDate != null
                  ? InkWell(
                      onTap: changeLogFn,
                      child: Text(
                        app.app.releaseDate == null
                            ? 'changes'.t()
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
                  "${'certificateHash'.plural(app.certificateHashes.length)}:"
                  "${app.hasMultipleSigners ? " (${'multipleSigners'.t()})" : ""}",
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
                          SnackBar(content: Text('copiedToClipboard'.t())),
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
                      SnackBar(content: Text('copiedToClipboard'.t())),
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
            ).showSnackBar(SnackBar(content: Text('copiedToClipboard'.t())));
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
              var item = e.clone();
              if (app.app.additionalSettings[item.key] != null) {
                item.defaultValue = app.app.additionalSettings[item.key];
              } else if (item.key == 'appAuthor') {
                item.defaultValue = app.app.author;
              } else if (item.key == 'appId') {
                item.defaultValue = app.app.id;
              } else if (item.key == 'appName') {
                item.defaultValue = app.app.name;
              } else if (item.key == 'appSourceURL') {
                item.defaultValue = app.app.url;
              }
              return item;
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
                title: Text('additionalOptions'.t()),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(ctx).pop(localValues),
                    child: Text('save'.t()),
                  ),
                ],
              ),
              body: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    gap16,
                    GeneratedForm(
                      items: [
                        [
                          GeneratedFormSwitch(
                            'pinned',
                            label: 'pinned'.t(),
                            defaultValue: app.app.pinned,
                          ),
                        ],
                      ],
                      onValueChanges: (vals, valid, isBuilding) {
                        localValues.addAll(vals);
                      },
                    ),
                    gap24,
                    gap16,
                    GeneratedForm(
                      items: items,
                      onValueChanges: (vals, valid, isBuilding) {
                        localValues.addAll(vals);
                      },
                    ),
                    gap24,
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

    getInstallOrUpdateButton() => M3EFilledButton(
      onPressed:
          !updating &&
              (app.app.installedVersion == null ||
                  app.app.installedVersion != app.app.latestVersion) &&
              !areDownloadsRunning
          ? () async {
              try {
                var successMessage = app.app.installedVersion == null
                    ? 'installed'.t()
                    : 'appsUpdated'.t();
                settingsProvider.heavyImpact();
                var res = await appsProvider.downloadAndInstallLatestApps([
                  app.app.id,
                ], globalNavigatorKey.currentContext);
                if (!mounted) return;
                if (res.isNotEmpty && !trackOnly) {
                  showMessage(successMessage, context);
                }
                if (res.isNotEmpty) {
                  Navigator.of(context).pop();
                }
                if (res.isNotEmpty) {
                  var np = context.read<NotificationsProvider>();
                  np.cancel(UpdateNotification([]).id);
                  np.cancel(SilentUpdateAttemptNotification([], id: res[0].hashCode).id);
                }
              } catch (e) {
                if (!mounted) return;
                showError(e, context);
              }
            }
          : null,
      child: Text(
        app.app.installedVersion == null
            ? !trackOnly
                  ? 'install'.t()
                  : 'markInstalled'.t()
            : !trackOnly
            ? 'update'.t()
            : 'markUpdated'.t(),
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
                                t('byX', args: [app.author]),
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
                              label: 'downloadProgress'.t(),
                              value: '${app.downloadProgress!.toInt()}%',
                              child: LinearProgressIndicator(
                                value: app.downloadProgress! >= 0
                                    ? app.downloadProgress! / 100
                                    : null,
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
                        semanticLabel: 'open'.t(),
                        tooltip: 'open'.t(),
                        onPressed: () {
                          pm.openApp(app.app.id);
                        },
                      ),
                    if (!updating &&
                        source != null &&
                        source.combinedAppSpecificSettingFormItems.isNotEmpty)
                      M3FloatingToolbarAction(
                        icon: Icons.edit,
                        semanticLabel: 'additionalOptions'.t(),
                        tooltip: 'additionalOptions'.t(),
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
                        semanticLabel: t(
                          'downloadX',
                          args: [lowerCaseIfEnglish('releaseAsset'.t())],
                        ),
                        tooltip: t(
                          'downloadX',
                          args: [lowerCaseIfEnglish('releaseAsset'.t())],
                        ),
                        onPressed: () async {
                          try {
                            if (!mounted) return;
                            await appsProvider.downloadAppAssets([
                              app.app.id,
                            ], context);
                          } catch (e) {
                            if (!mounted) return;
                            showError(e, context);
                          }
                        },
                      ),
                    M3FloatingToolbarAction(
                      icon: Icons.delete,
                      semanticLabel: 'remove'.t(),
                      tooltip: 'remove'.t(),
                      onPressed: () async {
                        if (!mounted) return;
                        final removedApps = await appsProvider
                            .removeAppsWithModal(context, [app.app]);
                        if (removedApps != null && removedApps.isNotEmpty) {
                          if (mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('appRemoved'.t()),
                                action: SnackBarAction(
                                  label: 'undo'.t(),
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
