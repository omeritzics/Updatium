import 'package:updatium/app_sources/github.dart' as gh;
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/services/slang_converter.dart';

class Codeberg extends AppSource {
  Codeberg() {
    final github = gh.GitHub();
    name = 'codeberg'.t();
    hosts = ['codeberg.org'];
    additionalSourceAppSpecificSettingFormItems =
        github.additionalSourceAppSpecificSettingFormItems;
    canSearch = true;
    searchQuerySettingFormItems = github.searchQuerySettingFormItems;
    isOpenSource = true;
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
    return await gh.GitHub().getLatestAPKDetailsCommon2(
      standardUrl,
      additionalSettings,
      (bool useTagUrl) async {
        final standardUri = Uri.parse(standardUrl);
        final apiPath =
            '/api/v1/repos${standardUri.path}/${useTagUrl ? 'tags' : 'releases'}';
        return standardUri
            .replace(path: apiPath, queryParameters: {'per_page': '100'})
            .toString();
      },
      null,
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
    final requestUrl =
        'https://codeberg.org/api/v1/repos/search?q=${Uri.encodeComponent(query)}';
    final res = await sourceRequest(requestUrl, {});
    if (res.statusCode == 200) {
      final html = res.body;
      final urls = <String, List<String>>{};
      // Find repository links in the page
      final linkReg = RegExp(r'href="/([^"/]+/[^"/]+)"');
      for (var match in linkReg.allMatches(html)) {
        final path = match.group(1)!;
        final fullUrl = 'https://codeberg.org/$path';
        final name = path.split('/').last;
        urls[fullUrl] = [path, name];
      }
      return urls;
    } else {
      throw getUpdatiumHttpError(res);
    }
  }
}
