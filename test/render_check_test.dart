import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:provider/provider.dart';
import 'package:quick_localization/quick_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:updatium/main.dart';
import 'package:updatium/pages/add_app.dart';
import 'package:updatium/pages/apps.dart';
import 'package:updatium/pages/settings.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/logs_provider.dart';
import 'package:updatium/providers/notifications_provider.dart';
import 'package:updatium/providers/settings_provider.dart';

void main() {
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;

  Widget wrapWithApp(Widget child) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppsProvider()),
        ChangeNotifierProvider(create: (context) => SettingsProvider()),
        Provider.value(value: NotificationsProvider()),
        ChangeNotifierProvider(create: (context) => LogsProvider()),
      ],
      child: QuickLocalization(
        supportedLocales: supportedLocales.map((e) => e.key).toList(),
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        useOnlyLangCode: false,
        child: MaterialApp(
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: updatiumThemeColor),
          ),
          home: child,
        ),
      ),
    );
  }

  testWidgets('AppsPage renders cleanly', (tester) async {
    SharedPreferences.setMockInitialValues({'isFirstRun': false});
    await QuickLocalization.ensureInitialized();
    await tester.pumpWidget(wrapWithApp(const AppsPage()));
    await tester.pump(const Duration(milliseconds: 200));
  });

  testWidgets('AddAppPage renders cleanly', (tester) async {
    SharedPreferences.setMockInitialValues({'isFirstRun': false});
    await QuickLocalization.ensureInitialized();
    await tester.pumpWidget(wrapWithApp(const AddAppPage()));
    await tester.pump(const Duration(milliseconds: 200));
  });

  testWidgets('SettingsPage renders cleanly', (tester) async {
    SharedPreferences.setMockInitialValues({'isFirstRun': false});
    await QuickLocalization.ensureInitialized();
    await tester.pumpWidget(wrapWithApp(const SettingsPage()));
    await tester.pump(const Duration(milliseconds: 200));
  });
}
