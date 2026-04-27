import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:updatium/pages/home.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/logs_provider.dart';
import 'package:updatium/providers/native_provider.dart';
import 'package:updatium/providers/notifications_provider.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:provider/provider.dart';
import 'package:dynamic_system_colors/dynamic_system_colors.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:background_fetch/background_fetch.dart';
import 'package:simple_localization/simple_localization.dart';
// ignore: implementation_imports
import 'package:simple_localization/src/simple_localization_controller.dart';
// ignore: implementation_imports
import 'package:simple_localization/src/localization.dart';
import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:updatium/services/github_star_prompt.dart';
import 'package:url_launcher/url_launcher.dart';

List<MapEntry<Locale, String>> supportedLocales = const [
  MapEntry(Locale('en'), 'English'),
  MapEntry(Locale('zh'), '简体中文'),
  MapEntry(Locale('zh', 'Hant_TW'), '臺灣話'),
  MapEntry(Locale('it'), 'Italiano'),
  MapEntry(Locale('ja'), '日本語'),
  MapEntry(Locale('he'), 'עברית'),
  MapEntry(Locale('hi'), 'हिन्दी'),
  MapEntry(Locale('hu'), 'Magyar'),
  MapEntry(Locale('de'), 'Deutsch'),
  MapEntry(Locale('fa'), 'فارسی'),
  MapEntry(Locale('fr'), 'Français'),
  MapEntry(Locale('es'), 'Español'),
  MapEntry(Locale('pl'), 'Polski'),
  MapEntry(Locale('ru'), 'Русский'),
  MapEntry(Locale('bs'), 'Bosanski'),
  MapEntry(Locale('pt'), 'Português'),
  MapEntry(Locale('pt', 'BR'), 'Brasileiro'),
  MapEntry(Locale('cs'), 'Česky'),
  MapEntry(Locale('sv'), 'Svenska'),
  MapEntry(Locale('nl'), 'Nederlands'),
  MapEntry(Locale('vi'), 'Tiếng Việt'),
  MapEntry(Locale('tr'), 'Türkçe'),
  MapEntry(Locale('uk'), 'Українська'),
  MapEntry(Locale('da'), 'Dansk'),
  MapEntry(Locale('et'), 'Eesti'),
  MapEntry(
    Locale('en', 'EO'),
    'Esperanto',
  ), // https://github.com/aissat/easy_localization/issues/220#issuecomment-846035493
  MapEntry(Locale('in'), 'Bahasa Indonesia'),
  MapEntry(Locale('ko'), '한국어'),
  MapEntry(Locale('ca'), 'Català'),
  MapEntry(Locale('ar'), 'العربية'),
  MapEntry(Locale('ml'), 'മലയാളം'),
  MapEntry(Locale('gl'), 'Galego'),
  MapEntry(Locale('bg'), 'Български'),
  MapEntry(Locale('kmr'), 'Kurdî (Kurmanjî)'),
  MapEntry(Locale('ms'), 'Bahasa Melayu'),
  MapEntry(Locale('bn'), 'বাংলা'),
  MapEntry(Locale('ro'), 'Română'),
  MapEntry(Locale('ug'), 'ئۇيغۇرچە'),
  MapEntry(Locale('hy'), 'Հայերեն'),
];
const fallbackLocale = Locale('en');
const localeDir = 'assets/translations';
var fdroid = false;

final globalNavigatorKey = GlobalKey<NavigatorState>();

bool isLocaleRTL(Locale locale) {
  const rtlLanguages = {'ar', 'he', 'fa', 'ug', 'ur', 'yi', 'ps', 'sd'};
  return rtlLanguages.contains(locale.languageCode);
}

