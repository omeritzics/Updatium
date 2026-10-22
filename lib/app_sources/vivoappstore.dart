import 'dart:convert';

import 'package:updatium/custom_errors.dart';
import 'package:updatium/services/slang_converter.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/providers/source_provider.dart' as source_provider;

class VivoAppStore extends AppSource {
  static const appDetailUrl =
      'https://h5coml.vivo.com.cn/h5coml/appdetail_h5/browser_v2/index.html?appId=';
  VivoAppStore() {
    name = 'vivoAppStore'.t();
    hosts = ['h5.appstore.vivo.com.cn', 'h5coml.vivo.com.cn'];
    naiveStandardVersionDetection = true;
    canSearch = true;
    allowOverride = false;
  }

  String parseVivoAppId(String url) {
    final appId = Uri.parse(url.replaceAll('/#', '')).queryParameters['appId'];
    if (appId == null || appId.isEmpty) {
      throw InvalidURLError(name);
    }
    return appId;
  }

  Future<Map<String, dynamic>> getDetailJson(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    final vivoAppId = parseVivoAppId(standardUrl);
    const apiBaseUrl = 'https://h5-api.appstore.vivo.com.cn/detail/';
    const params = '?frompage=messageh5&app_version=2100';
    final detailUrl = '$apiBaseUrl$vivoAppId$params';
    final response = await sourceRequest(detailUrl, additionalSettings);
    if (response.statusCode != 200) {
      throw getUpdatiumHttpError(response);
    }
    final json = jsonDecode(response.body);
    if (json['id'] == null) {
      throw NoReleasesError();
    }
    return json;
  }

  @override
  String sourceSpecificStandardizeURL(String url, {bool forSelection = false}) {
    final vivoAppId = parseVivoAppId(url);
    return '$appDetailUrl$vivoAppId';
  }

  @override
  Future<String?> tryInferringAppId(
    String standardUrl, {
    Map<String, dynamic> additionalSettings = const {},
  }) async {
    final json = await getDetailJson(standardUrl, additionalSettings);
    return json['package_name'];
  }

  @override
  Future<APKDetails> getLatestAPKDetails(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    final json = await getDetailJson(standardUrl, additionalSettings);
    final appName = json['title_zh'].toString();
    final packageName = json['package_name'].toString();
    final versionName = json['version_name'].toString();
    final versionCode = json['version_code'].toString();
    final developer = json['developer'].toString();
    final uploadTime = json['upload_time'].toString();
    final apkUrl = json['download_url'].toString();
    final apkName =
        '${packageName}_$versionCode${source_provider.supportedApkExtensions[0]}';
    return APKDetails(
      versionName,
      [MapEntry(apkName, apkUrl)],
      AppNames(developer, appName),
      releaseDate: DateTime.parse(uploadTime),
    );
  }

  @override
  Future<Map<String, List<String>>> search(
    String query, {
    Map<String, dynamic> querySettings = const {},
  }) async {
    const apiBaseUrl =
        'https://h5-api.appstore.vivo.com.cn/h5appstore/search/result-list?app_version=2100&page_index=1&apps_per_page=20&target=local&cfrom=2&key=';
    final searchUrl = '$apiBaseUrl${Uri.encodeQueryComponent(query)}';
    final response = await sourceRequest(searchUrl, {});
    if (response.statusCode != 200) {
      throw getUpdatiumHttpError(response);
    }
    final json = jsonDecode(response.body);
    if (json['code'] != 0 || !json['data']['appSearchResponse']['result']) {
      throw NoReleasesError();
    }
    final Map<String, List<String>> results = {};
    final resultsJson = json['data']['appSearchResponse']?['value'];
    if (resultsJson != null) {
      for (var item in (resultsJson as List<dynamic>)) {
        results['$appDetailUrl${item['id']}'] = [
          item['title_zh'].toString(),
          item['developer'].toString(),
        ];
      }
    }
    return results;
  }
}
