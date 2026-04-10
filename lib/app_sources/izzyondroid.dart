import 'package:updatium/app_sources/fdroid.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:easy_localization/easy_localization.dart';

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
    RegExp standardUrlRegExA = RegExp(
      '^https?://android.${getSourceRegex(hosts)}/repo/apk/[^/]+',
      caseSensitive: false,
    );
    RegExpMatch? match = standardUrlRegExA.firstMatch(url);
    if (match == null) {
      RegExp standardUrlRegExB = RegExp(
        '^https?://apt.${getSourceRegex(hosts)}/fdroid/index/apk/[^/]+',
        caseSensitive: false,
      );
      match = standardUrlRegExB.firstMatch(url);
    }
      throw InvalidURLError(name);
    return match.group(0)!;
  Future<String?> tryInferringAppId(
    String standardUrl, {
    Map<String, dynamic> additionalSettings = const {},
  }) async {
    return fd.tryInferringAppId(standardUrl);
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
      standardUrl,
      name,
      additionalSettings: additionalSettings,
}
