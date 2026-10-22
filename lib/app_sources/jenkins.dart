import 'dart:convert';
import 'package:http/http.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/providers/source_provider.dart' as source_provider;

class Jenkins extends AppSource {
  Jenkins() {
    name = 'Jenkins';
    versionDetectionDisallowed = true;
    neverAutoSelect = true;
    showReleaseDateAsVersionToggle = true;
  }
  String trimJobUrl(String url) {
    return SourceProvider().standardizeUrlWithRegex(
      url,
      '.*/job/[^/]+',
      sourceName: name,
    );
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
    final Response res = await sourceRequest(
      '$standardUrl/lastSuccessfulBuild/api/json',
      additionalSettings,
    );
    if (res.statusCode == 200) {
      final json = jsonDecode(res.body);
      final releaseDate = json['timestamp'] == null
          ? null
          : DateTime.fromMillisecondsSinceEpoch(json['timestamp'] as int);
      final version = json['number'] == null
          ? ''
          : (json['number'] as int).toString();
      final apkUrls = (json['artifacts'] as List<dynamic>)
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
