import 'package:updatium/components/generated_form.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/services/slang_converter.dart';

List<List<GeneratedFormItem>> additionalAppSpecificSourceAgnosticSettingFormItems = [
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
];
