import 'dart:convert';

import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:updatium/app_sources/fdroid.dart';
import 'package:updatium/app_sources/github.dart';
import 'package:updatium/app_sources/gitlab.dart';
import 'package:updatium/components/generated_form.dart';
import 'package:updatium/custom_errors.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/services/slang_converter.dart';

class IzzyOnDroid extends FDroid {
  static const String reproducibleOnlyKey = 'reproducibleOnly';

  // Mirror roots (rbtlogs live under <root>/rbtlogs/), tried in order.
  static const List<String> _mirrorRoots = [
    'https://apt.izzysoft.de/fdroid',
    'https://izzy.zw.is/fdroid',
    'https://packages.codeberg.org/~izzy/fdroid',
    'https://izzy.katastima.org/fdroid',
    'https://izzy.binsky.dev/fdroid',
  ];
  // izzy.json = Izzy's builder, bg443.json = Ben's builder.
  static const List<String> _rbIndexFiles = ['izzy.json', 'bg443.json'];

  // appId -> {versionCode -> reproducible}
  static Map<String, Map<String, bool>>? _rbCache;
  static DateTime? _rbCacheTime;
  static const Duration _rbCacheTtl = Duration(hours: 1);

  IzzyOnDroid() {
    hosts = ['izzysoft.de'];
    name = 'IzzyOnDroid';
    isOpenSource = true;
    allowSubDomains = true;
    additionalSourceAppSpecificSettingFormItems = [
      ...additionalSourceAppSpecificSettingFormItems,
      [
        GeneratedFormSwitch(
          reproducibleOnlyKey,
          label: 'reproducibleOnly'.t(),
          defaultValue: false,
        ),
      ],
    ];
  }

  @override
  String sourceSpecificStandardizeURL(String url, {bool forSelection = false}) {
    return SourceProvider().standardizeUrlWithRegex(
      url,
      '^https?://(apt|android)\\.${getSourceRegex(hosts)}/(fdroid/index|repo)/apk/[^/]+',
      sourceName: name,
    );
  }

  @override
  Future<String?> tryInferringAppId(
    String standardUrl, {
    Map<String, dynamic> additionalSettings = const {},
  }) async {
    return super.tryInferringAppId(standardUrl);
  }

  /// Parses one rbtlog index (rbtlog make-index format:
  /// { apkSha256: [ {appid, version_code, reproducible, error, ...} ] }).
  /// A top-level list is tolerated. A version counts as reproducible only
  /// with `reproducible == true` and no `error`. Results are merged into
  /// [into]; a version is reproducible if any builder says so.
  static void parseRbIndex(
    dynamic decoded,
    Map<String, Map<String, bool>> into,
  ) {
    Iterable entries = decoded is Map
        ? decoded.values.expand((v) => v is List ? v : [v])
        : (decoded is List ? decoded : const []);
    for (var e in entries) {
      if (e is! Map) continue;
      var id = e['appid']?.toString();
      var code = e['version_code']?.toString();
      if (id == null || code == null || code.isEmpty) continue;
      bool ok = e['reproducible'] == true && e['error'] == null;
      var m = into.putIfAbsent(id, () => {});
      m[code] = (m[code] ?? false) || ok;
    }
  }

  /// Keeps only reproducible releases in an F-Droid `/packages/<id>` API
  /// response (and drops suggestedVersionCode if it is not reproducible),
  /// so FDroid's normal selection picks the newest reproducible version.
  /// Throws [NotReproducibleError] if none remain.
  static String filterFDroidResponseToReproducible(
    String body,
    Map<String, bool>? reproducibleByCode,
  ) {
    var response = jsonDecode(body);
    if (response is! Map) throw NoReleasesError();
    List<dynamic> releases = response['packages'] ?? [];
    var kept = releases
        .where((r) => reproducibleByCode?[r['versionCode']?.toString()] == true)
        .toList();
    if (kept.isEmpty) throw NotReproducibleError();
    response['packages'] = kept;
    if (reproducibleByCode?[response['suggestedVersionCode']?.toString()] !=
        true) {
      response.remove('suggestedVersionCode');
    }
    return jsonEncode(response);
  }

