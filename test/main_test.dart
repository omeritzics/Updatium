import 'package:flutter_test/flutter_test.dart';
import 'package:updatium/main.dart';
import 'package:flutter/material.dart';
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

    test('isLocaleRTL returns true for Arabic', () {
      expect(isLocaleRTL(const Locale('ar')), isTrue);
    });

    test('isLocaleRTL returns true for Hebrew', () {
      expect(isLocaleRTL(const Locale('he')), isTrue);
    });

    test('isLocaleRTL returns true for Persian', () {
      expect(isLocaleRTL(const Locale('fa')), isTrue);
    });

    test('isLocaleRTL returns false for English', () {
      expect(isLocaleRTL(const Locale('en')), isFalse);
    });

    test('isLocaleRTL returns false for Spanish', () {
      expect(isLocaleRTL(const Locale('es')), isFalse);
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
