import 'package:flutter/material.dart';
import 'package:updatium/components/generated_form.dart';
import 'package:updatium/services/slang_converter.dart';

List<List<GeneratedFormItem>> additionalSettingFormItems = [
  [GeneratedFormTextField('appName', label: 'appName'.t(), required: false)],
  [
    GeneratedFormTextField(
      'appAuthor',
      label: 'appAuthor'.t(),
      required: false,
    ),
  ],
  [
    GeneratedFormTextField(
      'appSourceURL',
      label: 'appSourceURL'.t(),
      required: false,
    ),
  ],
  [GeneratedFormTextField('about', label: 'about'.t(), required: false)],
  [
    GeneratedFormSwitch(
      'trackOnly',
      label: 'trackOnly'.t(),
      defaultValue: false,
    ),
  ],

  [
    GeneratedFormSwitch(
      'versionDetection',
      label: 'versionDetectionExplanation'.t(),
      defaultValue: true,
    ),
  ],
  [
    GeneratedFormSwitch(
      'useVersionCodeAsOSVersion',
      label: 'useVersionCodeAsOSVersion'.t(),
      defaultValue: false,
    ),
  ],
  [
    GeneratedFormSwitch(
      'autoApkFilterByArch',
      label: 'autoApkFilterByArch'.t(),
      defaultValue: true,
    ),
  ],
  [
    GeneratedFormSwitch(
      'exemptFromBackgroundUpdates',
      label: 'exemptFromBackgroundUpdates'.t(),
      defaultValue: false,
    ),
  ],

  [
    GeneratedFormSwitch(
      'useVersionCodeAsOSVersion',
      label: 'useVersionCodeAsOSVersion'.t(),
      defaultValue: false,
    ),
  ],
  [
    GeneratedFormSwitch(
      'autoApkFilterByArch',
      label: 'autoApkFilterByArch'.t(),
      defaultValue: true,
    ),
  ],
  [
    GeneratedFormSwitch(
      'exemptFromBackgroundUpdates',
      label: 'exemptFromBackgroundUpdates'.t(),
    ),
  ],
  [
    GeneratedFormSwitch(
      'skipUpdateNotifications',
      label: 'skipUpdateNotifications'.t(),
    ),
  ],
  [
    GeneratedFormSwitch(
      'refreshBeforeDownload',
      label: 'refreshBeforeDownload'.t(),
    ),
  ],
  [
    GeneratedFormSwitch(
      'fallbackToOlderReleases',
      label: 'fallbackToOlderReleases'.t(),
      defaultValue: true,
    ),
  ],
  [
    GeneratedFormSwitch(
      'trySelectingSuggestedVersionCode',
      label: 'trySelectingSuggestedVersionCode'.t(),
      defaultValue: true,
    ),
  ],
  [
    GeneratedFormSwitch(
      'includePrereleases',
      label: 'includePrereleases'.t(),
      defaultValue: false,
    ),
  ],
  [
    GeneratedFormSwitch(
      'stayOneVersionBehind',
      label: 'stayOneVersionBehind'.t(),
      defaultValue: false,
    ),
  ],
  [
    GeneratedFormSwitch(
      'useFirstApkOfVersion',
      label: 'useFirstApkOfVersion'.t(),
    ),
  ],
  [GeneratedFormSwitch('verifyLatestTag', label: 'verifyLatestTag'.t())],
  [
    GeneratedFormDropdown(
      'sortMethodChoice',
      [
        MapEntry('date', 'releaseDate'.t()),
        MapEntry('smartname', 'smartname'.t()),
        MapEntry('none', 'none'.t()),
        MapEntry(
          'smartname-datefallback',
          '${'smartname'.t()} x ${'releaseDate'.t()}',
        ),
        MapEntry('name', 'name'.t()),
      ],
      label: 'sortMethod'.t(),
      defaultValue: 'date',
    ),
  ],
  [
    GeneratedFormSwitch(
      'useLatestAssetDateAsReleaseDate',
      label: 'useLatestAssetDateAsReleaseDate'.t(),
      defaultValue: false,
    ),
  ],
  [
    GeneratedFormSwitch(
      'releaseTitleAsVersion',
      label: 'releaseTitleAsVersion'.t(),
      defaultValue: false,
    ),
  ],
];

const List<String> supportedApkExtensions = ['.apk', '.xapk'];

bool hasSupportedApkExtension(String filename) {
  var lower = filename.toLowerCase();
  return supportedApkExtensions.any((ext) => lower.endsWith(ext));
}

