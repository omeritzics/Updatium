import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';
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

import 'package:updatium/services/slang_converter.dart';
import 'package:simple_localization/src/simple_localization_controller.dart';
import 'package:simple_localization/src/localization.dart';
import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:updatium/services/github_star_prompt.dart';
import 'package:url_launcher/url_launcher.dart';

List<MapEntry<Locale, String>> supportedLocales = const [
  MapEntry(Locale('en'), 'English'),
  MapEntry(Locale('el'), 'Ελληνικά'),
  MapEntry(Locale('zh'), '简体中文'),
  MapEntry(Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW'), '臺灣話'),
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
  MapEntry(Locale('id'), 'Bahasa Indonesia'),
  MapEntry(Locale('ko'), '한국어'),
  MapEntry(Locale('ca'), 'Català'),
  MapEntry(Locale('ar'), 'العربية'),
  MapEntry(Locale('ml'), 'മലയാളം'),
  MapEntry(Locale('gl'), 'Galego'),
  MapEntry(Locale('bg'), 'Български'),
  MapEntry(Locale('en', 'KU'), 'Kurdî'),
  MapEntry(Locale('ms'), 'Bahasa Melayu'),
  MapEntry(Locale('nb'), 'Norsk (Bokmål)'),
  MapEntry(Locale('bn'), 'বাংলা'),
  MapEntry(Locale('ro'), 'Română'),
  MapEntry(Locale('ug'), 'ئۇيغۇرچە'),
  MapEntry(Locale('hy'), 'Հայերեն'),
  MapEntry(Locale('ta'), 'தமிழ்'),
  MapEntry(Locale('fil'), 'Filipino'),
];
const fallbackLocale = Locale('en');
const localeDir = 'assets/translations';
var fdroid = false;

final globalNavigatorKey = GlobalKey<NavigatorState>();

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
  await initializeDateFormatting();
  await SimpleLocalization.ensureInitialized();
  if ((await DeviceInfoPlugin().androidInfo).version.sdkInt >= 29) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        statusBarColor: Colors.transparent,
        systemStatusBarContrastEnforced: false,
      ),
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
        ChangeNotifierProvider(create: (context) => LogsProvider()),
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

  @override
  void initState() {
    super.initState();
    initPlatformState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      requestNonOptionalPermissions();
    });

    // Store provider reference to avoid using context in callback
    _settingsProvider = context.read<SettingsProvider>();

    // Set new callback
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
      // ignore: use_build_context_synchronously
      var settingsProvider = context.read<SettingsProvider>();
      if (settingsProvider.showBatteryOptimizationPrompt) {
        await FlutterForegroundTask.requestIgnoreBatteryOptimization();
      }
    }
  }

  void initForegroundService() {
    // Initialize foreground service if not already initialized
    // ignore: invalid_use_of_visible_for_testing_member
    if (!FlutterForegroundTask.isInitialized) {
      FlutterForegroundTask.init(
        androidNotificationOptions: AndroidNotificationOptions(
          channelId: 'bg_update',
          channelName: t('foregroundService'),
          channelDescription: t('foregroundService'),
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
        notificationTitle: t('foregroundService'),
        notificationText: t('fgServiceNotice'),
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
                        'useVersionCodeAsOSVersion': true,
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
            // Ensure surface container colors have proper opacity for switch visibility
            lightColorScheme = lightColorScheme.copyWith(
              surfaceContainerHighest: lightColorScheme.surfaceContainerHighest,
              surfaceContainerHigh: lightColorScheme.surfaceContainerHigh,
              surfaceContainer: lightColorScheme.surfaceContainer,
            );
            darkColorScheme = darkColorScheme.copyWith(
              surfaceContainerHighest: darkColorScheme.surfaceContainerHighest,
              surfaceContainerHigh: darkColorScheme.surfaceContainerHigh,
              surfaceContainer: darkColorScheme.surfaceContainer,
            );
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
          // Apply semi-transparent surface colors for AMOLED black theme
          if (settingsProvider.useBlackTheme) {
            darkColorScheme = darkColorScheme.copyWith(
              surface: Colors.black,
              surfaceContainerHighest: Colors.white.withValues(alpha: 0.17),
              surfaceContainerHigh: Colors.white.withValues(alpha: 0.12),
              // surfaceContainer: Colors.white.withValues(alpha: 0.08),
              // surfaceContainerLow: Colors.white.withValues(alpha: 0.04),
              // surfaceContainerLowest: Colors.white.withValues(alpha: 0.02),
              surfaceDim: Colors.black,
              surfaceBright: Colors.white.withValues(alpha: 0.05),
              onSurface: Colors.white.withValues(alpha: 0.95),
              onSurfaceVariant: Colors.white.withValues(alpha: 0.7),
              outline: Colors.white.withValues(alpha: 0.25),
              outlineVariant: Colors.white.withValues(alpha: 0.12),
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

            // Arabic
            if (locale.languageCode == 'ar' ||
                locale.languageCode == 'fa' ||
                locale.languageCode == 'ug') {
              return 'NotoSansArabic';
            }

            // Default to Google Sans for other languages
            return 'GoogleSans';
          }

          // Shared theme component generator with Material Design Expressive
          ThemeData createTheme(ColorScheme scheme, bool isDark) {
            // Define text theme as local variable for reusability
            final textTheme = TextTheme(
              displayLarge: TextStyle(
                fontSize: 57,
                fontWeight: FontWeight.w400,
                color: scheme.onSurface,
                fontFamily: getPrimaryFontForLocale(context.locale),
                fontFamilyFallback: const [
                  'GoogleSans',
                  'NotoSansCJK',
                  'NotoSansArabic',
                ],
              ),
              displayMedium: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w400,
                color: scheme.onSurface,
                fontFamily: getPrimaryFontForLocale(context.locale),
                fontFamilyFallback: const [
                  'GoogleSans',
                  'NotoSansCJK',
                  'NotoSansArabic',
                ],
              ),
              displaySmall: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w400,
                color: scheme.onSurface,
                fontFamily: getPrimaryFontForLocale(context.locale),
                fontFamilyFallback: const [
                  'GoogleSans',
                  'NotoSansCJK',
                  'NotoSansArabic',
                ],
              ),
              headlineLarge: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w400,
                color: scheme.onSurface,
                fontFamily: getPrimaryFontForLocale(context.locale),
                fontFamilyFallback: const [
                  'GoogleSans',
                  'NotoSansCJK',
                  'NotoSansArabic',
                ],
              ),
              headlineMedium: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400,
                color: scheme.onSurface,
                fontFamily: getPrimaryFontForLocale(context.locale),
                fontFamilyFallback: const [
                  'GoogleSans',
                  'NotoSansCJK',
                  'NotoSansArabic',
                ],
              ),
              headlineSmall: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: scheme.onSurface,
                fontFamily: getPrimaryFontForLocale(context.locale),
                fontFamilyFallback: const [
                  'GoogleSans',
                  'NotoSansCJK',
                  'NotoSansArabic',
                ],
              ),
              titleLarge: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: scheme.onSurface,
                fontFamily: getPrimaryFontForLocale(context.locale),
                fontFamilyFallback: const [
                  'GoogleSans',
                  'NotoSansCJK',
                  'NotoSansArabic',
                ],
              ),
              titleMedium: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: scheme.onSurface,
                fontFamily: getPrimaryFontForLocale(context.locale),
                fontFamilyFallback: const [
                  'GoogleSans',
                  'NotoSansCJK',
                  'NotoSansArabic',
                ],
              ),
              titleSmall: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: scheme.onSurface,
                fontFamily: getPrimaryFontForLocale(context.locale),
                fontFamilyFallback: const [
                  'GoogleSans',
                  'NotoSansCJK',
                  'NotoSansArabic',
                ],
              ),
              bodyLarge: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: scheme.onSurface,
                fontFamily: getPrimaryFontForLocale(context.locale),
                fontFamilyFallback: const [
                  'GoogleSans',
                  'NotoSansCJK',
                  'NotoSansArabic',
                ],
              ),
              bodyMedium: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: scheme.onSurface,
                fontFamily: getPrimaryFontForLocale(context.locale),
                fontFamilyFallback: const [
                  'GoogleSans',
                  'NotoSansCJK',
                  'NotoSansArabic',
                ],
              ),
              bodySmall: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: scheme.onSurface,
                fontFamily: getPrimaryFontForLocale(context.locale),
                fontFamilyFallback: const [
                  'GoogleSans',
                  'NotoSansCJK',
                  'NotoSansArabic',
                ],
              ),
              labelLarge: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: scheme.onSurface,
                fontFamily: getPrimaryFontForLocale(context.locale),
                fontFamilyFallback: const [
                  'GoogleSans',
                  'NotoSansCJK',
                  'NotoSansArabic',
                ],
              ),
              labelMedium: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: scheme.onSurface,
                fontFamily: getPrimaryFontForLocale(context.locale),
                fontFamilyFallback: const [
                  'GoogleSans',
                  'NotoSansCJK',
                  'NotoSansArabic',
                ],
              ),
              labelSmall: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: scheme.onSurface,
                fontFamily: getPrimaryFontForLocale(context.locale),
                fontFamilyFallback: const [
                  'GoogleSans',
                  'NotoSansCJK',
                  'NotoSansArabic',
                ],
              ),
            );

            return ThemeData(
              useMaterial3: true,
              colorScheme: scheme,
              fontFamily: getPrimaryFontForLocale(context.locale),
              fontFamilyFallback: const [
                'GoogleSans',
                'NotoSansCJK',
                'NotoSansArabic',
              ],

              // Expressive Typography
              textTheme: textTheme,

              // Expressive Card Design - preserve M3 Expressive transparency
              cardTheme: CardThemeData(
                elevation: isDark ? 2 : 1,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                surfaceTintColor: scheme.surfaceTint,
              ),
              // Expressive FilledButton with tonal styling - preserve M3 Expressive transparency
              filledButtonTheme: FilledButtonThemeData(
                style: FilledButton.styleFrom(
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 14,
                  ),
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: getPrimaryFontForLocale(context.locale),
                    fontFamilyFallback: const [
                      'GoogleSans',
                      'NotoSansCJK',
                      'NotoSansArabic',
                    ],
                  ),
                ),
              ),

              // Expressive ElevatedButton with subtle shadows
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 14,
                  ),
                  textStyle: TextStyle(
                    fontFamily: getPrimaryFontForLocale(context.locale),
                    fontFamilyFallback: const [
                      'GoogleSans',
                      'NotoSansCJK',
                      'NotoSansArabic',
                    ],
                  ),
                ),
              ),

              // Expressive OutlinedButton
              outlinedButtonTheme: OutlinedButtonThemeData(
                style: OutlinedButton.styleFrom(
                  shape: const StadiumBorder(),
                  side: BorderSide(color: scheme.outline, width: 1.5),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 14,
                  ),
                  textStyle: TextStyle(
                    fontFamily: getPrimaryFontForLocale(context.locale),
                    fontFamilyFallback: const [
                      'GoogleSans',
                      'NotoSansCJK',
                      'NotoSansArabic',
                    ],
                  ),
                ),
              ),

              // Expressive TextButton
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  textStyle: TextStyle(
                    fontFamily: getPrimaryFontForLocale(context.locale),
                    fontFamilyFallback: const [
                      'GoogleSans',
                      'NotoSansCJK',
                      'NotoSansArabic',
                    ],
                  ),
                ),
              ),
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
                  fontFamily: getPrimaryFontForLocale(context.locale),
                  fontFamilyFallback: const [
                    'GoogleSans',
                    'NotoSansCJK',
                    'NotoSansArabic',
                  ],
                ),
                labelStyle: TextStyle(
                  color: scheme.onSurfaceVariant,
                  fontWeight: FontWeight.w400,
                  fontFamily: getPrimaryFontForLocale(context.locale),
                  fontFamilyFallback: const [
                    'GoogleSans',
                    'NotoSansCJK',
                    'NotoSansArabic',
                  ],
                ),
                floatingLabelStyle: TextStyle(
                  color: scheme.primary,
                  fontWeight: FontWeight.w500,
                  fontFamily: getPrimaryFontForLocale(context.locale),
                  fontFamilyFallback: const [
                    'GoogleSans',
                    'NotoSansCJK',
                    'NotoSansArabic',
                  ],
                ),
              ),

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
                extendedTextStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: getPrimaryFontForLocale(context.locale),
                  fontFamilyFallback: const [
                    'GoogleSans',
                    'NotoSansCJK',
                    'NotoSansArabic',
                  ],
                ),
                foregroundColor: scheme.onPrimary,
                backgroundColor: scheme.primary,
                iconSize: 24,
              ),

              // Expressive App Bar
              appBarTheme: AppBarTheme(
                backgroundColor: scheme.surface,
                foregroundColor: scheme.onSurface,
                scrolledUnderElevation: 1,
                surfaceTintColor: scheme.surfaceTint,
                centerTitle: false,
                titleTextStyle: TextStyle(
                  color: scheme.onSurface,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  fontFamily: getPrimaryFontForLocale(context.locale),
                  fontFamilyFallback: const [
                    'GoogleSans',
                    'NotoSansCJK',
                    'NotoSansArabic',
                  ],
                ),
                iconTheme: IconThemeData(color: scheme.onSurface, size: 24),
                actionsIconTheme: IconThemeData(
                  color: scheme.onSurface,
                  size: 24,
                ),
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
                  fontFamily: getPrimaryFontForLocale(context.locale),
                  fontFamilyFallback: const [
                    'GoogleSans',
                    'NotoSansCJK',
                    'NotoSansArabic',
                  ],
                ),
                subtitleTextStyle: TextStyle(
                  color: scheme.onSurfaceVariant,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: getPrimaryFontForLocale(context.locale),
                  fontFamilyFallback: const [
                    'GoogleSans',
                    'NotoSansCJK',
                    'NotoSansArabic',
                  ],
                ),
              ),

              // Expressive Page Transitions
              pageTransitionsTheme: const PageTransitionsTheme(
                builders: {
                  TargetPlatform.android:
                      PredictiveBackPageTransitionsBuilder(),
                },
              ),

              // Expressive Text Selection
              textSelectionTheme: TextSelectionThemeData(
                selectionColor: scheme.primary.withValues(alpha: 0.3),
                selectionHandleColor: scheme.primary,
                cursorColor: scheme.primary,
              ),

              // Expressive Touch Feedback
              splashFactory: InkRipple.splashFactory,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

              // Expressive Chip Theme - preserve M3 Expressive transparency
              chipTheme: ChipThemeData(
                backgroundColor: scheme.surface.withValues(alpha: 0.1),
                selectedColor: scheme.secondaryContainer,
                disabledColor: scheme.surface,
                labelStyle: TextStyle(
                  color: scheme.onSurface,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: getPrimaryFontForLocale(context.locale),
                  fontFamilyFallback: const [
                    'GoogleSans',
                    'NotoSansCJK',
                    'NotoSansArabic',
                  ],
                ),
                secondaryLabelStyle: TextStyle(
                  color: scheme.onSecondaryContainer,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: getPrimaryFontForLocale(context.locale),
                  fontFamilyFallback: const [
                    'GoogleSans',
                    'NotoSansCJK',
                    'NotoSansArabic',
                  ],
                ),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),

              // Expressive Bottom Navigation Bar
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                backgroundColor: scheme.surface,
                selectedItemColor: scheme.onSecondaryContainer,
                unselectedItemColor: scheme.onSurfaceVariant,
                selectedLabelStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  fontFamily: getPrimaryFontForLocale(context.locale),
                  fontFamilyFallback: const [
                    'GoogleSans',
                    'NotoSansCJK',
                    'NotoSansArabic',
                  ],
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: getPrimaryFontForLocale(context.locale),
                  fontFamilyFallback: const [
                    'GoogleSans',
                    'NotoSansCJK',
                    'NotoSansArabic',
                  ],
                ),
                type: BottomNavigationBarType.fixed,
                elevation: isDark ? 3 : 8,
                landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
              ),

              // Material Design 3 2024 Progress Indicators
              progressIndicatorTheme: const ProgressIndicatorThemeData(),

              // Material Design 3 2024 Expressive Centered Slider Theme - preserve M3 Expressive transparency
              sliderTheme: SliderThemeData(
                trackHeight: 8,
                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 14),
                overlayShape: const RoundSliderOverlayShape(overlayRadius: 28),
                valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
                valueIndicatorTextStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: getPrimaryFontForLocale(context.locale),
                  fontFamilyFallback: const [
                    'GoogleSans',
                    'NotoSansCJK',
                    'NotoSansArabic',
                  ],
                ).copyWith(color: scheme.onPrimary),
                showValueIndicator: ShowValueIndicator.onDrag,
                activeTrackColor: scheme.primary,
                inactiveTrackColor: scheme.surfaceContainerHighest,
                thumbColor: scheme.primary,
                overlayColor: scheme.primary.withValues(alpha: 0.2),
                valueIndicatorColor: scheme.primary,
              ),

              // Dialog Theme for AMOLED black theme compatibility
              dialogTheme: DialogThemeData(
                titleTextStyle: TextStyle(
                  color: scheme.onSurface,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  fontFamily: getPrimaryFontForLocale(context.locale),
                  fontFamilyFallback: const [
                    'GoogleSans',
                    'NotoSansCJK',
                    'NotoSansArabic',
                  ],
                ),
                contentTextStyle: TextStyle(
                  color: scheme.onSurface,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: getPrimaryFontForLocale(context.locale),
                  fontFamilyFallback: const [
                    'GoogleSans',
                    'NotoSansCJK',
                    'NotoSansArabic',
                  ],
                ),
              ),
            );
          }

          return MaterialApp(
            title: 'Updatium',
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            navigatorKey: globalNavigatorKey,
            debugShowCheckedModeBanner: false,
            theme: createTheme(
              settingsProvider.theme == ThemeSettings.dark
                  ? darkColorScheme
                  : lightColorScheme,
              settingsProvider.theme == ThemeSettings.dark,
            ),
            darkTheme: createTheme(
              settingsProvider.theme == ThemeSettings.light
                  ? lightColorScheme
                  : darkColorScheme,
              settingsProvider.theme != ThemeSettings.light,
            ),
            home: Shortcuts(
              shortcuts: <LogicalKeySet, Intent>{
                LogicalKeySet(LogicalKeyboardKey.select):
                    const ActivateIntent(),
                LogicalKeySet(LogicalKeyboardKey.enter): const ActivateIntent(),
                LogicalKeySet(LogicalKeyboardKey.arrowUp):
                    const DirectionalFocusIntent(TraversalDirection.up),
                LogicalKeySet(LogicalKeyboardKey.arrowDown):
                    const DirectionalFocusIntent(TraversalDirection.down),
                LogicalKeySet(LogicalKeyboardKey.arrowLeft):
                    const DirectionalFocusIntent(TraversalDirection.left),
                LogicalKeySet(LogicalKeyboardKey.arrowRight):
                    const DirectionalFocusIntent(TraversalDirection.right),
                LogicalKeySet(LogicalKeyboardKey.tab): const NextFocusIntent(),
                LogicalKeySet(LogicalKeyboardKey.escape): const DismissIntent(),
              },
              child: const HomePage(),
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
                ? t(isError ? 'someErrors' : 'updates')
                : t(isError ? 'unexpectedError' : 'unknown'),
          ),
          content: SelectableText(e.toString()),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('ok'.t()),
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
          child: Text(
            strings['solution'] ?? 'Solution',
            style: const TextStyle(color: Colors.green),
          ),
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
