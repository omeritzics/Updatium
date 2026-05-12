// Exposes functions used to save/load app settings

import 'dart:convert';

import 'package:bcrypt/bcrypt.dart';
import 'package:simple_localization/simple_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:updatium/app_sources/github.dart';
import 'package:updatium/main.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

String updatiumTempId = 'omeritzics_updatium_${GitHub().hosts[0]}';
String updatiumId = 'io.github.omeritzics.updatium';
String updatiumUrl = 'https://github.com/omeritzics/Updatium';
Color updatiumThemeColor = const Color(0xFF3a79b7);

enum ThemeSettings { system, light, dark }

enum SortColumnSettings { added, nameAuthor, authorName, releaseDate }

enum SortOrderSettings { ascending, descending }

enum DNSServiceProvider { system, cloudflare, quad9, opendns, mullvad }

class SettingsProvider with ChangeNotifier {
  SharedPreferences? prefs;
  String? defaultAppDir;
  bool justStarted = true;

  String sourceUrl = 'https://github.com/omeritzics/Updatium';

  // Not done in constructor as we want to be able to await it
  Future<void> initializeSettings() async {
    prefs = await SharedPreferences.getInstance();
    defaultAppDir = (await getAppStorageDir()).path;
    notifyListeners();
  }

  bool get useSystemFont {
    return prefs?.getBool('useSystemFont') ?? false;
  }

  set useSystemFont(bool useSystemFont) {
    prefs?.setBool('useSystemFont', useSystemFont);
    notifyListeners();
  }

  bool get useShizuku {
    return prefs?.getBool('useShizuku') ?? false;
  }

  set useShizuku(bool useShizuku) {
    prefs?.setBool('useShizuku', useShizuku);
    notifyListeners();
  }

  ThemeSettings get theme {
    return ThemeSettings.values[prefs?.getInt('theme') ??
        ThemeSettings.system.index];
  }

  set theme(ThemeSettings t) {
    prefs?.setInt('theme', t.index);
    notifyListeners();
  }

  Color get themeColor {
    int? colorCode = prefs?.getInt('themeColor');
    return (colorCode != null) ? Color(colorCode) : updatiumThemeColor;
  }

  set themeColor(Color themeColor) {
    prefs?.setInt('themeColor', themeColor.toARGB32());
    notifyListeners();
  }

  bool get useMaterialYou {
    return prefs?.getBool('useMaterialYou') ?? false;
  }

  set useMaterialYou(bool useMaterialYou) {
    prefs?.setBool('useMaterialYou', useMaterialYou);
    notifyListeners();
  }

  bool get useBlackTheme {
    return prefs?.getBool('useBlackTheme') ?? false;
  }

  set useBlackTheme(bool useBlackTheme) {
    prefs?.setBool('useBlackTheme', useBlackTheme);
    notifyListeners();
  }

  int get updateInterval {
    return prefs?.getInt('updateInterval') ?? 720;
  }

  set updateInterval(int min) {
    prefs?.setInt('updateInterval', min);
    notifyListeners();
  }

  double get updateIntervalSliderVal {
    return prefs?.getDouble('updateIntervalSliderVal') ?? 7.0;
  }

  set updateIntervalSliderVal(double val) {
    prefs?.setDouble('updateIntervalSliderVal', val);
    notifyListeners();
  }

  bool get checkOnStart {
    return prefs?.getBool('checkOnStart') ?? false;
  }

  set checkOnStart(bool checkOnStart) {
    prefs?.setBool('checkOnStart', checkOnStart);
    notifyListeners();
  }

  SortColumnSettings get sortColumn {
    return SortColumnSettings.values[prefs?.getInt('sortColumn') ??
        SortColumnSettings.nameAuthor.index];
  }

  set sortColumn(SortColumnSettings s) {
    prefs?.setInt('sortColumn', s.index);
    notifyListeners();
  }

  SortOrderSettings get sortOrder {
    return SortOrderSettings.values[prefs?.getInt('sortOrder') ??
        SortOrderSettings.ascending.index];
  }

  set sortOrder(SortOrderSettings s) {
    prefs?.setInt('sortOrder', s.index);
    notifyListeners();
  }

