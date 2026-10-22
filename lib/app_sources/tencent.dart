import 'dart:convert';

import 'package:updatium/custom_errors.dart';
import 'package:updatium/services/slang_converter.dart';
import 'package:updatium/providers/source_provider.dart';

class Tencent extends AppSource {
  Tencent() {
    name = 'tencentAppStore'.t();
    hosts = ['sj.qq.com'];
    naiveStandardVersionDetection = true;
    showReleaseDateAsVersionToggle = true;
  }
  @override
  String sourceSpecificStandardizeURL(String url, {bool forSelection = false}) {
    return SourceProvider().standardizeUrlWithRegex(
      url,
      '^https?://${getSourceRegex(hosts)}/appdetail/[^/]+',
      sourceName: name,
    );
  }

  @override
  Future<String?> tryInferringAppId(
    String standardUrl, {
    Map<String, dynamic> additionalSettings = const {},
  }) async {
    return Uri.parse(standardUrl).pathSegments.last;
  }

  @override
  Future<APKDetails> getLatestAPKDetails(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    final String appId = (await tryInferringAppId(standardUrl))!;
    final String baseHost = Uri.parse(
      standardUrl,
    ).host.split('.').reversed.toList().sublist(0, 2).reversed.join('.');
    final res = await sourceRequest(
      'https://a.app.$baseHost/o/simple.jsp?pkgname=$appId',
      additionalSettings,
      followRedirects: false,
    );
    if (res.statusCode == 200) {
      dynamic json;
      try {
        json = jsonDecode(
          res.body
              .split('\n')
              .map((line) => line.trim())
              .where((line) => line.startsWith('window.systemData='))
              .first
              .substring(18),
        )['appDetail'];
      } catch (e) {
        throw NoReleasesError();
      }
      if (json == null) {
        throw NoReleasesError();
      }
      final version = json['versionName'];
      var apkUrl = json['apkUrl64'];
      apkUrl ??= json['apkUrl'];
      if (apkUrl == null) {
        throw NoAPKError();
      }
      final appName = json['appName'];
      final author = json['author'];
      final apkName =
          Uri.parse(apkUrl).queryParameters['fsname'] ??
          '${appId}_$version.apk';
      return APKDetails(version, [
        MapEntry(apkName, apkUrl),
      ], AppNames(author, appName));
    } else {
      throw getUpdatiumHttpError(res);
    }
  }
}
