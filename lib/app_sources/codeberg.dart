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
    trusted = true;
  }
  @override
  String sourceSpecificStandardizeURL(String url, {bool forSelection = false}) {
    RegExp standardUrlRegEx = RegExp(
      '^https?://(www\\.)?${getSourceRegex(hosts)}/[^/]+/[^/]+',
      caseSensitive: false,
    );
    RegExpMatch? match = standardUrlRegEx.firstMatch(url);
    if (match == null) {
      throw InvalidURLError(name);
    }
    return match.group(0)!;
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
    String temp = standardUrl.substring(standardUrl.indexOf('://') + 3);
    List<String> names = temp.substring(temp.indexOf('/') + 1).split('/');
    return AppNames(names[0], names[1]);
  }

  @override
  Future<Map<String, List<String>>> search(
    String query, {
    Map<String, dynamic> querySettings = const {},
  }) async {
    return gh.search(query, querySettings: querySettings);
  }
}
