import 'package:updatium/app_sources/fdroid.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:simple_localization/simple_localization.dart';

class IzzyOnDroid extends AppSource {
  late FDroid fd;
  IzzyOnDroid() {
    hosts = ['izzysoft.de'];
    name = tr('izzyondroid');
    fd = FDroid();
    additionalSourceAppSpecificSettingFormItems =
        fd.additionalSourceAppSpecificSettingFormItems;
    allowSubDomains = true;
  }
  @override
  String sourceSpecificStandardizeURL(String url, {bool forSelection = false}) {
    return SourceProvider().standardizeUrlWithRegex(
      url,
      '^https?://apt.${getSourceRegex(hosts)}/fdroid/index/apk/[^/]+',
      sourceName: name,
      transform: (matched, match) {
        // Check if URL matches the android. pattern first
        RegExp regExA = RegExp(
          '^https?://android.${getSourceRegex(hosts)}/repo/apk/[^/]+',
          caseSensitive: false,
        );
        var matchA = regExA.firstMatch(url);
        if (matchA != null) {
          return matchA.group(0)!;
        }
        return matched;
      },
    );
  }

  @override
  Future<String?> tryInferringAppId(
    String standardUrl, {
    Map<String, dynamic> additionalSettings = const {},
  }) async {
    return fd.tryInferringAppId(standardUrl);
  }

  @override
  Future<APKDetails> getLatestAPKDetails(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    String? appId = await tryInferringAppId(standardUrl);
    return fd.getAPKUrlsFromFDroidPackagesAPIResponse(
      await sourceRequest(
        'https://apt.izzysoft.de/fdroid/api/v1/packages/$appId',
        additionalSettings,
      ),
      'https://android.izzysoft.de/frepo/$appId',
      name,
      additionalSettings,
      standardUrl,
    );
  }
}
