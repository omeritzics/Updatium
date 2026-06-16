import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:updatium/pages/home.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/logs_provider.dart';
import 'package:updatium/providers/native_provider.dart';
import 'package:updatium/providers/notifications_provider.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:provider/provider.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:background_fetch/background_fetch.dart';
import 'package:updatium/services/bg_updates.dart';

import 'package:updatium/services/slang_converter.dart';
import 'package:simple_localization/src/simple_localization_controller.dart';
import 'package:simple_localization/src/localization.dart';
import 'package:updatium/services/github_star_prompt.dart';

List<MapEntry<Locale, String>> supportedLocales = const [
  MapEntry(Locale('en'), 'English'),
  MapEntry(Locale('el'), 'Ελληνικά'),
  MapEntry(Locale('zh'), '简体中文'),
  // MapEntry(Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW'), '臺灣話'),
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
  // MapEntry(Locale('en', 'KU'), 'Kurdî'),
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
  } catch (e) {}
  await SimpleLocalization.ensureInitialized();

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
              surface: Colors.white.withValues(alpha: 0.02),
              surfaceContainer: Colors.white.withValues(alpha: 0.06),
              surfaceContainerLow: Colors.black,
              surfaceDim: Colors.black,
              onSurface: Colors.white,
              onSurfaceVariant: Colors.white.withValues(alpha: 0.95),
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
          ThemeData createTheme(ColorScheme scheme) {
            return ThemeData(
              useMaterial3: true,
              colorScheme: scheme,
              fontFamily: getPrimaryFontForLocale(context.locale),
              fontFamilyFallback: settingsProvider.useSystemFont
                  ? null
                  : const ['GoogleSans', 'NotoSansCJK', 'NotoSansArabic'],
              inputDecorationTheme: InputDecorationTheme(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: scheme.primary, width: 2.0),
                  borderRadius: const BorderRadius.all(Radius.circular(6.0)),
                ),
              ),

              // AppBar
              appBarTheme: AppBarTheme(
                titleTextStyle: TextStyle(
                  color: scheme.onSurface,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  fontFamily: getPrimaryFontForLocale(context.locale),
                  fontFamilyFallback: settingsProvider.useSystemFont
                      ? null
                      : const ['GoogleSans', 'NotoSansCJK', 'NotoSansArabic'],
                ),
              ),

              // Expressive List Tiles
              listTileTheme: ListTileThemeData(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 8,
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
                  // fontWeight: FontWeight.w500,
                ),
                subtitleTextStyle: TextStyle(
                  color: scheme.onSurfaceVariant,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),

              // Page Transitions
              pageTransitionsTheme: const PageTransitionsTheme(
                builders: {
                  TargetPlatform.android:
                      PredictiveBackPageTransitionsBuilder(),
                },
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
            theme: createTheme(lightColorScheme),
            darkTheme: createTheme(darkColorScheme),
            themeMode: settingsProvider.theme == ThemeSettings.dark
                ? ThemeMode.dark
                : (settingsProvider.theme == ThemeSettings.light
                      ? ThemeMode.light
                      : ThemeMode.system),
            home: const HomePage(),
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