  bool checkAndFlipFirstRun() {
    bool result = prefs?.getBool('firstRun') ?? true;
    if (result) {
      prefs?.setBool('firstRun', false);
    }
    return result;
  }

  bool get welcomeShown {
    return prefs?.getBool('welcomeShown') ?? false;
  }

  set welcomeShown(bool welcomeShown) {
    prefs?.setBool('welcomeShown', welcomeShown);
    notifyListeners();
  }

  bool checkJustStarted() {
    if (justStarted) {
      justStarted = false;
      return true;
    }
    return false;
  }

  Future<bool> getInstallPermission({bool enforce = false}) async {
    while (!(await Permission.requestInstallPackages.isGranted)) {
      // Explicit request as InstallPlugin request sometimes bugged
      Fluttertoast.showToast(
        msg: tr('pleaseAllowInstallPerm'),
        toastLength: Toast.LENGTH_LONG,
      );
      if ((await Permission.requestInstallPackages.request()) ==
          PermissionStatus.granted) {
        return true;
      }
      if (!enforce) {
        return false;
      }
    }
    return true;
  }

  bool get pinUpdates {
    return prefs?.getBool('pinUpdates') ?? true;
  }

  set pinUpdates(bool show) {
    prefs?.setBool('pinUpdates', show);
    notifyListeners();
  }

  bool get buryNonInstalled {
    return prefs?.getBool('buryNonInstalled') ?? false;
  }

  set buryNonInstalled(bool show) {
    prefs?.setBool('buryNonInstalled', show);
    notifyListeners();
  }

  bool get groupByCategory {
    return prefs?.getBool('groupByCategory') ?? false;
  }

  set groupByCategory(bool show) {
    prefs?.setBool('groupByCategory', show);
    notifyListeners();
  }

  bool get hideTrackOnlyWarning {
    return prefs?.getBool('hideTrackOnlyWarning') ?? false;
  }

  set hideTrackOnlyWarning(bool show) {
    prefs?.setBool('hideTrackOnlyWarning', show);
    notifyListeners();
  }

  bool get hideAPKOriginWarning {
    return prefs?.getBool('hideAPKOriginWarning') ?? false;
  }

  set hideAPKOriginWarning(bool show) {
    prefs?.setBool('hideAPKOriginWarning', show);
    notifyListeners();
  }

  String? getSettingString(String settingId) {
    String? str = prefs?.getString(settingId);
    return str?.isNotEmpty == true ? str : null;
  }

  void setSettingString(String settingId, String value) {
    prefs?.setString(settingId, value);
    notifyListeners();
  }

  bool? getSettingBool(String settingId) {
    return prefs?.getBool(settingId) ?? false;
  }

  void setSettingBool(String settingId, bool value) {
    prefs?.setBool(settingId, value);
    notifyListeners();
  }

  Map<String, int> get categories =>
      Map<String, int>.from(jsonDecode(prefs?.getString('categories') ?? '{}'));

  void setCategories(Map<String, int> cats, {AppsProvider? appsProvider}) {
    if (appsProvider != null) {
      List<App> changedApps = appsProvider
          .getAppValues()
          .map((a) {
            var n1 = a.app.categories?.length ?? 0;
            a.app.categories?.removeWhere((c) => !cats.keys.contains(c));
            return n1 > (a.app.categories?.length ?? 0) ? a.app : null;
          })
          .where((element) => element != null)
          .map((e) => e as App)
          .toList();
      if (changedApps.isNotEmpty) {
        appsProvider.saveApps(changedApps);
      }
    }
    prefs?.setString('categories', jsonEncode(cats));
    notifyListeners();
  }

  /// Renames a category from [oldName] to [newName], updating both the
  /// categories map and all apps that reference the old name.
  void renameCategory(
    String oldName,
    String newName,
    int colorValue, {
    required AppsProvider appsProvider,
  }) {
    final newCategories = Map<String, int>.from(categories);
    newCategories.remove(oldName);
    newCategories[newName] = colorValue;

    // Propagate the rename to every app that has the old category name
    final List<App> changedApps = appsProvider
        .getAppValues()
        .where((a) => a.app.categories?.contains(oldName) == true)
        .map((a) {
          final idx = a.app.categories!.indexOf(oldName);
          a.app.categories![idx] = newName;
          return a.app;
        })
        .toList();

    if (changedApps.isNotEmpty) {
      appsProvider.saveApps(changedApps);
    }

    prefs?.setString('categories', jsonEncode(newCategories));
    notifyListeners();
  }

