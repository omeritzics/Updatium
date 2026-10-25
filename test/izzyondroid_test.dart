import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:updatium/app_sources/izzyondroid.dart';
import 'package:updatium/custom_errors.dart';

void main() {
  group('parseRbIndex', () {
    test('map of lists, reproducible only without error', () {
      final m = <String, Map<String, bool>>{};
      IzzyOnDroid.parseRbIndex({
        'sha1': [
          {'appid': 'a.b', 'version_code': 2, 'reproducible': true},
          {'appid': 'a.b', 'version_code': 1, 'reproducible': false},
        ],
        'sha2': [
          {
            'appid': 'a.b',
            'version_code': 3,
            'reproducible': true,
            'error': 'x',
          },
        ],
      }, m);
      expect(m['a.b'], {'2': true, '1': false, '3': false});
    });

    test('real izzy.json entry shape', () {
      final m = <String, Map<String, bool>>{};
      IzzyOnDroid.parseRbIndex(
        jsonDecode(
          '''{"3aafe67f": [{"repository": "https://github.com/naive-HA/subrosa.git",
          "apk_url": "https://example.com/a.apk", "appid": "acab.naiveha.subrosa",
          "version_code": 3, "version_name": "1.0.6", "tag": "1.0.6",
          "commit": "6a42695c", "timestamp": 1773226612, "reproducible": true,
          "error": null, "maintainer_notes": null}]}''',
        ),
        m,
      );
      expect(m['acab.naiveha.subrosa'], {'3': true});
    });

    test('any builder saying reproducible wins', () {
      final m = <String, Map<String, bool>>{};
      IzzyOnDroid.parseRbIndex([
        {'appid': 'a.b', 'version_code': 5, 'reproducible': false},
      ], m);
      IzzyOnDroid.parseRbIndex([
        {'appid': 'a.b', 'version_code': 5, 'reproducible': true},
      ], m);
      expect(m['a.b']!['5'], true);
    });

    test('garbage is ignored', () {
      final m = <String, Map<String, bool>>{};
      IzzyOnDroid.parseRbIndex('nope', m);
      IzzyOnDroid.parseRbIndex({
        'x': [1, null, {}],
      }, m);
      expect(m, isEmpty);
    });
  });

  group('filterFDroidResponseToReproducible', () {
    final body = jsonEncode({
      'suggestedVersionCode': 3,
      'packages': [
        {'versionCode': 3, 'versionName': '3.0'},
        {'versionCode': 2, 'versionName': '2.0'},
        {'versionCode': 1, 'versionName': '1.0'},
      ],
    });

    test('drops non-reproducible and unsets suggested code', () {
      final out = jsonDecode(
        IzzyOnDroid.filterFDroidResponseToReproducible(body, {
          '2': true,
          '1': true,
          '3': false,
        }),
      );
      expect((out['packages'] as List).map((e) => e['versionCode']), [2, 1]);
      expect(out.containsKey('suggestedVersionCode'), false);
    });

    test('keeps suggested code when reproducible', () {
      final out = jsonDecode(
        IzzyOnDroid.filterFDroidResponseToReproducible(body, {'3': true}),
      );
      expect(out['suggestedVersionCode'], 3);
    });

    test('throws NotReproducibleError when none or unknown app', () {
      expect(
        () =>
            IzzyOnDroid.filterFDroidResponseToReproducible(body, {'3': false}),
        throwsA(isA<NotReproducibleError>()),
      );
      expect(
        () => IzzyOnDroid.filterFDroidResponseToReproducible(body, null),
        throwsA(isA<NotReproducibleError>()),
      );
    });
  });
}
