import 'package:updatium/app_sources/html.dart';
import 'package:updatium/components/generated_form.dart';
import 'package:updatium/custom_errors.dart';
import 'package:updatium/providers/source_provider.dart';

class DirectAPKLink extends AppSource {
  HTML html = HTML();

  DirectAPKLink() {
    additionalSourceAppSpecificSettingFormItems = [
      ...html.additionalSourceAppSpecificSettingFormItems.where(
        (element) => element
            .where((element) => element.key == 'requestHeader')
            .isNotEmpty,
      ),
    ];
    excludeCommonSettingKeys = [
      'versionExtractionRegEx',
      'matchGroupToUse',
      'versionDetection',
      'useVersionCodeAsOSVersion',
      'apkFilterRegEx',
      'autoApkFilterByArch',
    ];
  }

  @override
  String get name => 'Direct APK Link';

  @override
  List<List<GeneratedFormItem>> get additionalSourceAppSpecificSettingFormItems => [
    ...html.additionalSourceAppSpecificSettingFormItems.where(
      (element) => element
          .where((element) => element.key == 'requestHeader')
          .isNotEmpty,
    ),
    [
      GeneratedFormDropdown(
        'defaultPseudoVersioningMethod',
        [
          MapEntry('partialAPKHash', 'Partial APK Hash'),
          MapEntry('ETag', 'ETag'),
        ],
        label: 'Default pseudo-versioning method',
        defaultValue: 'partialAPKHash',
      ),
    ],
  ];

  @override
  String sourceSpecificStandardizeURL(String url, {bool forSelection = false}) {
    if (!forSelection) {
      return url;
    }
    RegExp standardUrlRegExA = RegExp('.+\\.apk\$', caseSensitive: false);
    var match = standardUrlRegExA.firstMatch(url);
    if (match == null) {
      throw InvalidURLError(name);
    }
    return match.group(0)!;
  }

  @override
  Future<Map<String, String>?> getRequestHeaders(
    Map<String, dynamic> additionalSettings,
    String url, {
    bool forAPKDownload = false,
  }) {
    return html.getRequestHeaders(
      additionalSettings,
      url,
      forAPKDownload: forAPKDownload,
    );
  }

  @override
  Future<APKDetails> getLatestAPKDetails(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    var additionalSettingsNew = getDefaultValuesFromFormItems(
      html.combinedAppSpecificSettingFormItems,
    );
    for (var s in additionalSettings.keys) {
      if (additionalSettingsNew.containsKey(s)) {
        additionalSettingsNew[s] = additionalSettings[s];
      }
    }
    additionalSettingsNew['directAPKLink'] = true;
    additionalSettingsNew['versionDetection'] = false;
    return html.getLatestAPKDetails(standardUrl, additionalSettingsNew);
  }
}
