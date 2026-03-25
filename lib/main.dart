import 'dart:io';

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
import 'package:dynamic_color/dynamic_color.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:background_fetch/background_fetch.dart';
import 'package:easy_localization/easy_localization.dart';
// ignore: implementation_imports
import 'package:easy_localization/src/easy_localization_controller.dart';
// ignore: implementation_imports
import 'package:easy_localization/src/localization.dart';
import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:updatium/services/github_star_prompt.dart';

List<MapEntry<Locale, String>> supportedLocales = const [
  MapEntry(Locale('en'), 'English'),
  MapEntry(Locale('zh'), '简体中文'),
  MapEntry(Locale('zh', 'Hant_TW'), '臺灣話'),
  MapEntry(Locale('it'), 'Italiano'),
  MapEntry(Locale('ja'), '日本語'),
  MapEntry(Locale('he'), 'עברית'),
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
];
const fallbackLocale = Locale('en');
const localeDir = 'assets/translations';
var fdroid = false;

final globalNavigatorKey = GlobalKey<NavigatorState>();

Future<void> loadTranslations() async {
  // See easy_localization/issues/210
  await EasyLocalizationController.initEasyLocation();
  var s = SettingsProvider();
  try {
    await s.initializeSettings();
    var forceLocale = s.forcedLocale;
    final controller = EasyLocalizationController(
      saveLocale: true,
      forceLocale: forceLocale,
      fallbackLocale: fallbackLocale,
      supportedLocales: supportedLocales.map((e) => e.key).toList(),
      assetLoader: const RootBundleAssetLoader(),
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
void backgroundFetchHeadlessTask(HeadlessTask task) async {
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
  await EasyLocalization.ensureInitialized();

  // Enable edge-to-edge mode for Android 10+ (API 29)
  if ((await DeviceInfoPlugin().androidInfo).version.sdkInt >= 29) {
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
      child: EasyLocalization(
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

  @override
  void initState() {
    super.initState();
    initPlatformState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      requestNonOptionalPermissions();
    });
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

  void initForegroundService() {
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
          eventAction: ForegroundTaskEventAction.repeat(900000),
          autoRunOnBoot: true,
          autoRunOnMyPackageReplaced: true,
          allowWakeLock: true,
          allowWifiLock: true,
        ),
      );
    }
  }

  Future<ServiceRequestResult?> startForegroundService(bool restart) async {
    initForegroundService();
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
        startForegroundService(false);
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
      if (!supportedLocales.map((e) => e.key).contains(context.locale) ||
          (settingsProvider.forcedLocale == null &&
              context.deviceLocale != context.locale)) {
        settingsProvider.resetLocaleSafe(context);
      }
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      notifs.checkLaunchByNotif();
      GitHubStarPrompt.initializeAndCheck(context);
    });

    return WithForegroundTask(
      child: DynamicColorBuilder(
        builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {

          // Configure ColorScheme using Material Design tokens
          if (lightDynamic != null &&
              darkDynamic != null &&
              settingsProvider.useMaterialYou) {
          } else {
            // Use Material Design tokens for light theme
            // Use Material Design tokens for dark theme  
          }

          // Apply AMOLED black theme with Material Design tokens - slightly brighter than pure black
          if (settingsProvider.useBlackTheme) {
          }

          if (settingsProvider.useSystemFont) NativeFeatures.loadSystemFont();

          // Shared theme component generator with Material Design Expressive

              // Expressive Divider
              DividerThemeData(
                color: scheme.outlineVariant,
                thickness: 1,
                space: 1,
              );

              // Material Expressive Chip Theme - use default Expressive properties
              const ChipThemeData();

              // Material Expressive Bottom Navigation Bar - use default Expressive properties
              const BottomNavigationBarThemeData();

              // Material Design 3 2024 Progress Indicators
              const ProgressIndicatorThemeData(
                year2023: false,
              );

              // Material Design 3 2024 Expressive Slider Theme - use default Expressive properties
              const SliderThemeData(
                year2023: false,
                showValueIndicator: ShowValueIndicator.onDrag,
              );

              // Material Expressive Switch Theme - use default Expressive properties
              const SwitchThemeData();
            );
          }

          // Set theme-aware system UI overlay style for Android 10+
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Brightness brightness;
            if (settingsProvider.theme == ThemeSettings.dark) {
              brightness = Brightness.dark;
            } else if (settingsProvider.theme == ThemeSettings.light) {
              brightness = Brightness.light;
            } else {
              // System theme - check platform brightness
              final platformBrightness = MediaQuery.of(context).platformBrightness;
              brightness = platformBrightness;
            }
            
            final systemNavigationBarColor = brightness == Brightness.dark
                ? Colors.black
                : Colors.white;
            
            SystemChrome.setSystemUIOverlayStyle(
              SystemUiOverlayStyle(systemNavigationBarColor: systemNavigationBarColor),
            );
          });

          return MaterialApp(
            title: 'Updatium',
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            navigatorKey: globalNavigatorKey,
            debugShowCheckedModeBanner: false,
            theme: createTheme(lightColorScheme, false),
            darkTheme: createTheme(darkColorScheme, true),
            themeMode: settingsProvider.theme == ThemeSettings.dark
                ? ThemeMode.dark
                : (settingsProvider.theme == ThemeSettings.light
                      ? ThemeMode.light
                      : ThemeMode.system),
            home: Shortcuts(
              shortcuts: <LogicalKeySet, Intent>{
                LogicalKeySet(LogicalKeyboardKey.select):
                    const ActivateIntent(),
              },
              child: const HomePage(),
            ),
          );
        },
      ),
    );
  }
}