  Locale? get forcedLocale {
    var flStr = prefs?.getString('forcedLocale');
    Locale? fl;
    if (flStr != null) {
      var parts = flStr.split('-');
      if (parts.length >= 3) {
        fl = Locale.fromSubtags(
          languageCode: parts[0],
          scriptCode: parts[1],
          countryCode: parts[2],
        );
      } else if (parts.length == 2) {
        fl = Locale(parts[0], parts[1]);
      } else if (parts.length == 1) {
        fl = Locale(parts[0]);
      }
    }
    var set = supportedLocales.where((element) => element.key == fl).isNotEmpty
        ? fl
        : null;
    return set;
  }

  set forcedLocale(Locale? fl) {
    if (fl == null) {
      prefs?.remove('forcedLocale');
    } else if (supportedLocales
        .where((element) => element.key == fl)
        .isNotEmpty) {
      prefs?.setString('forcedLocale', fl.toLanguageTag());
    }
    notifyListeners();
  }

  bool setEqual(Set<String> a, Set<String> b) =>
      a.length == b.length && a.union(b).length == a.length;

  void resetLocaleSafe(BuildContext context) {
    // Try exact match first
    if (context.supportedLocales.contains(context.deviceLocale)) {
      context.resetLocale();
      return;
    }

    // Try language-only match (e.g., 'en-US' → 'en')
    var languageOnly = Locale(context.deviceLocale.languageCode);
    if (context.supportedLocales.contains(languageOnly)) {
      context.setLocale(languageOnly);
      context.deleteSaveLocale();
      return;
    }

    // Fallback to default
    context.setLocale(context.fallbackLocale!);
    context.deleteSaveLocale();
  }

  bool get removeOnExternalUninstall {
    return prefs?.getBool('removeOnExternalUninstall') ?? false;
  }

  set removeOnExternalUninstall(bool show) {
    prefs?.setBool('removeOnExternalUninstall', show);
    notifyListeners();
  }

  bool get checkUpdateOnDetailPage {
    return prefs?.getBool('checkUpdateOnDetailPage') ?? false;
  }

  set checkUpdateOnDetailPage(bool show) {
    prefs?.setBool('checkUpdateOnDetailPage', show);
    notifyListeners();
  }

  bool get disablePageTransitions {
    return prefs?.getBool('disablePageTransitions') ?? false;
  }

  set disablePageTransitions(bool show) {
    prefs?.setBool('disablePageTransitions', show);
    notifyListeners();
  }

  bool get reversePageTransitions {
    return prefs?.getBool('reversePageTransitions') ?? false;
  }

  set reversePageTransitions(bool show) {
    prefs?.setBool('reversePageTransitions', show);
    notifyListeners();
  }

  bool get enableBackgroundUpdates {
    return prefs?.getBool('enableBackgroundUpdates') ?? true;
  }

  set enableBackgroundUpdates(bool val) {
    prefs?.setBool('enableBackgroundUpdates', val);
    notifyListeners();
  }

  bool get bgUpdatesOnWiFiOnly {
    return prefs?.getBool('bgUpdatesOnWiFiOnly') ?? false;
  }

  set bgUpdatesOnWiFiOnly(bool val) {
    prefs?.setBool('bgUpdatesOnWiFiOnly', val);
    notifyListeners();
  }

  bool get bgUpdatesWhileChargingOnly {
    return prefs?.getBool('bgUpdatesWhileChargingOnly') ?? false;
  }

  set bgUpdatesWhileChargingOnly(bool val) {
    prefs?.setBool('bgUpdatesWhileChargingOnly', val);
    notifyListeners();
  }

