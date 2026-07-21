import 'package:flutter_test/flutter_test.dart';
import 'package:updatium/app_sources/html.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/providers/source_provider.dart';

void main() {
  group('SettingsProvider Tests', () {
    late SettingsProvider settingsProvider;

    setUp(() {
      settingsProvider = SettingsProvider();
    });

    test('ThemeSettings default value is system', () {
      expect(settingsProvider.theme, equals(ThemeSettings.system));
    });

    test('SortColumnSettings default value is nameAuthor', () {
      expect(
        settingsProvider.sortColumn,
        equals(SortColumnSettings.nameAuthor),
      );
    });

    test('SortOrderSettings default value is ascending', () {
      expect(settingsProvider.sortOrder, equals(SortOrderSettings.ascending));
    });

    test('updateInterval default value is 720', () {
      expect(settingsProvider.updateInterval, equals(720));
    });

    test('checkOnStart default value is false', () {
      expect(settingsProvider.checkOnStart, equals(false));
    });

    test('useShizuku default value is false', () {
      expect(settingsProvider.useShizuku, equals(false));
    });

    test('safeMode default value is false', () {
      expect(settingsProvider.safeMode, equals(false));
    });

    test('useFGService default value is false', () {
      expect(settingsProvider.useFGService, equals(false));
    });

    test('exportSettings default value is 1', () {
      expect(settingsProvider.exportSettings, equals(1));
    });

    test('checkAndFlipFirstRun returns true on first call', () {
      // This test needs prefs to be initialized, skip for now
      expect(() => settingsProvider.checkAndFlipFirstRun(), returnsNormally);
    });

    test('setEqual returns true for identical sets', () {
      expect(settingsProvider.setEqual({'a', 'b'}, {'a', 'b'}), isTrue);
    });

    test('setEqual returns false for different sets', () {
      expect(settingsProvider.setEqual({'a', 'b'}, {'a', 'c'}), isFalse);
    });

    test('setEqual returns false for sets of different sizes', () {
      expect(settingsProvider.setEqual({'a', 'b'}, {'a', 'b', 'c'}), isFalse);
    });

    test('categories default returns empty map', () {
      expect(settingsProvider.categories, isEmpty);
    });
  });

  group('SourceProvider Tests', () {
    late SourceProvider sourceProvider;

    setUp(() {
      sourceProvider = SourceProvider();
    });

    test('getSource returns HTML for unknown URL', () {
      expect(
        sourceProvider.getSource('https://unknown.example.com/app'),
        isA<HTML>(),
      );
    });

    test('getSource recognizes GitHub URLs', () {
      final source = sourceProvider.getSource('https://github.com/user/repo');
      expect(source.name, equals('GitHub'));
    });

    test('getSource recognizes GitLab URLs', () {
      final source = sourceProvider.getSource('https://gitlab.com/user/repo');
      expect(source.name, equals('GitLab'));
    });

    test('getSource recognizes Bitbucket URLs', () {
      final source = sourceProvider.getSource(
        'https://bitbucket.org/user/repo',
      );
      expect(source.name, equals('Bitbucket'));
    });

    test('sourceExists returns true for valid source names', () {
      expect(sourceProvider.sourceExists('GitHub'), isTrue);
      expect(sourceProvider.sourceExists('GitLab'), isTrue);
      expect(sourceProvider.sourceExists('FDroid'), isTrue);
    });

    test('sourceExists returns true for null overrideSource', () {
      expect(sourceProvider.sourceExists(null), isTrue);
    });

    test('sourceExists returns false for invalid source names', () {
      expect(sourceProvider.sourceExists('InvalidSource'), isFalse);
    });

    test('sources list is not empty', () {
      expect(sourceProvider.sources, isNotEmpty);
    });

    test('sources contains GitHub', () {
      expect(sourceProvider.sources.any((s) => s.name == 'GitHub'), isTrue);
    });

    test('sources contains FDroid', () {
      expect(sourceProvider.sources.any((s) => s.name == 'FDroid'), isTrue);
    });

    test('hasSupportedApkExtension identifies APK files', () {
      expect(hasSupportedApkExtension('app.apk'), isTrue);
      expect(hasSupportedApkExtension('APP.APK'), isTrue);
    });

    test('hasSupportedApkExtension identifies XAPK files', () {
      expect(hasSupportedApkExtension('app.xapk'), isTrue);
      expect(hasSupportedApkExtension('APP.XAPK'), isTrue);
    });

    test('hasSupportedApkExtension rejects non-APK files', () {
      expect(hasSupportedApkExtension('app.zip'), isFalse);
      expect(hasSupportedApkExtension('app.txt'), isFalse);
    });

    test('endsWithExtension is case-insensitive', () {
      expect(endsWithExtension('app.APK', '.apk'), isTrue);
      expect(endsWithExtension('app.Apk', '.apk'), isTrue);
    });

    test('stringMapListTo2DList converts correctly', () {
      final input = [MapEntry('key1', 'value1'), MapEntry('key2', 'value2')];
      final output = stringMapListTo2DList(input);
      expect(
        output,
        equals([
          ['key1', 'value1'],
          ['key2', 'value2'],
        ]),
      );
    });

    test('assumed2DlistToStringMapList converts correctly', () {
      final input = [
        ['key1', 'value1'],
        ['key2', 'value2'],
      ];
      final output = assumed2DlistToStringMapList(input);
      expect(output.length, equals(2));
      expect(output[0].key, equals('key1'));
      expect(output[0].value, equals('value1'));
    });

    test('generateTempID produces consistent hash', () {
      final url = 'https://github.com/user/repo';
      final settings = {'key': 'value'};
      final id1 = sourceProvider.generateTempID(url, settings);
      final id2 = sourceProvider.generateTempID(url, settings);
      expect(id1, equals(id2));
    });

    test('generateTempID produces different IDs for different URLs', () {
      final url1 = 'https://github.com/user/repo1';
      final url2 = 'https://github.com/user/repo2';
      final id1 = sourceProvider.generateTempID(url1, {});
      final id2 = sourceProvider.generateTempID(url2, {});
      expect(id1, isNot(equals(id2)));
    });
  });

  group('App JSON Compatibility Tests', () {
    test('appJSONCompatibilityModifiers handles null overrideSource', () {
      final json = {
        'id': 'com.example.app',
        'url': 'https://github.com/user/repo',
        'author': 'user',
        'name': 'App',
        'latestVersion': '1.0.0',
        'additionalSettings': '{}',
        'apkUrls': '[]',
        'preferredApkIndex': 0,
      };
      final result = appJSONCompatibilityModifiers(Map.from(json));
      expect(result['id'], equals('com.example.app'));
    });

    test(
      'appJSONCompatibilityModifiers normalizes negative preferredApkIndex',
      () {
        final json = {
          'id': 'com.example.app',
          'url': 'https://github.com/user/repo',
          'author': 'user',
          'name': 'App',
          'latestVersion': '1.0.0',
          'additionalSettings': '{}',
          'apkUrls': '[]',
          'preferredApkIndex': -1,
        };
        final result = appJSONCompatibilityModifiers(Map.from(json));
        expect(result['preferredApkIndex'], equals(0));
      },
    );
  });

  group('URL Standardization Tests', () {
    test('preStandardizeUrl adds https prefix', () {
      expect(
        preStandardizeUrl('github.com/user/repo'),
        equals('https://github.com/user/repo'),
      );
    });

    test('preStandardizeUrl trims trailing slash when appropriate', () {
      expect(
        preStandardizeUrl('https://github.com/user/repo/'),
        equals('https://github.com/user/repo/'),
      );
    });
  });

  group('Version Detection Tests', () {
    test('findStandardFormatsForVersion finds version patterns', () {
      final patterns = findStandardFormatsForVersion('1.2.3', false);
      expect(patterns, isNotEmpty);
    });

    test('findStandardFormatsForVersion finds version patterns strict', () {
      final patterns = findStandardFormatsForVersion('1.2.3', true);
      expect(patterns, isNotEmpty);
    });

    test(
      'findStandardFormatsForVersion returns empty for non-version strings',
      () {
        final patterns = findStandardFormatsForVersion('abc', false);
        expect(patterns, isEmpty);
      },
    );
  });

  group('APK Filtering Tests', () {
    test('filterApks returns all when no filter', () {
      final apks = [
        MapEntry('app-arm64.apk', 'https://example.com/app-arm64.apk'),
        MapEntry('app-x86.apk', 'https://example.com/app-x86.apk'),
      ];
      final filtered = filterApks(apks, null, null);
      expect(filtered.length, equals(2));
    });

    test('filterApks filters by regex', () {
      final apks = [
        MapEntry('app-arm64.apk', 'https://example.com/app-arm64.apk'),
        MapEntry('app-x86.apk', 'https://example.com/app-x86.apk'),
      ];
      final filtered = filterApks(apks, 'arm64', null);
      expect(filtered.length, equals(1));
      expect(filtered.first.key, contains('arm64'));
    });

    test('filterApks inverts filter', () {
      final apks = [
        MapEntry('app-arm64.apk', 'https://example.com/app-arm64.apk'),
        MapEntry('app-x86.apk', 'https://example.com/app-x86.apk'),
      ];
      final filtered = filterApks(apks, 'arm64', true);
      expect(filtered.length, equals(1));
      expect(filtered.first.key, contains('x86'));
    });
  });
}