String? regExValidator(String? value) {
  if (value == null || value.isEmpty) {
    return null;
  }
  try {
    RegExp(value);
  } catch (e) {
    return 'invalidRegEx'.t();
  }
  return null;
}

List<List<GeneratedFormItem>> advancedSpecificSettingFormItems = [
  [
    GeneratedFormTextField(
      'appId',
      label: 'appId'.t(),
      required: false,
      additionalValidators: [
        (value) {
          if (value == null || value.isEmpty) {
            return null;
          }
          final isValid = RegExp(
            r'^([A-Za-z]{1}[A-Za-z\d_]*\.)+[A-Za-z][A-Za-z\d_]*$',
          ).hasMatch(value);
          if (!isValid) {
            return 'invalidInput'.t();
          }
          return null;
        },
      ],
    ),
  ],
  [
    GeneratedFormSwitch(
      'shizukuPretendToBeGooglePlay',
      label: 'shizukuPretendToBeGooglePlay'.t(),
      defaultValue: false,
    ),
  ],
  [
    GeneratedFormSwitch(
      'allowInsecure',
      label: 'allowInsecure'.t(),
      defaultValue: false,
    ),
  ],
  [
    GeneratedFormTextField(
      'versionExtractionRegEx',
      label: 'trimVersionString'.t(),
      required: false,
      additionalValidators: [(value) => regExValidator(value)],
    ),
  ],
  [
    GeneratedFormTextField(
      'matchGroupToUse',
      label: t('matchGroupToUseForX', args: ['trimVersionString'.t()]),
      required: false,
      hint: '\$0',
    ),
  ],
  [
    GeneratedFormTextField(
      'filterReleaseTitlesByRegEx',
      label: 'filterReleaseTitlesByRegEx'.t(),
      required: false,
      additionalValidators: [
        (value) {
          return regExValidator(value);
        },
      ],
    ),
  ],
  [
    GeneratedFormTextField(
      'apkFilterRegEx',
      label: 'filterAPKsByRegEx'.t(),
      required: false,
      additionalValidators: [(value) => regExValidator(value)],
    ),
  ],
  [
    GeneratedFormTextField(
      'filterReleaseNotesByRegEx',
      label: 'filterReleaseNotesByRegEx'.t(),
      required: false,
      additionalValidators: [
        (value) {
          return regExValidator(value);
        },
      ],
    ),
  ],
  [
    GeneratedFormSwitch(
      'invertAPKFilter',
      label: '${'invertRegEx'.t()} (${'filterAPKsByRegEx'.t()})',
      defaultValue: false,
    ),
  ],
];

List<List<GeneratedFormItem>> getCombinedAdvancedSettingFormItems(
  bool allowIncludeZips,
) {
  var items = <List<GeneratedFormItem>>[];
  items.addAll(advancedSpecificSettingFormItems.sublist(1));
  if (allowIncludeZips) {
    items.add([
      GeneratedFormTextField(
        'zippedApkFilterRegEx',
        label: 'zippedApkFilterRegEx'.t(),
        required: false,
        additionalValidators: [(value) => regExValidator(value)],
      ),
    ]);
  }
  return items;
}

class AdvancedSettingsTile extends StatelessWidget {
  final bool currentInferAppIdIfOptional;
  final bool appIdInferIsOptional;
  final List<List<GeneratedFormItem>> formItems;
  final Function(bool) onInferAppIdChanged;
  final Function(Map<String, dynamic>) onAdvancedSettingsChanged;

  const AdvancedSettingsTile({
    super.key,
    required this.currentInferAppIdIfOptional,
    required this.appIdInferIsOptional,
    required this.formItems,
    required this.onInferAppIdChanged,
    required this.onAdvancedSettingsChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: false,
      title: Text('advanced'.t()),
      children: [
        if (appIdInferIsOptional)
          GeneratedForm(
            key: const Key('inferAppIdIfOptional'),
            items: [
              [
                GeneratedFormSwitch(
                  'inferAppIdIfOptional',
                  label: 'tryInferAppIdFromCode'.t(),
                  defaultValue: currentInferAppIdIfOptional,
                ),
              ],
            ],
            onValueChanges: (values, valid, isBuilding) {
              if (!isBuilding) {
                onInferAppIdChanged(values['inferAppIdIfOptional']);
              }
            },
          ),
        const SizedBox(height: 16),
        GeneratedForm(
          key: const Key('advancedSettings'),
          items: formItems,
          onValueChanges: (values, valid, isBuilding) {
            if (!isBuilding) {
              onAdvancedSettingsChanged(values);
            }
          },
        ),
      ],
    );
  }
}