Future<void> loadTranslations() async {
  // See easy_localization/issues/210
  await SimpleLocalizationController.initEasyLocation();
  var s = SettingsProvider();
  try {
    await s.initializeSettings();
    var forceLocale = s.forcedLocale;
    final controller = SimpleLocalizationController(
      saveLocale: true,
      forceLocale: forceLocale,
      fallbackLocale: fallbackLocale,
      supportedLocales: supportedLocales.map((e) => e.key).toList(),
      assetLoader: RootBundleAssetLoader.fromRootBundle(),
      useOnlyLangCode: false,
      useFallbackTranslations: true,
      path: localeDir,
      onLoadError: (FlutterError e) {
        throw e;
      },
    );
    await controller.loadTranslations();
    Localization.load(
      controller.locale,
      translations: controller.translations,
      fallbackTranslations: controller.fallbackTranslations,
    );
  } finally {
    // Clean up the temporary SettingsProvider instance
    s.dispose();
  }
}

@pragma('vm:entry-point')
void backgroundFetchHeadlessTask(HeadlessEvent task) async {
  String taskId = task.taskId;
  bool isTimeout = task.timeout;
  if (isTimeout) {
    debugPrint('BG update task timed out.');
    BackgroundFetch.finish(taskId);
    return;
  }
  await bgUpdateCheck(taskId, null);
  BackgroundFetch.finish(taskId);
}

@pragma('vm:entry-point')
void startCallback() {
  FlutterForegroundTask.setTaskHandler(MyTaskHandler());
}

class MyTaskHandler extends TaskHandler {
  static const String incrementCountCommand = 'incrementCount';

  @override
  Future<void> onStart(DateTime timestamp, TaskStarter starter) async {
    debugPrint('onStart(starter: ${starter.name})');
    bgUpdateCheck('bg_check', null);
  }

  @override
  void onRepeatEvent(DateTime timestamp) {
    bgUpdateCheck('bg_check', null);
  }

  @override
  Future<void> onDestroy(DateTime timestamp, bool isTimeout) async {
    debugPrint('Foreground service onDestroy(isTimeout: $isTimeout)');
  }

  @override
  void onReceiveData(Object data) {}
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    // Load Let's Encrypt certificate for network compatibility
    ByteData data = await PlatformAssetBundle().load(
      'assets/ca/lets-encrypt-r3.pem',
    );
    SecurityContext.defaultContext.setTrustedCertificatesBytes(
      data.buffer.asUint8List(),
    );
  } catch (e) {
    // Already added, do nothing (see #375)
  }
  await SimpleLocalization.ensureInitialized();

  // Enable edge-to-edge mode for Android 10+ (API 29)
  if ((await DeviceInfoPlugin().androidInfo).version.sdkInt >= 29) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(systemNavigationBarColor: Colors.transparent),
    );
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  final np = NotificationsProvider();
  await np.initialize();
  FlutterForegroundTask.initCommunicationPort();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppsProvider()),
        ChangeNotifierProvider(create: (context) => SettingsProvider()),
        Provider(create: (context) => np),
        Provider(create: (context) => LogsProvider()),
      ],
      child: SimpleLocalization(
        supportedLocales: supportedLocales.map((e) => e.key).toList(),
        path: localeDir,
        fallbackLocale: fallbackLocale,
        useOnlyLangCode: false,
        child: const Updatium(),
      ),
    ),
  );
  BackgroundFetch.registerHeadlessTask(backgroundFetchHeadlessTask);
}

class Updatium extends StatefulWidget {
  const Updatium({super.key});

  @override
  State<Updatium> createState() => _UpdatiumState();
}

class _UpdatiumState extends State<Updatium> {
  var existingUpdateInterval = -1;
  SettingsProvider? _settingsProvider;
  VoidCallback? _oldLocaleChangedCallback;

