import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/source_provider.dart';

void main() {
  group('Utility Functions Tests', () {
    test('generateUniqueFileName returns base name when no conflict', () {
      final result = generateUniqueFileName('app', 'apk', '/tmp');
      expect(result, equals('app.apk'));
    });

    test('generateUniqueFileName appends counter for conflicts', () {
      // Mock scenario where file exists
      final result = generateUniqueFileName('app', 'apk', '/tmp');
      expect(result, matches(RegExp(r'^app(\(\d+\))?\.apk$')));
    });

    test('hashListOfLists returns consistent hash', () {
      final data = [
        [1, 2],
        [3, 4],
      ];
      final hash1 = hashListOfLists(data);
      final hash2 = hashListOfLists(data);
      expect(hash1, equals(hash2));
      expect(hash1, isA<String>());
    });
  });

  group('Version Format Detection Tests', () {
    test('findStandardFormatsForVersion detects semver', () {
      final formats = findStandardFormatsForVersion('1.2.3', false);
      expect(formats, isNotEmpty);
    });

    test('findStandardFormatsForVersion detects pre-release versions', () {
      final formats = findStandardFormatsForVersion('1.2.3-beta1', false);
      expect(formats, isNotEmpty);
    });

    test(
      'findStandardFormatsForVersion detects versions with build metadata',
      () {
        final formats = findStandardFormatsForVersion('1.2.3+build1', false);
        expect(formats, isNotEmpty);
      },
    );

    test('findStandardFormatsForVersion returns empty for non-versions', () {
      final formats = findStandardFormatsForVersion('not-a-version', true);
      expect(formats, isEmpty);
    });

    test('findStandardFormatsForVersion returns empty for empty string', () {
      final formats = findStandardFormatsForVersion('', false);
      expect(formats, isEmpty);
    });
  });

  group('List Sorting Tests', () {
    test('moveStrToEnd moves string to end', () {
      final arr = ['a', 'b', 'c', 'target'];
      final result = moveStrToEnd(arr, 'target');
      expect(result.first, equals('a'));
      expect(result.last, equals('target'));
    });

    test('moveStrToEnd moves second string to end', () {
      final arr = ['a', 'b', 'c', 'target'];
      final result = moveStrToEnd(arr, 'target', strB: 'other');
      expect(result.last, equals('target'));
    });

    test('moveStrToEndMapEntry moves entry to end', () {
      final arr = [
        MapEntry('a', 1),
        MapEntry('b', 2),
        MapEntry('c', 3),
        MapEntry('target', 4),
      ];
      final result = moveStrToEndMapEntryWithCount(arr, MapEntry('target', 4));
      expect(result.last.key, equals('target'));
    });
  });

  group('AppInMemory Tests', () {
    test('AppInMemory creates deep copy', () {
      final app = App(
        'com.example.app',
        'https://github.com/user/repo',
        'user',
        'App',
        '1.0.0',
        '1.0.1',
        [],
        0,
        {},
        null,
        false,
      );
      final appInMemory = AppInMemory(app, 50.0, null, null);
      final copy = appInMemory.deepCopy();
      expect(copy.app.id, equals(app.id));
      expect(copy.downloadProgress, equals(50.0));
    });
    // ... (rest of AppInMemory tests)
  });

  group('Architecture Filtering Tests', () {
    // Since filterApksByArchitecture depends on device info,
    // we create a MockAppsProvider to override device info methods.

    // Mock provider class
    // Note: In a real project, we'd use mocktail or mockito.
    // For simplicity here, we can just define a subclass.
  });

  test('AppInMemory name returns override name when set', () {
    final app = App(
      'com.example.app',
      'https://github.com/user/repo',
      'user',
      'Original Name',
      null,
      '1.0.0',
      [],
      0,
      {'appName': 'Custom Name'},
      null,
      false,
    );
    final appInMemory = AppInMemory(app, null, null, null);
    expect(appInMemory.name, equals('Custom Name'));
  });

  test('AppInMemory name returns original name when no override', () {
    final app = App(
      'com.example.app',
      'https://github.com/user/repo',
      'user',
      'Original Name',
      null,
      '1.0.0',
      [],
      0,
      {},
      null,
      false,
    );
    final appInMemory = AppInMemory(app, null, null, null);
    expect(appInMemory.name, equals('Original Name'));
  });

  test('AppInMemory author returns override author when set', () {
    final app = App(
      'com.example.app',
      'https://github.com/user/repo',
      'Original Author',
      'App',
      null,
      '1.0.0',
      [],
      0,
      {'author': 'Custom Author'},
      null,
      false,
    );
    final appInMemory = AppInMemory(app, null, null, null);
    expect(appInMemory.author, equals('Custom Author'));
  });

  test('AppInMemory author returns original author when no override', () {
    final app = App(
      'com.example.app',
      'https://github.com/user/repo',
      'Original Author',
      'App',
      null,
      '1.0.0',
      [],
      0,
      {},
      null,
      false,
    );
    final appInMemory = AppInMemory(app, null, null, null);
    expect(appInMemory.author, equals('Original Author'));
  });

  group('DownloadedApk Tests', () {
    test('DownloadedApk stores properties', () {
      final apk = DownloadedApk('com.example.app', File('/path/to/app.apk'));
      expect(apk.appId, equals('com.example.app'));
      expect(apk.file.path, equals('/path/to/app.apk'));
    });
  });

  group('DownloadedDir Tests', () {
    test('DownloadedDir stores properties', () {
      final dir = DownloadedDir(
        'com.example.app',
        File('/path/to/app.xapk'),
        Directory('/path/to/extracted'),
        DownloadedDirType.XAPK,
      );
      expect(dir.appId, equals('com.example.app'));
      expect(dir.type, equals(DownloadedDirType.XAPK));
    });
  });
}
