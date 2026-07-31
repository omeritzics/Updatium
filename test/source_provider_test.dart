import 'package:flutter_test/flutter_test.dart';
import 'package:updatium/custom_errors.dart';
import 'package:updatium/providers/source_provider.dart';
import 'dart:convert';

void main() {
  group('URL Standardization Tests', () {
    test('preStandardizeUrl adds https if missing', () {
      expect(
        preStandardizeUrl('duckduckgo.com'),
        equals('https://duckduckgo.com'),
      );
    });

    test('preStandardizeUrl handles existing https', () {
      expect(
        preStandardizeUrl('https://duckduckgo.com'),
        equals('https://duckduckgo.com'),
      );
    });

    test('preStandardizeUrl throws on invalid URL', () {
      expect(
        () => preStandardizeUrl('invalid'),
        throwsA(isA<UnsupportedURLError>()),
      );
    });
  });

  group('Extension Helper Tests', () {
    test('hasSupportedApkExtension detects .apk', () {
      expect(hasSupportedApkExtension('app.apk'), isTrue);
    });

    test('hasSupportedApkExtension detects .xapk', () {
      expect(hasSupportedApkExtension('app.xapk'), isTrue);
    });

    test('hasSupportedApkExtension returns false for .zip', () {
      expect(hasSupportedApkExtension('app.zip'), isFalse);
    });

    test('endsWithExtension detects extension case-insensitively', () {
      expect(endsWithExtension('app.APK', '.apk'), isTrue);
    });
  });

  group('Conversion Helper Tests', () {
    test('stringMapListTo2DList converts MapEntry list to 2D list', () {
      final input = [MapEntry('name', 'url')];
      final result = stringMapListTo2DList(input);
      expect(
        result,
        equals([
          ['name', 'url'],
        ]),
      );
    });

    test('assumed2DlistToStringMapList converts 2D list to MapEntry list', () {
      final input = [
        ['name', 'url'],
      ];
      final result = assumed2DlistToStringMapList(input);
      expect(result.first.key, equals('name'));
      expect(result.first.value, equals('url'));
    });
  });

  group('APK URL Helper Tests', () {
    test('getApkUrlsFromUrls extracts filenames correctly', () {
      final urls = [
        'https://example.com/app-1.0.apk',
        'https://example.com/app-2.0.xapk',
      ];
      final result = getApkUrlsFromUrls(urls);
      expect(result[0].key, equals('app-1.0.apk'));
      expect(result[1].key, equals('app-2.0.xapk'));
    });
  });

  group('APK Preference Tests', () {
    test('preferApkOverXapk prioritizes .apk over .xapk', () {
      final input = [
        MapEntry('app.xapk', 'url1'),
        MapEntry('app.apk', 'url2'),
        MapEntry('app.zip', 'url3'),
      ];
      final result = preferApkOverXapk(input);
      expect(result.first.key, equals('app.apk'));
      expect(result[1].key, equals('app.xapk'));
      expect(result[2].key, equals('app.zip'));
    });
  });

  group('Custom App ID Tests', () {
    test('customAppIdFromSettings ignores the blank form default', () {
      expect(customAppIdFromSettings({'appId': ''}), isNull);
      expect(customAppIdFromSettings({'appId': '   '}), isNull);
      expect(customAppIdFromSettings({}), isNull);
    });

    test('customAppIdFromSettings returns trimmed user input', () {
      expect(
        customAppIdFromSettings({'appId': ' com.example.app '}),
        equals('com.example.app'),
      );
    });

    test('customAppIdFromSettings ignores non-String values', () {
      expect(customAppIdFromSettings({'appId': 123}), isNull);
    });
  });

  group('App JSON Compatibility Tests', () {
    test('appJSONCompatibilityModifiers handles removed overrideSource', () {
      final json = {
        'url': 'https://example.com',
        'overrideSource': 'RemovedSource',
      };
      // Since RemovedSource doesn't exist in SourceProvider, it should be cleared
      final result = appJSONCompatibilityModifiers(
        Map<String, dynamic>.from(json),
      );
      expect(result['overrideSource'], isNull);
    });

    test(
      'appJSONCompatibilityModifiers migrates additionalData to additionalSettings',
      () {
        final json = {
          'url': 'https://github.com/user/repo',
          'additionalData': '["true", "some_value"]',
        };
        final result = appJSONCompatibilityModifiers(
          Map<String, dynamic>.from(json),
        );
        expect(result['additionalSettings'], isNotNull);
        final settings = jsonDecode(result['additionalSettings'] as String);
        expect(settings, isNotNull);
      },
    );

    test('appJSONCompatibilityModifiers normalizes preferredApkIndex', () {
      final json = {'url': 'https://example.com', 'preferredApkIndex': -5};
      final result = appJSONCompatibilityModifiers(
        Map<String, dynamic>.from(json),
      );
      expect(result['preferredApkIndex'], equals(0));
    });

    test('appJSONCompatibilityModifiers converts apkUrls to named list', () {
      final json = {
        'url': 'https://example.com',
        'apkUrls': '["https://example.com/app.apk"]',
      };
      final result = appJSONCompatibilityModifiers(
        Map<String, dynamic>.from(json),
      );
      final apkUrls = jsonDecode(result['apkUrls'] as String);
      expect(apkUrls, isA<List>());
      expect(apkUrls[0], equals(['app.apk', 'https://example.com/app.apk']));
    });

    test('appJSONCompatibilityModifiers migrates F-Droid cloudflare URLs', () {
      final json = {'url': 'https://cloudflare.f-droid.org/repo'};
      final result = appJSONCompatibilityModifiers(
        Map<String, dynamic>.from(json),
      );
      expect(result['overrideSource'], equals('FDroid'));
    });
  });
}