  @override
  void initState() {
    super.initState();
    initPlatformState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      requestNonOptionalPermissions();
    });

    // Store provider reference to avoid using context in callback
    _settingsProvider = context.read<SettingsProvider>();

    // Store old callback and set new one
    _oldLocaleChangedCallback =
        WidgetsBinding.instance.platformDispatcher.onLocaleChanged;
    WidgetsBinding.instance.platformDispatcher.onLocaleChanged = () {
      if (_settingsProvider?.forcedLocale == null) {
        _settingsProvider?.resetLocaleSafe(context);
      }
    };
  }

  Future<void> requestNonOptionalPermissions() async {
    // Handle notification and battery optimization permissions
    final NotificationPermission notificationPermission =
        await FlutterForegroundTask.checkNotificationPermission();
    if (notificationPermission != NotificationPermission.granted) {
      await FlutterForegroundTask.requestNotificationPermission();
    }
    if (!await FlutterForegroundTask.isIgnoringBatteryOptimizations) {
      await FlutterForegroundTask.requestIgnoreBatteryOptimization();
    }
  }

  void initForegroundService([int intervalMinutes = 15]) {
    // Initialize foreground service if not already initialized
    // ignore: invalid_use_of_visible_for_testing_member
    if (!FlutterForegroundTask.isInitialized) {
      FlutterForegroundTask.init(
        androidNotificationOptions: AndroidNotificationOptions(
          channelId: 'bg_update',
          channelName: tr('foregroundService'),
          channelDescription: tr('foregroundService'),
          onlyAlertOnce: true,
        ),
        iosNotificationOptions: const IOSNotificationOptions(
          showNotification: false,
          playSound: false,
        ),
        foregroundTaskOptions: ForegroundTaskOptions(
          eventAction: ForegroundTaskEventAction.repeat(
            intervalMinutes * 60000,
          ),
          autoRunOnBoot: true,
          autoRunOnMyPackageReplaced: true,
          allowWakeLock: false,
          allowWifiLock: false,
        ),
      );
    }
  }

  Future<ServiceRequestResult?> startForegroundService(
    bool restart, [
    int? intervalMinutes,
  ]) async {
    initForegroundService(intervalMinutes ?? 15);
    if (await FlutterForegroundTask.isRunningService) {
      if (restart) {
        return FlutterForegroundTask.restartService();
      }
    } else {
      return FlutterForegroundTask.startService(
        serviceTypes: [ForegroundServiceTypes.specialUse],
        serviceId: 666,
        notificationTitle: tr('foregroundService'),
        notificationText: tr('fgServiceNotice'),
        notificationIcon: NotificationIcon(
          metaDataName:
              'io.github.omeritzics.updatium.service.NOTIFICATION_ICON',
        ),
        callback: startCallback,
      );
    }
    return null;
  }

  Future<ServiceRequestResult?> stopForegroundService() async {
    if (await FlutterForegroundTask.isRunningService) {
      return await FlutterForegroundTask.stopService();
    }
    return null;
  }

  @override
  void dispose() {
    // Restore old locale changed callback to prevent memory leak
    if (_oldLocaleChangedCallback != null) {
      WidgetsBinding.instance.platformDispatcher.onLocaleChanged =
          _oldLocaleChangedCallback;
    }
    super.dispose();
  }

  Future<void> initPlatformState() async {
    // Configure background fetch tasks
    await BackgroundFetch.configure(
      BackgroundFetchConfig(
        minimumFetchInterval: 15,
        stopOnTerminate: false,
        startOnBoot: true,
        enableHeadless: true,
        requiresBatteryNotLow: false,
        requiresCharging: false,
        requiresStorageNotLow: false,
        requiresDeviceIdle: false,
        requiredNetworkType: NetworkType.ANY,
      ),
      (String taskId) async {
        await bgUpdateCheck(taskId, null);
        BackgroundFetch.finish(taskId);
      },
      (String taskId) async {
        context.read<LogsProvider>().add('BG update task timed out.');
        BackgroundFetch.finish(taskId);
      },
    );
    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = context.watch<SettingsProvider>();
    AppsProvider appsProvider = context.read<AppsProvider>();
    LogsProvider logs = context.read<LogsProvider>();
    NotificationsProvider notifs = context.read<NotificationsProvider>();

    // Toggle between Foreground Service and Background Fetch
    if (settingsProvider.updateInterval == 0) {
      stopForegroundService();
      BackgroundFetch.stop();
    } else {
      if (settingsProvider.useFGService) {
        BackgroundFetch.stop();
        startForegroundService(false, settingsProvider.updateInterval);
      } else {
        stopForegroundService();
        BackgroundFetch.start();
      }
    }

    if (settingsProvider.prefs == null) {
      settingsProvider.initializeSettings();
    } else {
      bool isFirstRun = settingsProvider.checkAndFlipFirstRun();
      if (isFirstRun) {
        logs.add('This is the first ever run of Updatium.');
        // Auto-add Updatium to tracked apps list on first run
        if (!fdroid) {
          getInstalledInfo(updatiumId)
              .then((value) {
                if (value?.versionName != null) {
                  appsProvider.saveApps([
                    App(
                      updatiumId,
                      updatiumUrl,
                      'omeritzics',
                      'Updatium',
                      value!.versionName,
                      value.versionName!,
                      [],
                      0,
                      {
                        'versionDetection': true,
                        'apkFilterRegEx': 'fdroid',
                        'invertAPKFilter': true,
                      },
                      null,
                      false,
                    ),
                  ], onlyIfExists: false);
                }
              })
              .catchError((err) {
                debugPrint(err);
              });
        }
      }

      // Sync local and device locale if needed
      if (!supportedLocales.map((e) => e.key).contains(context.locale)) {
        settingsProvider.resetLocaleSafe(context);
      } else if (settingsProvider.forcedLocale != null &&
          context.locale != settingsProvider.forcedLocale) {
        // Apply forced locale if it's set but not currently active
        context.setLocale(settingsProvider.forcedLocale!);
      }
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      notifs.checkLaunchByNotif();
      GitHubStarPrompt.initializeAndCheck(context);
    });

    return WithForegroundTask(
      child: DynamicColorBuilder(
        builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
          ColorScheme lightColorScheme;
          ColorScheme darkColorScheme;

          // Configure ColorScheme (Material You vs Seed)
          if (lightDynamic != null &&
              darkDynamic != null &&
              settingsProvider.useMaterialYou) {
            lightColorScheme = lightDynamic;
            darkColorScheme = darkDynamic;
          } else {
            lightColorScheme = ColorScheme.fromSeed(
              seedColor: settingsProvider.themeColor,
            );
            darkColorScheme = ColorScheme.fromSeed(
              seedColor: settingsProvider.themeColor,
              brightness: Brightness.dark,
            );
          }

          // Apply pure black surface for AMOLED black theme
          if (settingsProvider.useBlackTheme) {
            darkColorScheme = darkColorScheme.copyWith(
              surface: Colors.black,
              // NOTE: LET'S SEE WHETHER FLUTTER'S DEFAULT CONFIGS ARE BETTER FOR THE AMOLED THEME
              // surfaceContainerHighest: Colors.white.withValues(alpha: 0.20),
              // surfaceContainerHigh: Colors.white.withValues(alpha: 0.16),
              surfaceContainer: Colors.black,
              surfaceContainerLow: Colors.black,
              surfaceDim: Colors.black,
              surfaceBright: Colors.black,
              onSurface: Colors.white,
              // onSurfaceVariant: Colors.white.withValues(alpha: 0.6),
              // outline: Colors.white.withValues(alpha: 0.5),
              // outlineVariant: Colors.white.withValues(alpha: 0.25),
            );
          }

          if (settingsProvider.useSystemFont) NativeFeatures.loadSystemFont();

          // Determine primary font based on locale
          String getPrimaryFontForLocale(Locale locale) {
            if (settingsProvider.useSystemFont) {
              return 'SystemFont';
            }

            // CJK languages
            if (locale.languageCode == 'zh' ||
                locale.languageCode == 'ja' ||
                locale.languageCode == 'ko') {
              return 'NotoSansCJK';
            }

            // Hebrew
            if (locale.languageCode == 'he') {
              return 'NotoSansHebrew';
            }

            // Arabic
            if (locale.languageCode == 'ar' ||
                locale.languageCode == 'fa' ||
                locale.languageCode == 'ug') {
              return 'NotoSansArabic';
            }

            // Default to Google Sans Flex for other languages
            return 'GoogleSansFlex';
          }

          // Shared theme component generator with Material Design Expressive
          ThemeData createTheme(ColorScheme scheme) {
            return ThemeData(
              useMaterial3: true,
              colorScheme: scheme,
              fontFamily: getPrimaryFontForLocale(context.locale),
              fontFamilyFallback: const [
                'Inter',
                'GoogleSansFlex',
                'NotoSansCJK',
                'NotoSansHebrew',
                'NotoSansArabic',
              ],

              // Keyboard/TV navigation support
              focusColor: scheme.primary.withValues(alpha: 0.2),
              highlightColor: scheme.primary.withValues(alpha: 0.1),

              // Material 3 Outlined Text Fields
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: scheme.outline),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: scheme.primary, width: 2),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: scheme.error, width: 2),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: scheme.error, width: 2),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                hintStyle: TextStyle(
                  color: scheme.onSurfaceVariant.withValues(alpha: 0.7),
                  fontWeight: FontWeight.w400,
                ),
                labelStyle: TextStyle(
                  color: scheme.onSurfaceVariant,
                  fontWeight: FontWeight.w400,
                ),
                floatingLabelStyle: TextStyle(
                  color: scheme.primary,
                  fontWeight: FontWeight.w500,
                ),
              ),

              // Material 3 Extended Floating Action Button
              floatingActionButtonTheme: FloatingActionButtonThemeData(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                extendedPadding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 20,
                ),
                extendedTextStyle: TextStyle(fontWeight: FontWeight.w500),
                foregroundColor: scheme.onPrimary,
                backgroundColor: scheme.primary,
                iconSize: 24,
              ),

              // Minimal AppBar Theme for font and color consistency
              appBarTheme: AppBarTheme(
                backgroundColor: scheme.surface,
                foregroundColor: scheme.onSurface,
                centerTitle: true,
                titleTextStyle: TextStyle(
                  color: scheme.onSurface,
                  fontWeight: FontWeight.w600,
                ),
                iconTheme: IconThemeData(color: scheme.onSurface, size: 24),
              ),

              // Expressive List Tiles
              listTileTheme: ListTileThemeData(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                selectedTileColor: scheme.surface.withValues(alpha: 0.2),
                iconColor: scheme.onSurfaceVariant,
                textColor: scheme.onSurface,
                titleTextStyle: TextStyle(
                  color: scheme.onSurface,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                subtitleTextStyle: TextStyle(
                  color: scheme.onSurfaceVariant,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),

              // Progress Indicators
              progressIndicatorTheme: const ProgressIndicatorThemeData(),

              // Page Transitions
              pageTransitionsTheme: const PageTransitionsTheme(
                builders: {
                  TargetPlatform.android:
                      PredictiveBackPageTransitionsBuilder(),
                },
              ),
            );
          }

          return Directionality(
            textDirection: isLocaleRTL(context.locale)
                ? ui.TextDirection.rtl
                : ui.TextDirection.ltr,
            child: MaterialApp(
              title: 'Updatium',
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              navigatorKey: globalNavigatorKey,
              debugShowCheckedModeBanner: false,
              theme: createTheme(lightColorScheme),
              darkTheme: createTheme(darkColorScheme),
              themeMode: settingsProvider.theme == ThemeSettings.dark
                  ? ThemeMode.dark
                  : (settingsProvider.theme == ThemeSettings.light
                        ? ThemeMode.light
                        : ThemeMode.system),
              home: Shortcuts(
                shortcuts: <LogicalKeySet, Intent>{
                  LogicalKeySet(LogicalKeyboardKey.select):
                      const ActivateIntent(),
                  LogicalKeySet(LogicalKeyboardKey.enter):
                      const ActivateIntent(),
                  LogicalKeySet(LogicalKeyboardKey.arrowUp):
                      const DirectionalFocusIntent(TraversalDirection.up),
                  LogicalKeySet(LogicalKeyboardKey.arrowDown):
                      const DirectionalFocusIntent(TraversalDirection.down),
                  LogicalKeySet(LogicalKeyboardKey.arrowLeft):
                      const DirectionalFocusIntent(TraversalDirection.left),
                  LogicalKeySet(LogicalKeyboardKey.arrowRight):
                      const DirectionalFocusIntent(TraversalDirection.right),
                  LogicalKeySet(LogicalKeyboardKey.tab):
                      const NextFocusIntent(),
                  LogicalKeySet(LogicalKeyboardKey.escape):
                      const DismissIntent(),
                },
                child: const HomePage(),
              ),
            ),
          );
        },
      ),
    );
  }
}