  DateTime get lastCompletedBGCheckTime {
    int? temp = prefs?.getInt('lastCompletedBGCheckTime');
    return temp != null
        ? DateTime.fromMillisecondsSinceEpoch(temp)
        : DateTime.fromMillisecondsSinceEpoch(0);
  }

  set lastCompletedBGCheckTime(DateTime val) {
    prefs?.setInt('lastCompletedBGCheckTime', val.millisecondsSinceEpoch);
    notifyListeners();
  }

  bool get showDebugOpts {
    return prefs?.getBool('showDebugOpts') ?? false;
  }

  set showDebugOpts(bool val) {
    prefs?.setBool('showDebugOpts', val);
    notifyListeners();
  }

  bool get highlightTouchTargets {
    return prefs?.getBool('highlightTouchTargets') ?? true;
  }

  set highlightTouchTargets(bool val) {
    prefs?.setBool('highlightTouchTargets', val);
    notifyListeners();
  }

  Future<Uri?> getExportDir() async {
    var uriString = prefs?.getString('exportDir');
    if (uriString != null) {
      Uri? uri = Uri.parse(uriString);
      return uri;
    } else {
      return null;
    }
  }

  Future<void> pickExportDir({bool remove = false}) async {
    if (remove) {
      prefs?.remove('exportDir');
      notifyListeners();
      return;
    }

    // Use SAF directory picker to get content URI for DocumentFile
    try {
      const platform = MethodChannel('io.github.omeritzics.updatium/saf');
      final String? uri = await platform.invokeMethod('openDirectoryTree');
      if (uri != null) {
        prefs?.setString('exportDir', uri);
        notifyListeners();
      }
    } catch (e) {
      debugPrint('Error picking directory: $e');
    }
  }

  bool get autoExportOnChanges {
    return prefs?.getBool('autoExportOnChanges') ?? false;
  }

  set autoExportOnChanges(bool val) {
    prefs?.setBool('autoExportOnChanges', val);
    notifyListeners();
  }

  bool get onlyCheckInstalledOrTrackOnlyApps {
    return prefs?.getBool('onlyCheckInstalledOrTrackOnlyApps') ?? true;
  }

  set onlyCheckInstalledOrTrackOnlyApps(bool val) {
    prefs?.setBool('onlyCheckInstalledOrTrackOnlyApps', val);
    notifyListeners();
  }

  int get exportSettings {
    try {
      return prefs?.getInt('exportSettings') ??
          1; // 0 for no, 1 for yes but no secrets, 2 for everything
    } catch (e) {
      var val = prefs?.getBool('exportSettings') == true ? 1 : 0;
      prefs?.setInt('exportSettings', val);
      return val;
    }
  }

  set exportSettings(int val) {
    prefs?.setInt('exportSettings', val > 2 || val < 0 ? 1 : val);
    notifyListeners();
  }

  bool get parallelDownloads {
    return prefs?.getBool('parallelDownloads') ?? true;
  }

  set parallelDownloads(bool val) {
    prefs?.setBool('parallelDownloads', val);
    notifyListeners();
  }

  List<String> get searchDeselected {
    return prefs?.getStringList('searchDeselected') ??
        SourceProvider().sources.map((s) => s.name).toList();
  }

  set searchDeselected(List<String> list) {
    prefs?.setStringList('searchDeselected', list);
    notifyListeners();
  }

  bool get beforeNewInstallsShareToAppVerifier {
    return prefs?.getBool('beforeNewInstallsShareToAppVerifier') ?? true;
  }

  set beforeNewInstallsShareToAppVerifier(bool val) {
    prefs?.setBool('beforeNewInstallsShareToAppVerifier', val);
    notifyListeners();
  }

  bool get shizukuPretendToBeGooglePlay {
    return prefs?.getBool('shizukuPretendToBeGooglePlay') ?? false;
  }

  set shizukuPretendToBeGooglePlay(bool val) {
    prefs?.setBool('shizukuPretendToBeGooglePlay', val);
    notifyListeners();
  }

  bool get useFGService {
    return prefs?.getBool('useFGService') ?? false;
  }

  set useFGService(bool val) {
    prefs?.setBool('useFGService', val);
    notifyListeners();
  }