  /// Merges all rbtlog indexes from the first mirror that answers.
  Future<Map<String, Map<String, bool>>?> _getRbIndex(
    Map<String, dynamic> additionalSettings,
  ) async {
    if (_rbCache != null &&
        _rbCacheTime != null &&
        DateTime.now().difference(_rbCacheTime!) < _rbCacheTtl) {
      return _rbCache;
    }
    for (var root in _mirrorRoots) {
      var merged = <String, Map<String, bool>>{};
      int loaded = 0;
      for (var file in _rbIndexFiles) {
        try {
          var res = await sourceRequest(
            '$root/rbtlogs/$file',
            additionalSettings,
          );
          if (res.statusCode < 200 || res.statusCode >= 300) continue;
          parseRbIndex(jsonDecode(res.body), merged);
          loaded++;
        } catch (e) {
          // try next file / mirror
        }
      }
      if (loaded > 0) {
        _rbCache = merged;
        _rbCacheTime = DateTime.now();
        return merged;
      }
    }
    return null;
  }

  @override
  Future<APKDetails> getLatestAPKDetails(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    final String? appId = await tryInferringAppId(standardUrl);
    var apiRes = await sourceRequest(
      'https://apt.izzysoft.de/fdroid/api/v1/packages/$appId',
      additionalSettings,
    );
    if (appId != null &&
        additionalSettings[reproducibleOnlyKey] == true &&
        apiRes.statusCode == 200) {
      var index = await _getRbIndex(additionalSettings);
      if (index == null) {
        throw UpdatiumError(
          'Could not fetch IzzyOnDroid reproducible build logs; cannot verify $appId.',
        );
      }
      apiRes = Response.bytes(
        utf8.encode(
          filterFDroidResponseToReproducible(apiRes.body, index[appId]),
        ),
        200,
      );
    }
    final details = getAPKUrlsFromFDroidPackagesAPIResponse(
      apiRes,
      'https://android.izzysoft.de/frepo/$appId',
      name,
      additionalSettings,
      standardUrl,
    );
    // Try to fetch author from F-Droid package page
    try {
      final res = await sourceRequest(
        'https://android.izzysoft.de/packages/$appId',
        additionalSettings,
      );
      if (res.statusCode >= 200 && res.statusCode < 300) {
        final body = parse(res.body);
        final authorElement = body.querySelector('a[href^="mailto:"]');
        if (authorElement != null) {
          final authorText = authorElement.text.trim();
          if (authorText.isNotEmpty) {
            details.names.author = authorText;
          }
        }
      }
    } catch (e) {
      // Fail silently, keep fallback author
    }
    // Try to fetch changelog from GitLab metadata
    try {
      final res = await sourceRequest(
        'https://gitlab.com/fdroid/fdroiddata/-/raw/master/metadata/$appId.yml',
        additionalSettings,
      );
      if (res.statusCode >= 200 && res.statusCode < 300) {
        final lines = res.body.split('\n');
        final changelogUrls = lines
            .where((l) => l.startsWith('Changelog: '))
            .map((e) => e.split(' ').sublist(1).join(' '));
        if (changelogUrls.isNotEmpty) {
          details.changeLog = changelogUrls.first;
          bool isGitHub = false;
          bool isGitLab = false;
          try {
            GitHub(
              hostChanged: true,
            ).sourceSpecificStandardizeURL(details.changeLog!);
            isGitHub = true;
          } catch (e) {
            //
          }
          try {
            GitLab(
              hostChanged: true,
            ).sourceSpecificStandardizeURL(details.changeLog!);
            isGitLab = true;
          } catch (e) {
            //
          }
          if ((isGitHub || isGitLab) &&
              (details.changeLog?.indexOf('/blob/') ?? -1) >= 0) {
            try {
              details.changeLog = (await sourceRequest(
                details.changeLog!.replaceFirst('/blob/', '/raw/'),
                additionalSettings,
              )).body;
            } catch (e) {
              // Fail silently
            }
          }
        }
        if ((details.changeLog?.length ?? 0) > 2048) {
          details.changeLog = '${details.changeLog!.substring(0, 2048)}...';
        }
      }
    } catch (e) {
      // Fail silently, keep fallback changelog
    }
    return details;
  }
}
