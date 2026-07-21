import 'package:updatium/app_sources/github.dart' as gh;
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/services/slang_converter.dart';

class Codeberg extends AppSource {
  final GitHub _gh = GitHub(hostChanged: true);
  Codeberg() {
    var github = gh.GitHub();
    name = 'codeberg'.t();
    hosts = ['codeberg.org'];
    canSearch = true;
    isOpenSource = true;
  }

  @override
  List<List<GeneratedFormItem>>
  get additionalSourceAppSpecificSettingFormItems =>
      _gh.additionalSourceAppSpecificSettingFormItems;

  @override
  List<GeneratedFormItem> get searchQuerySettingFormItems =>
      _gh.searchQuerySettingFormItems;

  @override
  String sourceSpecificStandardizeURL(String url, {bool forSelection = false}) {
    return standardizeUrlWithRegex(
      url,
      subdomainPrefix: r'(www\.)?',
      pathPattern: r'/[^/]+/[^/]+',
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
    return await gh.getLatestAPKDetailsCommon2(standardUrl, additionalSettings, (
      bool useTagUrl,
    ) async {
      final standardUri = Uri.parse(standardUrl);
      final apiPath =
          '/api/v1/repos${standardUri.path}/${useTagUrl ? 'tags' : 'releases'}';
      return standardUri
          .replace(path: apiPath, queryParameters: {'per_page': '100'})
          .toString();
    }, null);
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
    return _gh.searchCommon(
      query,
      'https://${hosts[0]}/api/v1/repos/search?q=${Uri.encodeQueryComponent(query)}&limit=100',
      'data',
      querySettings: querySettings,
    );
  }
}
