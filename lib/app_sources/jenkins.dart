import 'dart:convert';
import 'package:simple_localization/simple_localization.dart';
import 'package:http/http.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/providers/source_provider.dart' as source_provider;

class Jenkins extends AppSource {
  Jenkins() {
    name = tr('jenkins');
    versionDetectionDisallowed = true;
    neverAutoSelect = true;
    showReleaseDateAsVersionToggle = true;
  }
  String trimJobUrl(String url) {
    RegExp standardUrlRegEx = RegExp('.*/job/[^/]+');
    RegExpMatch? match = standardUrlRegEx.firstMatch(url);
    if (match == null) {
      throw InvalidURLError(name);
    }
    return match.group(0)!;
  }

  @override
  String? changeLogPageFromStandardUrl(String standardUrl) =>
      '$standardUrl/-/releases';

  @override
  Future<APKDetails> getLatestAPKDetails(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    standardUrl = trimJobUrl(standardUrl);
    Response res = await sourceRequest(
      '$standardUrl/lastSuccessfulBuild/api/json',
      additionalSettings,
    );
    if (res.statusCode == 200) {
      var json = jsonDecode(res.body);
      var releaseDate = json['timestamp'] == null
          ? null
          : DateTime.fromMillisecondsSinceEpoch(json['timestamp'] as int);
      var version = json['number'] == null
          ? ''
          : (json['number'] as int).toString();
      var apkUrls = (json['artifacts'] as List<dynamic>)
          .map((e) {
            var path = (e['relativePath'] as String?);
            if (path != null && path.isNotEmpty) {
              path = '$standardUrl/lastSuccessfulBuild/artifact/$path';
            }
            return path == null
                ? const MapEntry<String, String>('', '')
                : MapEntry<String, String>(
                    (e['fileName'] ?? e['relativePath']) as String,
                    path,
                  );
          })
          .where(
            (url) =>
                url.value.isNotEmpty &&
                source_provider.hasSupportedApkExtension(url.key),
          )
          .toList();
      return APKDetails(
        version,
        apkUrls,
        AppNames(Uri.parse(standardUrl).host, standardUrl.split('/').last),
        releaseDate: releaseDate,
      );
    } else {
      throw getUpdatiumHttpError(res);
    }
  }
}
