import 'package:flutter_test/flutter_test.dart';
import 'package:updatium/main.dart';
import 'package:updatium/providers/settings_provider.dart';

void main() {
  group('Main App Tests', () {
    test('supportedLocales contains English', () {
      expect(supportedLocales.any((l) => l.key.languageCode == 'en'), isTrue);
    });

    test('supportedLocales contains multiple languages', () {
      expect(supportedLocales.length, greaterThan(20));
    });

    test('fallbackLocale is English', () {
      expect(fallbackLocale.languageCode, equals('en'));
    });

    test('localeDir is set correctly', () {
      expect(localeDir, equals('assets/translations'));
    });

    test('fdroid flag is false by default', () {
      expect(fdroid, isFalse);
    });

    test('globalNavigatorKey is defined', () {
      expect(globalNavigatorKey, isNotNull);
    });
  });

  group('App Constants Tests', () {
    test('updatiumId is defined', () {
      expect(updatiumId, isNotEmpty);
      expect(updatiumId, equals('io.github.omeritzics.updatium'));
    });

    test('updatiumUrl is defined', () {
      expect(updatiumUrl, startsWith('https://'));
    });

    test('updatiumThemeColor is defined', () {
      expect(updatiumThemeColor, isNotNull);
    });
  });
}
