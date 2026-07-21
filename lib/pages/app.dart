import 'package:flutter/material.dart';
import 'package:m3e_buttons/m3e_buttons.dart';
import 'package:flutter/services.dart';
import 'package:expressive_refresh/expressive_refresh.dart';
import 'package:updatium/custom_errors.dart';

import 'package:updatium/services/slang_converter.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:m3_floating_toolbar/m3_floating_toolbar.dart';
import 'package:m3_floating_toolbar/m3_floating_toolbar_action.dart';
import 'package:updatium/main.dart';
import 'package:updatium/pages/apps.dart';
import 'package:updatium/pages/settings.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/notifications_provider.dart';
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

  /// When provided, the page is being shown embedded in a detail pane (two-pane
  /// layout); "back" and post-action dismissals clear the pane via this instead
  /// of popping a route.
  final VoidCallback? onClose;

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  AppInMemory? prevApp;
  bool updating = false;
  bool _iconRequested = false;
  Future<void>? _iconFuture;

  int? _appCacheSig;
  AppInMemory? _appCache;

  // Best-effort download-size probe for the currently-selected APK URL.
  String? _sizeProbeKey;
  int? _probedDownloadSize;

  void _maybeProbeDownloadSize(AppInMemory app) {
    if (app.app.apkUrls.isEmpty) return;
    final idx =
        (app.app.preferredApkIndex >= 0 &&
            app.app.preferredApkIndex < app.app.apkUrls.length)
        ? app.app.preferredApkIndex
        : 0;
    final url = app.app.apkUrls[idx].value;
    if (url.isEmpty || url == 'placeholder') return;
    final key = '${app.app.id}|$url';
    if (key == _sizeProbeKey) return;
    _sizeProbeKey = key;
    _probedDownloadSize = null;
    () async {
      try {
        final source = _sourceProvider.getSource(
          app.app.url,
          overrideSource: app.app.overrideSource,
        );
        final resolvedUrl = await source.assetUrlPrefetchModifier(
          url,
          app.app.url,
          app.app.additionalSettings,
        );
        final headers = await source.getRequestHeaders(
          app.app.additionalSettings,
          resolvedUrl,
          forAPKDownload: true,
        );
        final size = await getDownloadSize(
          resolvedUrl,
          headers: headers,
          allowInsecure: app.app.settings.getBool('allowInsecure'),
        );
        if (mounted && _sizeProbeKey == key && size != null) {
          setState(() => _probedDownloadSize = size);
        }
      } catch (e) {
        // Best-effort only: leave the size unknown when it can't be resolved.
        unawaited(LogsProvider().add('Size probe failed for $url: $e'));
      }
    }();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_initialized) {
      appId = widget.appId;
      appsProvider = context.read<AppsProvider>();
      settingsProvider = context.read<SettingsProvider>();
      _sourceProvider = context.read<SourceProvider>();
      _initialized = true;
    }
  }

  @override
  void didUpdateWidget(covariant AppPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    // React to appId changes even before the WebView is ready, but defer
    // UI updates until the WebView has finished loading to avoid
    // predictive-back crashes.
    if (_initialized && oldWidget.appId != widget.appId) {
      _pendingAppIdChange = true;
      if (webViewReady) {
        _pendingAppIdChange = false;
        setState(() {});
      }
    }
  }

  @override
  void dispose() {
    webViewController = null;
    super.dispose();
  }

  void onWebViewLoaded() {
    _webViewReady = true;
    if (_pendingAppIdChange) {
      _pendingAppIdChange = false;
      setState(() {});
    }
  }

  AppSource? get source {
    final aim = appsProvider.apps[appId];
    if (aim == null) return null;
    return _sourceProvider.getSource(
      aim.app.url,
      overrideSource: aim.app.overrideSource,
    );
  }

  WebViewController ensureWebViewController(String url) {
    var wvc = webViewController;
    if (wvc == null) {
      wvc = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setNavigationDelegate(
          NavigationDelegate(
            onPageFinished: (String url) {
              onWebViewLoaded();
            },
            onWebResourceError: (WebResourceError error) {
              if (error.isForMainFrame == true) {
                setState(() {
                  _webViewError = error.description;
                });
              }
            },
            onNavigationRequest: (NavigationRequest request) =>
                !(request.url.startsWith('http://') ||
                    request.url.startsWith('https://') ||
                    request.url.startsWith('ftp://') ||
                    request.url.startsWith('ftps://'))
                ? NavigationDecision.prevent
                : NavigationDecision.navigate,
          ),
        );
      webViewController = wvc;
    }
    if (!webViewLoaded) {
      webViewLoaded = true;
      wvc.loadRequest(Uri.parse(url));
    }
    return wvc;
  }

  int appSignature(AppInMemory a) {
    final app = a.app;
    return Object.hashAll([
      a.downloadProgress,
      identityHashCode(a.icon),
      identityHashCode(a.installedInfo),
      app.id,
      a.name,
      a.author,
      app.installedVersion,
      app.latestVersion,
      app.url,
      app.overrideSource,
      app.releaseDate?.microsecondsSinceEpoch,
      app.lastUpdateCheck?.microsecondsSinceEpoch,
      Object.hashAll(app.categories),
      app.pinned,
      app.hasPendingRepoRename,
      app.pendingRepoRenameUrl,
      app.apkUrls.length,
      app.otherAssetUrls.length,
      app.preferredApkIndex,
      jsonEncode(app.additionalSettings),
    ]);
  }

  AppInMemory? cachedApp(AppInMemory? source) {
    if (source == null) {
      _appCache = null;
      _appCacheSig = null;
      return null;
    }
    final sig = appSignature(source);
    if (sig == _appCacheSig && _appCache != null) {
      return _appCache;
    }
    final copy = source.deepCopy();
    _appCache = copy;
    _appCacheSig = sig;
    return copy;
  }

  Future<void> getUpdate(
    BuildContext context, {
    bool resetVersion = false,
  }) async {
    try {
      updating = true;
      if (mounted) setState(() {});
      await appsProvider.checkUpdate(appId);
      if (resetVersion) {
        final currentAim = appsProvider.apps[appId];
        if (currentAim != null) {
          var updatedApp = currentAim.app.copyWith(
            additionalSettings: Map<String, dynamic>.from(
              currentAim.app.additionalSettings,
            )..['versionDetection'] = true,
          );
          if (updatedApp.installedVersion != null) {
            updatedApp = updatedApp.copyWith(
              installedVersion: updatedApp.latestVersion,
            );
          }
          await appsProvider.saveApps([updatedApp]);
        }
      }
    } catch (err) {
      if (err is RepositoryRenamedError && context.mounted) {
        await appsProvider.updatePendingRepoRename(appId, err.newUrl);
      } else if (context.mounted) {
        showError(err, context);
      }
    } finally {
      updating = false;
      if (mounted) setState(() {});
    }
  }

  Future<void> showMarkUpdatedDialog(BuildContext context) async {
    final confirmed = await showConfirmDialog(
      context,
      title: tr('alreadyUpToDateQuestion'),
      confirmText: tr('yesMarkUpdated'),
      autofocusConfirm: settingsProvider.isTV,
    );
    if (!confirmed) return;
    settingsProvider.selectionClick();
    final aim = appsProvider.apps[appId];
    var updatedApp = aim?.app;
    if (updatedApp != null) {
      updatedApp = updatedApp.copyWith(
        installedVersion: updatedApp.latestVersion,
      );
      unawaited(appsProvider.saveApps([updatedApp]));
    }
  }

  Future<Map<String, dynamic>?> showAdditionalOptionsDialog(
    BuildContext context,
    AppInMemory? app,
  ) async {
    final s = source;
    final items = (s?.combinedAppSpecificSettingFormItems ?? []).map((row) {
      row = row.map((e) {
        if (app?.app.additionalSettings[e.key] != null) {
          e.value = app?.app.additionalSettings[e.key];
        }
        return e;
      }).toList();
      return row;
    }).toList();

    Map<String, dynamic> values = {};
    return Navigator.of(context).push<Map<String, dynamic>>(
      MaterialPageRoute(
        builder: (ctx) => PopScope<Map<String, dynamic>>(
          // Leaving the page saves the settings, so there is no Continue button.
          canPop: false,
          onPopInvokedWithResult: (didPop, result) {
            if (didPop) return;
            Navigator.of(ctx).pop(values);
          },
          child: Scaffold(
            backgroundColor: Theme.of(context).colorScheme.surface,
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: true,
                  automaticallyImplyLeading: false,
                  title: Text(
                    tr('additionalOptsFor', args: [app?.name ?? tr('app')]),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          t('repoRenamed'),
                          style: textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: colorScheme.onSurface,
                          ),
                        ),
                        Text(
                          t('repoRenamedExplanation'),
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
                          t('newUrl'),
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
                      onPressed: () async {
                        await appsProvider.updatePendingRepoRename(
                          appValue.app.id,
                          null,
                        );
                      },
                      child: Text(t('dismiss')),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void handleAdditionalOptionChanges(
    Map<String, dynamic>? values,
    BuildContext context,
    AppInMemory? app,
  ) {
    if (app != null && values != null) {
      final s = source;
      final Map<String, dynamic> originalSettings = app.app.additionalSettings;
      app.app = app.app.copyWith(additionalSettings: values);
      if (s?.enforceTrackOnly == true) {
        app.app = app.app.copyWith(
          additionalSettings: Map<String, dynamic>.from(
            app.app.additionalSettings,
          )..['trackOnly'] = true,
        );
        if (context.mounted) {
          showMessage(tr('appsFromSourceAreTrackOnly'), context);
        }
      }
      final versionDetectionEnabled =
          app.app.settings.getBool('versionDetection') &&
          originalSettings['versionDetection'] != true;
      final releaseDateVersionEnabled =
          app.app.settings.getBool('releaseDateAsVersion') &&
          originalSettings['releaseDateAsVersion'] != true;
      final releaseDateVersionDisabled =
          !app.app.settings.getBool('releaseDateAsVersion') &&
          originalSettings['releaseDateAsVersion'] == true;
      if (releaseDateVersionEnabled) {
        if (app.app.releaseDate != null) {
          final bool isUpdated =
              app.app.installedVersion == app.app.latestVersion;
          app.app = app.app.copyWith(
            latestVersion: app.app.releaseDate!.microsecondsSinceEpoch
                .toString(),
          );
          if (isUpdated) {
            app.app = app.app.copyWith(installedVersion: app.app.latestVersion);
          }
        }
      } else if (releaseDateVersionDisabled) {
        app.app = app.app.copyWith(
          installedVersion:
              app.installedInfo?.versionName ?? app.app.installedVersion,
        );
      }
      if (versionDetectionEnabled) {
        app.app = app.app.copyWith(
          additionalSettings:
              Map<String, dynamic>.from(app.app.additionalSettings)
                ..['versionDetection'] = true
                ..['releaseDateAsVersion'] = false,
        );
      }
      appsProvider.saveApps([app.app]).then((_) {
        if (context.mounted) {
          getUpdate(context, resetVersion: versionDetectionEnabled);
        }
      });
    }
  }

  Future<List<String>> installOrUpdate(
    BuildContext context,
    AppInMemory? app,
  ) async {
    try {
      final trackOnly = app?.app.settings.getBool('trackOnly') == true;
      final successMessage = app?.app.installedVersion == null
          ? tr('installed')
          : tr('appsUpdated');
      final np = Provider.of<NotificationsProvider>(context, listen: false);
      settingsProvider.heavyImpact();
      final res = await appsProvider.downloadAndInstallLatestApps([
        appId,
      ], appNavigatorKey.currentContext);
      if (res.isNotEmpty && !trackOnly && context.mounted) {
        showMessage(successMessage, context);
      }
      if (res.isNotEmpty) {
        unawaited(np.cancel(updateNotificationId));
        unawaited(
          np.cancel(
            SilentUpdateAttemptNotification([], id: res[0].hashCode).id,
          ),
        );
      }
      return res;
    } catch (e) {
      if (context.mounted) showError(e, context);
      return <String>[];
    }
  }

  void resetInstallStatus(AppInMemory? app) {
    if (app == null) return;
    app.app = app.app.copyWith(installedVersion: null);
    unawaited(appsProvider.saveApps([app.app]));
  }

  Future<bool> removeApp(BuildContext context, AppInMemory? app) async {
    if (app == null) return false;
    return await appsProvider.removeAppsWithModal(context, [app.app]) == true;
  }

  void openAppSettings(AppInMemory? app) {
    if (app == null) return;
    appsProvider.openAppSettings(app.app.id);
  }

  void updateAppIcon() {
    appsProvider.updateAppIcon(appId, ignoreCache: true);
  }

  void _closePage() {
    if (!mounted) return;
    if (widget.onClose != null) {
      widget.onClose!();
    } else if (ModalRoute.of(context)?.isCurrent ?? false) {
      Navigator.of(context).pop();
    }
  }

  Future<void> _handleInstallOrUpdate(
    BuildContext context,
    AppInMemory? app,
  ) async {
    final res = await installOrUpdate(context, app);
    if (res.isNotEmpty && mounted) {
      _closePage();
    }
  }

  Widget _getAppWebView(BuildContext context, AppInMemory? app) {
    if (app == null) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_webViewError != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.error_outline, size: 48),
              const SizedBox(height: 16),
              Text(tr('webviewLoadError')),
              Text(
                _webViewError!,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () {
                  setState(() {
                    _webViewError = null;
                    webViewLoaded = false;
                  });
                },
                child: Text(tr('retry')),
              ),
            ],
          ),
        ),
      );
    }
    final webController = ensureWebViewController(app.app.url)
      ..setBackgroundColor(Theme.of(context).colorScheme.surface);
    return WebViewWidget(
      key: ObjectKey(webController),
      controller: webController,
    );
  }

  AppBar _appScreenAppBar() => AppBar(
    automaticallyImplyLeading: false,
    leading: widget.onClose != null
        ? IconButton(
            icon: const Icon(Icons.close_rounded),
            onPressed: _closePage,
          )
        : null,
  );

  Widget _getPrimaryButton(
    BuildContext context,
    AppInMemory? app,
    AppsProvider appsProvider,
    bool areDownloadsRunning,
  ) {
    final installed = app?.app.installedVersion;
    final latest = app?.app.latestVersion;
    final hasAction =
        app != null &&
        !updating &&
        (installed == null || installed != latest) &&
        !areDownloadsRunning;
    final trackOnly = app?.app.settings.getBool('trackOnly') == true;
    return FilledButton.icon(
      onPressed: hasAction ? () => _handleInstallOrUpdate(context, app) : null,
      icon: Icon(
        installed == null
            ? Icons.download_outlined
            : Icons.system_update_alt_rounded,
      ),
      label: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            installed == null
                ? (!trackOnly ? tr('install') : tr('markInstalled'))
                : !trackOnly
                ? tr('update')
                : tr('markUpdated'),
          ),
          if (_probedDownloadSize != null)
            Text(
              formatBytes(_probedDownloadSize!),
              style: const TextStyle(fontSize: 12),
            ),
        ],
      ),
    );
  }

  List<Widget> _getSecondaryActions(
    BuildContext context,
    AppInMemory? app,
    AppSource? source,
    AppsProvider appsProvider,
    SettingsProvider settingsProvider,
    bool showAppWebpageFinal,
    bool isVersionDetectionStandard,
    bool trackOnly,
  ) {
    return <Widget>[
      if (source != null && source.hasAppSpecificSettings)
        IconButton(
          onPressed: app?.downloadProgress != null || updating
              ? null
              : () async {
                  final values = await showAdditionalOptionsDialog(
                    context,
                    app,
                  );
                  if (context.mounted) {
                    handleAdditionalOptionChanges(values, context, app);
                  }
                },
          tooltip: tr('additionalOptions'),
          icon: const Icon(Icons.edit),
        ),
      if (app != null && app.installedInfo != null)
        IconButton(
          onPressed: () {
            openAppSettings(app);
          },
          icon: const Icon(Icons.settings),
          tooltip: tr('settings'),
        ),
      if (app != null && showAppWebpageFinal)
        IconButton(
          onPressed: () async {
            updateAppIcon();
            if (!context.mounted) return;
            unawaited(
              showDialog(
                context: context,
                builder: (BuildContext ctx) =>
                    AppInfoDialog(app: app, appsProvider: appsProvider),
              ),
            );
          },
          icon: const Icon(Icons.more_horiz),
          tooltip: tr('more'),
        ),
      if (app?.app.installedVersion != null &&
          app?.app.installedVersion != app?.app.latestVersion &&
          !isVersionDetectionStandard &&
          !trackOnly)
        IconButton(
          onPressed: app?.downloadProgress != null || updating
              ? null
              : () => showMarkUpdatedDialog(context),
          tooltip: tr('markUpdated'),
          icon: const Icon(Icons.done),
        ),
      if ((!isVersionDetectionStandard || trackOnly) &&
          app?.app.installedVersion != null &&
          app?.app.installedVersion == app?.app.latestVersion)
        IconButton(
          onPressed: updating
              ? null
              : () {
                  resetInstallStatus(app);
                },
          icon: const Icon(Icons.restore_rounded),
          tooltip: tr('resetInstallStatus'),
        ),
      IconButton(
        onPressed: app == null || app.downloadProgress != null || updating
            ? null
            : () {
                removeApp(context, app).then((removed) {
                  if (removed) {
                    _closePage();
                  }
                });
              },
        tooltip: tr('remove'),
        icon: const Icon(Icons.delete_outline),
      ),
    ];
  }

  Widget _buildSection(
    bool isFirst,
    bool isLast, {
    required List<Widget> children,
    EdgeInsetsGeometry? padding,
  }) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: ConnectedCard(
          isFirst: isFirst,
          isLast: isLast,
          padding: padding ?? const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: children,
          ),
        ),
      ),
    );
  }

  Widget _repoRenameInfoRow(IconData icon, String title, String subtitle) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    return Row(
      spacing: 12,
      children: [
        Icon(icon, size: 24, color: cs.onSurfaceVariant),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: tt.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: cs.onSurface,
                ),
              ),
              Text(
                subtitle,
                style: tt.bodyMedium?.copyWith(color: cs.onSurfaceVariant),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Banner shown when a repository rename was detected, letting the user adopt
  /// the new URL (which resumes update checks) or dismiss it. Returns no slivers
  /// when there is no pending rename.
  List<Widget> _buildRepoRenameSection(
    AppInMemory? app,
    AppsProvider appsProvider,
  ) {
    if (app?.app.hasPendingRepoRename != true) return const [];
    final appId = app!.app.id;
    final pendingUrl = app.app.pendingRepoRenameUrl!;
    return [
      const SliverToBoxAdapter(child: SizedBox(height: 20)),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 3,
            children: [
              ConnectedCard(
                isFirst: true,
                isLast: false,
                child: _repoRenameInfoRow(
                  Icons.info_outline_rounded,
                  tr('repoRenamed'),
                  tr('repoRenamedExplanation'),
                ),
              ),
              ConnectedCard(
                isFirst: false,
                isLast: false,
                child: _repoRenameInfoRow(
                  Icons.link_rounded,
                  tr('newUrl'),
                  pendingUrl,
                ),
              ),
              ConnectedCard(
                isFirst: false,
                isLast: true,
                child: Row(
                  spacing: 12,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () =>
                            appsProvider.updatePendingRepoRename(appId, null),
                        child: Text(tr('dismiss')),
                      ),
                    ),
                    Expanded(
                      child: FilledButton.tonal(
                        onPressed: () async {
                          await appsProvider.acceptRepoRename(
                            appId,
                            pendingUrl,
                          );
                          if (mounted) unawaited(getUpdate(context));
                        },
                        child: Text(tr('updateUrl')),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ];
  }

  Widget _buildAppIcon(AppInMemory? app) {
    final icon = AppIcon(bytes: app?.icon, size: 56, radius: 14);
    if (app == null || app.installedInfo == null) return icon;
    return Semantics(
      button: true,
      label: app.name,
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: () {
          settingsProvider.lightImpact();
          packageManager.openApp(app.app.id);
        },
        child: icon,
      ),
    );
  }

  Widget _buildHeaderSection(AppInMemory? app) {
    return _buildSection(
      true,
      true,
      children: [
        Row(
          children: [
            _buildAppIcon(app),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    app?.name ?? tr('app'),
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    tr('byX', args: [app?.author ?? tr('unknown')]),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  List<Widget> _buildVersionInfoSections(AppInMemory? app) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    final trackOnly = app?.app.settings.getBool('trackOnly') == true;
    final pseudo = app?.app != null && isVersionPseudo(app!.app);
    final realVersion = app?.installedInfo?.versionName;
    final apkCount = app?.app.apkUrls.length ?? 0;
    final changeLogFn = app != null ? getChangeLogFn(context, app.app) : null;
    return [
      _buildSection(
        true,
        false,
        children: [
          if (trackOnly) _detailNote(tr('xIsTrackOnly', args: [tr('app')])),
          if (pseudo)
            _detailNote(
              realVersion != null
                  ? '${tr('pseudoVersionInUse')} (OS installed $realVersion)'
                  : tr('pseudoVersionInUse'),
            ),
          () {
            String l = appInstalledVersionText(app?.app);
            final upToDate =
                app?.app.installedVersion == app?.app.latestVersion;
            if (!upToDate) {
              l += '\n${app?.app.latestVersion} ${tr('latest')}';
            }
            return Text(
              l,
              style: tt.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
            );
          }(),
          if (apkCount > 0)
            _detailNote(
              apkCount == 1 ? app!.app.apkUrls[0].key : plural('apk', apkCount),
            ),
          if (changeLogFn != null || app?.app.releaseDate != null)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: InkWell(
                onTap: changeLogFn,
                borderRadius: BorderRadius.circular(4),
                child: Text(
                  app?.app.releaseDate == null
                      ? tr('changes')
                      : app!.app.releaseDate!
                            .toLocal()
                            .toString()
                            .split('.')
                            .first,
                  style: tt.bodyMedium?.copyWith(
                    color: changeLogFn != null
                        ? cs.primary
                        : cs.onSurfaceVariant,
                    fontStyle: changeLogFn != null ? FontStyle.italic : null,
                    decoration: changeLogFn != null
                        ? TextDecoration.underline
                        : null,
                  ),
                ),
              ),
            ),
        ],
      ),
      const SliverToBoxAdapter(child: SizedBox(height: 2)),
      _buildSection(
        false,
        true,
        children: [
          Text(
            tr(
              'lastUpdateCheckX',
              args: [
                app?.app.lastUpdateCheck
                        ?.toLocal()
                        .toString()
                        .split('.')
                        .first ??
                    tr('never'),
              ],
            ),
            style: tt.bodyMedium,
          ),
        ],
      ),
    ];
  }

  Widget _detailNote(String text) {
    final cs = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Text(
        text,
        style: Theme.of(
          context,
        ).textTheme.bodySmall?.copyWith(color: cs.onSurfaceVariant),
      ),
    );
  }

  /// Renders the source-provided "about" markdown, when present, as its own
  /// section so it fits the sectioned detail layout.
  List<Widget> _buildAboutSection(AppInMemory? app) {
    final about = app?.app.additionalSettings['about'];
    if (about is! String || about.isEmpty) return const [];
    return [
      const SliverToBoxAdapter(child: SizedBox(height: 20)),
      _buildSection(
        true,
        true,
        children: [
          MarkdownBody(
            data: about,
            styleSheet: MarkdownStyleSheet(
              blockquoteDecoration: BoxDecoration(
                color: Theme.of(context).cardColor,
              ),
            ),
            onTapLink: (text, href, title) {
              if (href != null) {
                unawaited(
                  launchUrlString(href, mode: LaunchMode.externalApplication),
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
        ],
      ),
    ];
  }

  List<Widget> _buildSourceInfoSections(
    AppInMemory? app,
    AppsProvider appsProvider,
    SettingsProvider settingsProvider,
    bool certs,
    bool hasAssets,
  ) {
    final widgets = <Widget>[
      _buildSection(
        true,
        certs || hasAssets ? false : true,
        children: [
          Tooltip(
            message: tr('copyToClipboard'),
            child: GestureDetector(
              onLongPress: () {
                copyToClipboard(context, app?.app.url ?? '');
              },
              child: LinkText(
                text: app?.app.url ?? '',
                url: app?.app.url ?? '',
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            app?.app.id ?? '',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    ];
    if (certs) {
      final a = app!;
      widgets.addAll([
        const SliverToBoxAdapter(child: SizedBox(height: 2)),
        _buildSection(
          false,
          !hasAssets,
          children: [
            Text(
              '${plural('certificateHash', a.certificateHashes.length)}'
              '${a.hasMultipleSigners ? " (${tr('multipleSigners')})" : ""}',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            ...a.certificateHashes.map(
              (h) => Tooltip(
                message: tr('copyToClipboard'),
                child: GestureDetector(
                  onLongPress: () {
                    copyToClipboard(context, h);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Text(
                      h,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]);
    }
    if (hasAssets) {
      widgets.addAll([
        const SliverToBoxAdapter(child: SizedBox(height: 2)),
        _buildSection(
          false,
          true,
          padding: const EdgeInsets.all(0),
          children: [
            Center(
              child: TextButton.icon(
                onPressed: app?.app == null || updating
                    ? null
                    : () async {
                        try {
                          await appsProvider.downloadAppAssets([
                            app!.app.id,
                          ], context);
                        } catch (e) {
                          if (mounted) {
                            showError(e, context);
                          }
                        }
                      },
                      child: Text(t('updateUrl')),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]);
    }
    return widgets;
  }

  Widget _buildCategorySection(AppInMemory? app, AppsProvider appsProvider) {
    return _buildSection(
      true,
      true,
      children: [
        CategorySelector(
          alignment: WrapAlignment.start,
          selected: app?.app.categories.toSet() ?? {},
          onChanged: (categories) {
            if (app != null) {
              app.app = app.app.copyWith(categories: categories.toList());
              unawaited(appsProvider.saveApps([app.app]));
            }
          },
        ),
      ],
    );
  }

  Widget _buildActionsContent(
    AppInMemory? app,
    AppsProvider appsProvider,
    SettingsProvider settingsProvider,
    AppSource? source,
    bool showAppWebpageFinal,
    bool isVersionDetectionStandard,
    bool trackOnly,
    bool areDownloadsRunning,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (app?.downloadProgress != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                Expanded(
                  child: Semantics(
                    label: app!.downloadProgress! >= 0
                        ? tr(
                            'percentProgress',
                            args: [app.downloadProgress!.toInt().toString()],
                          )
                        : tr('installing'),
                    child: LinearProgressIndicator(
                      value: app.downloadProgress! >= 0
                          ? app.downloadProgress! / 100
                          : null,
                    ),
                  ),
                ),
                if (app.downloadProgress! >= 0) ...[
                  const SizedBox(width: 8),
                  DownloadCancelButton(
                    onPressed: () => appsProvider.cancelDownload(widget.appId),
                  ),
                ],
              ],
            ),
          ),
        if (app?.downloadProgress != null &&
            app!.downloadProgress! >= 0 &&
            app.downloadReceivedBytes != null)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              formatDownloadSize(
                app.downloadReceivedBytes,
                app.downloadTotalBytes,
              )!,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Row(
            children: [
              ..._getSecondaryActions(
                context,
                app,
                source,
                appsProvider,
                settingsProvider,
                showAppWebpageFinal,
                isVersionDetectionStandard,
                trackOnly,
              ),
              const Spacer(),
              _getPrimaryButton(
                context,
                app,
                appsProvider,
                areDownloadsRunning,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    // Fetch APK file size when the app is loaded
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
      if (!mounted) return;
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
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) getUpdate(context);
      });
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
          versionLines += ' (${t('pseudoVersionInUse').toLowerCase()})';
        }
      }
      final lastUpdateCheck = app.app.lastUpdateCheck?.toLocal();
      String infoLines = t(
        'lastUpdateCheckX',
        args: [
          lastUpdateCheck == null
              ? t('never')
              : lastUpdateCheck.toString().split('.').first,
        ],
      );
      if (trackOnly) {
        infoLines = '${t('xIsTrackOnly', args: ['app'.t()])}\n$infoLines';
      }
      if (installedVersionIsEstimate) {
        infoLines = '${'pseudoVersionInUse'.t()}\n$infoLines';
      }
      if (app.app.apkUrls.isNotEmpty) {
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
            style: const TextStyle(fontSize: 14),
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
                  style: const TextStyle(fontSize: 14),
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
                          style: const TextStyle(fontSize: 14),
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
                  // ignore: use_build_context_synchronously
                  var np = context.read<NotificationsProvider>();
                  np.cancel(UpdateNotification([]).id);
                  np.cancel(
                    SilentUpdateAttemptNotification([], id: res[0].hashCode).id,
                  );
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
                    leading: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
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
                                  width: 48,
                                  height: 48,
                                  gaplessPlayback: true,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Icon(
                                      Icons.apps,
                                      size: 48,
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
                                      width: 48,
                                      height: 48,
                                      gaplessPlayback: true,
                                      errorBuilder:
                                          (context, error, stackTrace) {
                                            return Icon(
                                              Icons.apps,
                                              size: 48,
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
                                    size: 48,
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
              bottom: 20,
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