void showMessage(dynamic e, BuildContext context, {bool isError = false}) {
  Provider.of<LogsProvider>(
    context,
    listen: false,
  ).add(e.toString(), level: isError ? LogLevels.error : LogLevels.info);

  if (e is String || (e is UpdatiumError && !e.unexpected)) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  } else {
    showAdaptiveDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            e is MultiAppMultiError
                ? tr(isError ? 'someErrors' : 'updates')
                : tr(isError ? 'unexpectedError' : 'unknown'),
          ),
          content: SelectableText(e.toString()),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(tr('ok')),
            ),
          ],
        );
      },
    );
  }
}

void showError(dynamic e, BuildContext context) {
  showMessage(e, context, isError: true);
}

// FreeDroidWarn integration
const _freedroidWarnChannel = MethodChannel(
  'io.github.omeritzics.updatium/freedroid_warn',
);

Future<bool> _shouldShowWarning() async {
  try {
    final result = await _freedroidWarnChannel.invokeMethod<bool>(
      'shouldShowWarning',
    );
    return result ?? false;
  } catch (e) {
    return false;
  }
}

Future<Map<String, String>> _getWarningStrings() async {
  try {
    final result = await _freedroidWarnChannel
        .invokeMethod<Map<dynamic, dynamic>>('getWarningStrings');
    if (result != null) {
      return result.map(
        (key, value) => MapEntry(key.toString(), value.toString()),
      );
    }
    return {};
  } catch (e) {
    return {};
  }
}

