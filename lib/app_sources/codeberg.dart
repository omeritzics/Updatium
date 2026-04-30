import 'package:simple_localization/simple_localization.dart';
import 'package:updatium/app_sources/github.dart';
import 'package:updatium/providers/source_provider.dart';

class Codeberg extends AppSource {
  GitHub gh = GitHub(hostChanged: true);
  Codeberg() {
    name = tr('codeberg');
    hosts = ['codeberg.org'];
    additionalSourceAppSpecificSettingFormItems =
        gh.additionalSourceAppSpecificSettingFormItems;
    canSearch = true;
    searchQuerySettingFormItems = gh.searchQuerySettingFormItems;
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

  String? changeLogPageFromStandardUrl(String standardUrl) =>
      '$standardUrl/releases';

  @override
  Future<APKDetails> getLatestAPKDetails(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    return await gh.getLatestAPKDetails(standardUrl, additionalSettings);
  }

  AppNames getAppNames(String standardUrl) {
    return SourceProvider().getAppNamesFromUrl(standardUrl);
  }

  @override
  Future<Map<String, List<String>>> search(
    String query, {
    Map<String, dynamic> querySettings = const {},
  }) async {
    return gh.search(query, querySettings: querySettings);
  }
}
