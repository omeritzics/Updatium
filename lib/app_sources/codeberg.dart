import 'package:updatium/app_sources/gitea.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/services/slang_converter.dart';

class Codeberg extends AppSource {
  Gitea() {
    name = t('codeberg');
    hosts = ['codeberg.org'];
    additionalSourceAppSpecificSettingFormItems =
        Gitea().additionalSourceAppSpecificSettingFormItems;
    canSearch = true;
    searchQuerySettingFormItems = Gitea().searchQuerySettingFormItems;
    openSource = true;
  }
  @override
  String sourceSpecificStandardizeURL(String url, {bool forSelection = false}) {
    return SourceProvider().standardizeUrlWithRegex(
      url,
      '^https?://(www\\.)?${getSourceRegex(hosts)}/[^/]+/[^/]+',
      sourceName: name,
    );
  }

  @override
  String? changeLogPageFromStandardUrl(String standardUrl) =>
      '$standardUrl/releases';

  @override
  Future<APKDetails> getLatestAPKDetails(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    return await Gitea().getLatestAPKDetails(
      standardUrl,
      additionalSettings,
    );
  }

  AppNames getAppNames(String standardUrl) {
    return SourceProvider().getAppNamesFromUrl(standardUrl);
  }

  @override
  Future<Map<String, List<String>>> search(
    String query, {
    Map<String, dynamic> querySettings = const {},
  }) async {
    // Search Codeberg via explore page
    var requestUrl =
        'https://codeberg.org/api/v1/repos/search?q=${Uri.encodeComponent(query)}';
    var res = await sourceRequest(requestUrl, {});
    if (res.statusCode == 200) {
      var html = res.body;
      var urls = <String, List<String>>{};
      // Find repository links in the page
      var linkReg = RegExp(r'href="/([^"/]+/[^"/]+)"');
      for (var match in linkReg.allMatches(html)) {
        var path = match.group(1)!;
        var fullUrl = 'https://codeberg.org/$path';
        var name = path.split('/').last;
        urls[fullUrl] = [path, name];
      }
      return urls;
    } else {
      throw getUpdatiumHttpError(res);
    }
  }
}