Future<bool> _saveWarningVersion() async {
  try {
    final result = await _freedroidWarnChannel.invokeMethod<bool>(
      'saveWarningVersion',
    );
    return result ?? false;
  } catch (e) {
    return false;
  }
}

Future<void> showFreeDroidWarnDialog(BuildContext context) async {
  final shouldShow = await _shouldShowWarning();
  if (!shouldShow || !context.mounted) return;

  final strings = await _getWarningStrings();
  if (strings.isEmpty || !context.mounted) return;

  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      content: Text(strings['message'] ?? ''),
      actions: [
        TextButton(
          onPressed: () async {
            final uri = Uri.parse('https://keepandroidopen.org');
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri, mode: LaunchMode.externalApplication);
            }
          },
          child: Text(strings['moreInfo'] ?? 'Details'),
        ),
        TextButton(
          onPressed: () async {
            final uri = Uri.parse(
              'https://github.com/woheller69/FreeDroidWarn?tab=readme-ov-file#solutions',
            );
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri, mode: LaunchMode.externalApplication);
            }
          },
          child: Text(strings['solution'] ?? 'Solution'),
        ),
        TextButton(
          onPressed: () async {
            await _saveWarningVersion();
            if (context.mounted) {
              Navigator.of(context).pop();
            }
          },
          child: const Text('OK'),
        ),
      ],
    ),
  );
}