  bool get useGridView {
    return prefs?.getBool('useGridView') ?? false;
  }

  set useGridView(bool val) {
    prefs?.setBool('useGridView', val);
    notifyListeners();
  }

  bool get safeMode {
    return prefs?.getBool('safeMode') ?? false;
  }

  set safeMode(bool val) {
    prefs?.setBool('safeMode', val);
    notifyListeners();
  }

  String? get safeModePassword {
    return prefs?.getString('safeModePassword');
  }

  bool get safeModePasswordSet {
    return safeModePassword != null && safeModePassword!.isNotEmpty;
  }

  Future<bool> setSafeModePassword(String password) async {
    try {
      print('Safe Mode: Starting password setup');
      final hashed = BCrypt.hashpw(password, BCrypt.gensalt());
      print('Safe Mode: Password hashed successfully');
      await prefs?.setString('safeModePassword', hashed);
      print('Safe Mode: Password saved to preferences');
      notifyListeners();
      print('Safe Mode: Setup completed successfully');
      return true;
    } catch (e) {
      print('Safe Mode: Password setup failed - $e');
      return false;
    }
  }

  Future<bool> verifySafeModePassword(String password) async {
    try {
      final stored = safeModePassword;
      if (stored == null) return false;
      return BCrypt.checkpw(password, stored);
    } catch (e) {
      return false;
    }
  }

  Future<bool> clearSafeModePassword() async {
    try {
      await prefs?.remove('safeModePassword');
      notifyListeners();
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get safeModeHintShown {
    return prefs?.getBool('safeModeHintShown') ?? false;
  }

  set safeModeHintShown(bool val) {
    prefs?.setBool('safeModeHintShown', val);
    notifyListeners();
  }

  int get safeModeTapCount {
    return prefs?.getInt('safeModeTapCount') ?? 0;
  }

  set safeModeTapCount(int val) {
    prefs?.setInt('safeModeTapCount', val);
    notifyListeners();
  }

  bool get preferApkOverXapk {
    return prefs?.getBool('preferApkOverXapk') ?? true;
  }

  set preferApkOverXapk(bool val) {
    prefs?.setBool('preferApkOverXapk', val);
    notifyListeners();
  }

  bool get updatesSectionExpanded {
    return prefs?.getBool('updatesSectionExpanded') ?? false;
  }

  set updatesSectionExpanded(bool val) {
    prefs?.setBool('updatesSectionExpanded', val);
    notifyListeners();
  }

  bool get sourceSpecificSectionExpanded {
    return prefs?.getBool('sourceSpecificSectionExpanded') ?? false;
  }

  set sourceSpecificSectionExpanded(bool val) {
    prefs?.setBool('sourceSpecificSectionExpanded', val);
    notifyListeners();
  }

  bool get appearanceSectionExpanded {
    return prefs?.getBool('appearanceSectionExpanded') ?? false;
  }

  set appearanceSectionExpanded(bool val) {
    prefs?.setBool('appearanceSectionExpanded', val);
    notifyListeners();
  }

  bool get categoriesSectionExpanded {
    return prefs?.getBool('categoriesSectionExpanded') ?? false;
  }

  set categoriesSectionExpanded(bool val) {
    prefs?.setBool('categoriesSectionExpanded', val);
    notifyListeners();
  }

  double get settingsScrollPosition {
    return prefs?.getDouble('settingsScrollPosition') ?? 0.0;
  }

  set settingsScrollPosition(double val) {
    prefs?.setDouble('settingsScrollPosition', val);
    notifyListeners();
  }

  bool get preventUninstallation {
    return prefs?.getBool('preventUninstallation') ?? false;
  }

  set preventUninstallation(bool val) {
    prefs?.setBool('preventUninstallation', val);
    notifyListeners();
  }

  DNSServiceProvider get dnsServiceProvider {
    return DNSServiceProvider.values[prefs?.getInt('dnsServiceProvider') ??
        DNSServiceProvider.system.index];
  }

  set dnsServiceProvider(DNSServiceProvider provider) {
    prefs?.setInt('dnsServiceProvider', provider.index);
    notifyListeners();
  }
}
