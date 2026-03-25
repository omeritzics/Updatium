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
          ColorScheme lightColorScheme;
          ColorScheme darkColorScheme;

          // Configure ColorScheme using Material Design tokens
          if (lightDynamic != null &&
              darkDynamic != null &&
              settingsProvider.useMaterialYou) {
            lightColorScheme = lightDynamic;
            darkColorScheme = darkDynamic;
          } else {
            // Use Material Design tokens for light theme
            lightColorScheme = ColorScheme.fromSeed(
              seedColor: settingsProvider.themeColor,
              brightness: Brightness.light,
            );
            // Use Material Design tokens for dark theme  
            darkColorScheme = ColorScheme.fromSeed(
              seedColor: settingsProvider.themeColor,
              brightness: Brightness.dark,
            );
          }

          // Apply AMOLED black theme with Material Design tokens - much darker than regular dark theme
          if (settingsProvider.useBlackTheme) {
            darkColorScheme = ColorScheme.fromSeed(
              seedColor: updatiumThemeColor,
              brightness: Brightness.dark,
            ).copyWith(
              // Pure black surfaces for AMOLED displays
              surface: Colors.black,
              surfaceContainerHighest: Color(0xFF0D1117),  // Much darker than standard
              surfaceContainerHigh: Color(0xFF0A0E14),   // Much darker than standard
              surfaceContainer: Color(0xFF070B0F),    // Much darker than standard
              surfaceContainerLow: Color(0xFF040509),     // Much darker than standard
              surfaceContainerLowest: Color(0xFF020307),  // Much darker than standard
              surfaceDim: Colors.black,
              surfaceBright: Color(0xFF0A0E14),
              // High contrast white text for pure black background
              onSurface: Colors.white,
              onSurfaceVariant: Colors.white70,
              outline: Colors.white70,
              outlineVariant: Colors.white54,
            );
          }

          if (settingsProvider.useSystemFont) NativeFeatures.loadSystemFont();

          // Shared theme component generator with Material Design Expressive
          ThemeData createTheme(ColorScheme scheme, bool isDark) {
            return ThemeData(
              useMaterial3: true,
              colorScheme: scheme,
              fontFamily: settingsProvider.useSystemFont
                  ? 'SystemFont'
                  : 'Inter',

              // Expressive Typography
              textTheme: TextTheme(
                displayLarge: TextStyle(
                  fontSize: 57,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.25,
                  height: 1.12,
                  color: scheme.onSurface,
                ),
                displayMedium: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0,
                  height: 1.16,
                  color: scheme.onSurface,
                ),
                displaySmall: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0,
                  height: 1.22,
                  color: scheme.onSurface,
                ),
                headlineLarge: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0,
                  height: 1.25,
                  color: scheme.onSurface,
                ),
                headlineMedium: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0,
                  height: 1.29,
                  color: scheme.onSurface,
                ),
                headlineSmall: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0,
                  height: 1.33,
                  color: scheme.onSurface,
                ),
                titleLarge: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0,
                  height: 1.27,
                  color: scheme.onSurface,
                ),
                titleMedium: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.15,
                  height: 1.5,
                  color: scheme.onSurface,
                ),
                titleSmall: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.1,
                  height: 1.43,
                  color: scheme.onSurface,
                ),
                bodyLarge: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5,
                  height: 1.5,
                  color: scheme.onSurface,
                ),
                bodyMedium: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.25,
                  height: 1.5,
                  color: scheme.onSurface,
                ),
                bodySmall: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.4,
                  height: 1.33,
                  color: scheme.onSurface,
                ),
                labelLarge: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.1,
                  height: 1.43,
                  color: scheme.onSurface,
                ),
                labelMedium: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5,
                  height: 1.33,
                  color: scheme.onSurface,
                ),
                labelSmall: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5,
                  height: 1.27,
                  color: scheme.onSurface,
                ),
              ),

              // Material Expressive Card Theme - use default Expressive properties
              cardTheme: const CardThemeData(),
              // Material Expressive FilledButton - use default Expressive properties
              filledButtonTheme: const FilledButtonThemeData(),

              // Material Expressive ElevatedButton - use default Expressive properties
              elevatedButtonTheme: const ElevatedButtonThemeData(),

              // Material Expressive OutlinedButton - use default Expressive properties
              outlinedButtonTheme: const OutlinedButtonThemeData(),

              // Material Expressive TextButton - use default Expressive properties
              textButtonTheme: const TextButtonThemeData(),
              // Material Expressive Text Fields - use default Expressive properties
              inputDecorationTheme: const InputDecorationTheme(),

              // Material 3 Menu Theme
              dropdownMenuTheme: DropdownMenuThemeData(
                menuStyle: MenuStyle(
                  backgroundColor: WidgetStateProperty.all(
                    scheme.surfaceContainer,
                  ),
                  surfaceTintColor: WidgetStateProperty.all(scheme.surfaceTint),
                  elevation: WidgetStateProperty.all(3),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  padding: WidgetStateProperty.all(EdgeInsets.zero),
                ),
                inputDecorationTheme: InputDecorationTheme(
                  filled: true,
                  fillColor: scheme.surfaceContainerHighest,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(color: scheme.primary, width: 2),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  hintStyle: TextStyle(
                    color: scheme.onSurfaceVariant,
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
              ),

              // Material 3 Extended Floating Action Button
              floatingActionButtonTheme: FloatingActionButtonThemeData(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                elevation: isDark ? 6 : 8,
                extendedPadding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                extendedTextStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.1,
                ),
                foregroundColor: scheme.onPrimary,
                backgroundColor: scheme.primary,
                iconSize: 24,
              ),

              // Expressive App Bar
              appBarTheme: AppBarTheme(
                backgroundColor: scheme.surface,
                foregroundColor: scheme.onSurface,
                elevation: 0,
                scrolledUnderElevation: 1,
                shadowColor: isDark ? Colors.black26 : Colors.black12,
                surfaceTintColor: scheme.surfaceTint,
                centerTitle: true,
                titleTextStyle: TextStyle(
                  color: scheme.onSurface,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.5,
                  height: 1.27,
                ),
                iconTheme: IconThemeData(color: scheme.onSurface, size: 24),
                actionsIconTheme: IconThemeData(
                  color: scheme.onSurface,
                  size: 24,
                ),
              ),

              // Material Expressive List Tiles - use default Expressive properties
              listTileTheme: const ListTileThemeData(),

              // Expressive Page Transitions
              pageTransitionsTheme: const PageTransitionsTheme(
                builders: {
                  TargetPlatform.android:
                      PredictiveBackPageTransitionsBuilder(),
                  TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
                },
              ),

              // Expressive Text Selection
              textSelectionTheme: TextSelectionThemeData(
                selectionColor: scheme.primary,
                selectionHandleColor: scheme.primary,
                cursorColor: scheme.primary,
              ),

              // Expressive Touch Feedback
              splashFactory: InkRipple.splashFactory,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

              // Expressive Divider
              dividerTheme: DividerThemeData(
                color: scheme.outlineVariant,
                thickness: 1,
                space: 1,
              ),

              // Material Expressive Chip Theme - use default Expressive properties
              chipTheme: const ChipThemeData(),

              // Material Expressive Bottom Navigation Bar - use default Expressive properties
              bottomNavigationBarTheme: const BottomNavigationBarThemeData(),

              // Material Design 3 2024 Progress Indicators
              progressIndicatorTheme: const ProgressIndicatorThemeData(
                year2023: false,
              ),

              // Material Design 3 2024 Expressive Slider Theme - use default Expressive properties
              sliderTheme: const SliderThemeData(
                year2023: false,
                showValueIndicator: ShowValueIndicator.onDrag,
              ),

              // Material Expressive Switch Theme - use default Expressive properties
              switchTheme: const SwitchThemeData(),
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
