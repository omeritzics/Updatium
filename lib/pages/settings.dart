import 'package:device_info_plus/device_info_plus.dart';
import 'package:equations/equations.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:updatium/components/button_helpers.dart';
import 'package:updatium/components/generated_form.dart';
import 'package:updatium/components/generated_form_modal.dart';
import 'package:updatium/custom_errors.dart';
import 'package:updatium/main.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/logs_provider.dart';
import 'package:updatium/providers/native_provider.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shizuku_apk_installer/shizuku_apk_installer.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:updatium/generated/app_localizations.dart';

// Helper function to get full language names
String getLanguageName(Locale locale) {
  final Map<String, String> languageNames = {
    'ar': 'العربية',
    'bs': 'Bosanski',
    'ca': 'Català',
    'cs': 'Čeština',
    'da': 'Dansk',
    'de': 'Deutsch',
    'en': 'English',
    'es': 'Español',
    'et': 'Eesti',
    'fa': 'فارسی',
    'fr': 'Français',
    'gl': 'Galego',
    'he': 'עברית',
    'hu': 'Magyar',
    'id': 'Bahasa Indonesia',
    'it': 'Italiano',
    'ja': '日本語',
    'ko': '한국어',
    'ml': 'മലയാളം',
    'nl': 'Nederlands',
    'eo': 'Esperanto',
    'pl': 'Polski',
    'pt': 'Português',
    'pt_BR': 'Português (Brasil)',
    'ru': 'Русский',
    'sv': 'Svenska',
    'tr': 'Türkçe',
    'uk': 'Українська',
    'vi': 'Tiếng Việt',
    'zh': '中文',
    'zh_Hant_TW': '中文 (繁體)',
  };
  
  final key = locale.countryCode != null 
      ? '${locale.languageCode}_${locale.countryCode}'
      : locale.languageCode;
  
  return languageNames[key] ?? locale.languageCode.toUpperCase();
}

// Helper function for proper pluralization
String getLocalizedDuration(int minutes, BuildContext context) {
  final l10n = AppLocalizations.of(context)!;
  
  if (minutes < 60) {
    return l10n.minute(minutes);
  } else if (minutes < 24 * 60) {
    int hours = minutes ~/ 60;
    int remainingMinutes = minutes % 60;
    
    String hourText;
    if (hours == 1) {
      hourText = l10n.hour(hours).replaceAll('hours', 'hour').replaceAll('ساعات', 'ساعة').replaceAll('ساعات', 'ساعة').replaceAll('heures', 'heure').replaceAll('horas', 'hora').replaceAll('Stunden', 'Stunde').replaceAll('小時', '小時').replaceAll('시간', '시간').replaceAll('ore', 'ora').replaceAll('horas', 'hora').replaceAll('uren', 'uur').replaceAll('часов', 'час').replaceAll('saat', 'saat').replaceAll('שעות', 'שעה');
    } else {
      hourText = l10n.hour(hours);
    }
    
    if (remainingMinutes == 0) {
      return hourText;
    } else {
      return '$hourText ${l10n.minute(remainingMinutes)}';
    }
  } else {
    int days = minutes ~/ (24 * 60);
    return l10n.day(days);
  }
}

// Helper function to get localized source names
String getLocalizedSourceName(String sourceName, BuildContext context) {
  final l10n = AppLocalizations.of(context)!;
  switch (sourceName) {
    case AppLocalizations.of(context)!.githubStarredRepos:
      return l10n.githubStarredRepos;
    case 'Direct APK Link':
      return l10n.directAPKLink;
    default:
      return sourceName;
  }
}

// Helper function to localize form item labels
GeneratedFormItem localizeFormItem(GeneratedFormItem item, BuildContext context) {
  final l10n = AppLocalizations.of(context)!;
  
  if (item is GeneratedFormTextField) {
    String localizedLabel = item.label;
    switch (item.label) {
      case 'GitHub personal access token (increases rate limit)':
        localizedLabel = l10n.githubPATLabel;
        break;
      case 'GitLab personal access token (increases rate limit)':
        localizedLabel = l10n.gitlabPATLabel;
        break;
      case 'GitHub request prefix':
        localizedLabel = l10n.githubRequestPrefix;
        break;
      case 'GitLab request prefix':
        localizedLabel = l10n.gitlabRequestPrefix;
        break;
      case 'Default pseudo-versioning method':
        localizedLabel = l10n.defaultPseudoVersioningMethod;
        break;
      case 'About':
        localizedLabel = l10n.about;
        break;
      case 'Include prereleases':
        localizedLabel = l10n.includePrereleases;
        break;
      case 'Fallback to older releases':
        localizedLabel = l10n.fallbackToOlderReleases;
        break;
      case 'Filter release titles by regular expression':
        localizedLabel = l10n.filterReleaseTitlesByRegEx;
        break;
      case 'Filter release notes by regular expression':
        localizedLabel = l10n.filterReleaseNotesByRegEx;
        break;
      case 'Verify latest tag':
        localizedLabel = l10n.verifyLatestTag;
        break;
      case 'Sort method':
        localizedLabel = l10n.sortMethod;
        break;
      case 'Release title as version':
        localizedLabel = l10n.releaseTitleAsVersion;
        break;
      case 'Minimum star count':
        localizedLabel = l10n.minimumStarCount;
        break;
      case 'Skip update notifications':
        localizedLabel = l10n.skipUpdateNotifications;
        break;
      case 'Refresh before download':
        localizedLabel = l10n.refreshBeforeDownload;
        break;
    }
    
    // Localize "About" text in belowWidgets
    List<Widget>? localizedBelowWidgets = item.belowWidgets?.map((widget) {
      if (widget is Text && widget.data == 'About') {
        return Text(
          l10n.about,
          style: widget.style,
        );
      }
      return widget;
    }).toList();
    
    return GeneratedFormTextField(
      item.key,
      label: localizedLabel,
      defaultValue: item.defaultValue,
      required: item.required,
      password: item.password,
      hint: item.hint,
      textInputType: item.textInputType,
      autoCompleteOptions: item.autoCompleteOptions,
      additionalValidators: item.additionalValidators as List<String? Function(String?)>,
      belowWidgets: localizedBelowWidgets as List<Widget>,
    );
  } else if (item is GeneratedFormDropdown) {
    // Localize dropdown options
    List<MapEntry<String, String>>? localizedOpts = item.opts?.map((option) {
      String localizedValue = option.value;
      switch (option.value) {
        case 'Partial APK Hash':
          localizedValue = l10n.partialAPKHash;
          break;
        case 'Release date':
          localizedValue = l10n.releaseDate;
          break;
        case 'Smart name':
          localizedValue = l10n.smartName;
          break;
        case 'None':
          localizedValue = l10n.none;
          break;
        case 'Smart + Date':
          localizedValue = l10n.smartPlusDate;
          break;
        case 'Name':
          localizedValue = l10n.name;
          break;
        default:
          localizedValue = option.value;
      }
      return MapEntry(option.key, localizedValue);
    }).toList();
    
    String localizedLabel = item.label;
    switch (item.label) {
      case 'Default pseudo-versioning method':
        localizedLabel = l10n.defaultPseudoVersioningMethod;
        break;
      default:
        localizedLabel = item.label;
    }
    
    return GeneratedFormDropdown(
      item.key,
      localizedOpts,
      label: localizedLabel,
      defaultValue: item.defaultValue,
    );
  }
  
  return item; // Return other types unchanged
}

// Spacing constants
const height8 = SizedBox(height: 8);
const height16 = SizedBox(height: 16);
const height32 = SizedBox(height: 32);

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  List<int> updateIntervalNodes = [
    15,
    30,
    60,
    120,
    180,
    360,
    720,
    1440,
    4320,
    10080,
    20160,
    43200,
  ];
  int updateInterval = 0;
  late SplineInterpolation updateIntervalInterpolator; // 🤓
  String updateIntervalLabel = 'Never - manual only';
  bool showIntervalLabel = true;
  final Map<ColorSwatch<Object>, String> colorsNameMap =
      <ColorSwatch<Object>, String>{
        ColorTools.createPrimarySwatch(updatiumThemeColor): 'Updatium',
      };

  void initUpdateIntervalInterpolator() {
    List<InterpolationNode> nodes = [];
    for (final (index, element) in updateIntervalNodes.indexed) {
      nodes.add(
        InterpolationNode(x: index.toDouble() + 1, y: element.toDouble()),
      );
    }
    updateIntervalInterpolator = SplineInterpolation(nodes: nodes);
  }

  void processIntervalSliderValue(double val) {
    if (val < 0.5) {
      updateInterval = 0;
      updateIntervalLabel = AppLocalizations.of(context)!.neverManualOnly;
      return;
    }
    int valInterpolated = 0;
    if (val < 1) {
      valInterpolated = 15;
    } else {
      valInterpolated = updateIntervalInterpolator.compute(val).round();
    }
    if (valInterpolated < 60) {
      updateInterval = valInterpolated;
      updateIntervalLabel = getLocalizedDuration(valInterpolated.round(), context);
    } else if (valInterpolated < 8 * 60) {
      int valRounded = (valInterpolated / 15).floor() * 15;
      updateInterval = valRounded;
      updateIntervalLabel = getLocalizedDuration(valRounded, context);
    } else if (valInterpolated < 24 * 60) {
      int valRounded = (valInterpolated / 30).floor() * 30;
      updateInterval = valRounded;
      updateIntervalLabel = getLocalizedDuration(valRounded, context);
    } else if (valInterpolated < 7 * 24 * 60) {
      int valRounded = (valInterpolated / (12 * 60)).floor() * 12 * 60;
      updateInterval = valRounded;
      updateIntervalLabel = getLocalizedDuration(valRounded, context);
    } else {
      int valRounded = (valInterpolated / (24 * 60)).floor() * 24 * 60;
      updateInterval = valRounded;
      updateIntervalLabel = getLocalizedDuration(valRounded, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = context.watch<SettingsProvider>();
    SourceProvider sourceProvider = SourceProvider();
    if (settingsProvider.prefs == null) settingsProvider.initializeSettings();
    initUpdateIntervalInterpolator();
    processIntervalSliderValue(settingsProvider.updateIntervalSliderVal);

    var followSystemThemeExplanation = FutureBuilder(
      builder: (ctx, val) {
        return ((val.data?.version.sdkInt ?? 30) < 29)
            ? Text(
                AppLocalizations.of(context)!.followSystemThemeExplanation,
                style: Theme.of(context).textTheme.labelSmall,
              )
            : const SizedBox.shrink();
      },
      future: DeviceInfoPlugin().androidInfo,
    );

    Future<bool> colorPickerDialog() async {
      return ColorPicker(
        color: settingsProvider.themeColor,
        onColorChanged: (Color color) =>
            setState(() => settingsProvider.themeColor = color),
        actionButtons: const ColorPickerActionButtons(
          okButton: true,
          closeButton: true,
          dialogActionButtons: false,
        ),
        pickersEnabled: const <ColorPickerType, bool>{
          ColorPickerType.both: false,
          ColorPickerType.primary: false,
          ColorPickerType.accent: false,
          ColorPickerType.bw: false,
          ColorPickerType.custom: true,
          ColorPickerType.wheel: true,
        },
        pickerTypeLabels: <ColorPickerType, String>{
          ColorPickerType.custom: AppLocalizations.of(context)!.standard,
          ColorPickerType.wheel: AppLocalizations.of(context)!.custom,
        },
        title: Text(
          AppLocalizations.of(context)!.selectX(AppLocalizations.of(context)!.color.toLowerCase()),
          style: Theme.of(context).textTheme.titleLarge,
        ),
        wheelDiameter: 192,
        wheelSquareBorderRadius: 32,
        width: 48,
        height: 48,
        borderRadius: 24,
        spacing: 8,
        runSpacing: 8,
        enableShadesSelection: false,
        customColorSwatchesAndNames: colorsNameMap,
        showMaterialName: true,
        showColorName: true,
        materialNameTextStyle: Theme.of(context).textTheme.bodySmall,
        colorNameTextStyle: Theme.of(context).textTheme.bodySmall,
        copyPasteBehavior: const ColorPickerCopyPasteBehavior(
          longPressMenu: true,
        ),
      ).showPickerDialog(
        context,
        transitionBuilder:
            (
              BuildContext context,
              Animation<double> a1,
              Animation<double> a2,
              Widget widget,
            ) {
              final double curvedValue = Curves.easeInCubic.transform(a1.value);
              return Transform(
                alignment: Alignment.center,
                transform: Matrix4.diagonal3Values(curvedValue, curvedValue, 1),
                child: Opacity(opacity: curvedValue, child: widget),
              );
            },
        transitionDuration: const Duration(milliseconds: 250),
      );
    }

    var colorPicker = ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      tileColor: Theme.of(context).colorScheme.surface,
      title: Text(
        AppLocalizations.of(context)!.selectX(AppLocalizations.of(context)!.color.toLowerCase()),
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        "${ColorTools.nameThatColor(settingsProvider.themeColor)} "
        "(${ColorTools.materialNameAndCode(settingsProvider.themeColor, colorSwatchNameMap: colorsNameMap)})",
      ),
      trailing: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: settingsProvider.themeColor,
          border: Border.all(
            color: Theme.of(context).colorScheme.outline,
            width: 1,
          ),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(24),
          onTap: () async {
            final Color colorBeforeDialog = settingsProvider.themeColor;
            if (!(await colorPickerDialog())) {
              setState(() {
                settingsProvider.themeColor = colorBeforeDialog;
              });
            }
          },
          child: Icon(
            Icons.palette,
            color: settingsProvider.themeColor.computeLuminance() > 0.5
                ? Colors.black
                : Colors.white,
            size: 24,
          ),
        ),
      ),
    );

    var useMaterialThemeSwitch = FutureBuilder(
      builder: (ctx, val) {
        return ((val.data?.version.sdkInt ?? 0) >= 31)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(child: Text(AppLocalizations.of(context)!.useMaterialYou)),
                  Switch(
                    value: settingsProvider.useMaterialYou,
                    onChanged: (value) {
                      settingsProvider.useMaterialYou = value;
                    },
                  ),
                ],
              )
            : const SizedBox.shrink();
      },
      future: DeviceInfoPlugin().androidInfo,
    );

    var sortDropdown = MenuAnchor(
      builder: (context, controller, child) {
        String selectedValue;
        switch (settingsProvider.sortColumn) {
          case SortColumnSettings.authorName:
            selectedValue = AppLocalizations.of(context)!.authorName;
            break;
          case SortColumnSettings.nameAuthor:
            selectedValue = AppLocalizations.of(context)!.nameAuthor;
            break;
          case SortColumnSettings.added:
            selectedValue = AppLocalizations.of(context)!.asAdded;
            break;
          case SortColumnSettings.releaseDate:
            selectedValue = AppLocalizations.of(context)!.releaseDate;
            break;
        }

        return TextField(
          controller: TextEditingController(text: selectedValue),
          readOnly: true,
          decoration: InputDecoration(
            labelText: AppLocalizations.of(context)!.appSortBy,
            filled: true,
            suffixIcon: const Icon(Icons.arrow_drop_down),
          ),
          onTap: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
        );
      },
      menuChildren: [
        MenuItemButton(
          onPressed: () =>
              settingsProvider.sortColumn = SortColumnSettings.authorName,
          child: Text(AppLocalizations.of(context)!.authorName),
        ),
        MenuItemButton(
          onPressed: () =>
              settingsProvider.sortColumn = SortColumnSettings.nameAuthor,
          child: Text(AppLocalizations.of(context)!.nameAuthor),
        ),
        MenuItemButton(
          onPressed: () =>
              settingsProvider.sortColumn = SortColumnSettings.added,
          child: Text(AppLocalizations.of(context)!.asAdded),
        ),
        MenuItemButton(
          onPressed: () =>
              settingsProvider.sortColumn = SortColumnSettings.releaseDate,
          child: Text(AppLocalizations.of(context)!.releaseDate),
        ),
      ],
    );

    var orderDropdown = MenuAnchor(
      builder: (context, controller, child) {
        String selectedValue =
            settingsProvider.sortOrder == SortOrderSettings.ascending
            ? AppLocalizations.of(context)!.ascending
            : AppLocalizations.of(context)!.descending;

        return TextField(
          controller: TextEditingController(text: selectedValue),
          readOnly: true,
          decoration: InputDecoration(
            labelText: AppLocalizations.of(context)!.appSortOrder,
            filled: true,
            suffixIcon: const Icon(Icons.arrow_drop_down),
          ),
          onTap: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
        );
      },
      menuChildren: [
        MenuItemButton(
          onPressed: () =>
              settingsProvider.sortOrder = SortOrderSettings.ascending,
          child: Text(AppLocalizations.of(context)!.ascending),
        ),
        MenuItemButton(
          onPressed: () =>
              settingsProvider.sortOrder = SortOrderSettings.descending,
          child: Text(AppLocalizations.of(context)!.descending),
        ),
      ],
    );

    var localeDropdown = MenuAnchor(
      builder: (context, controller, child) {
        String selectedValue = settingsProvider.forcedLocale == null
            ? AppLocalizations.of(context)!.followSystem
            : getLanguageName(
                supportedLocales
                  .firstWhere(
                    (e) => e.languageCode == settingsProvider.forcedLocale?.languageCode,
                    orElse: () => supportedLocales.first,
                  )
                );

        return TextField(
          controller: TextEditingController(text: selectedValue),
          readOnly: true,
          decoration: InputDecoration(
            labelText: AppLocalizations.of(context)!.language,
            filled: true,
            suffixIcon: const Icon(Icons.arrow_drop_down),
          ),
          onTap: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
        );
      },
      menuChildren: [
        MenuItemButton(
          onPressed: () {
            settingsProvider.forcedLocale = null;
            settingsProvider.resetLocaleSafe(context);
          },
          child: Text(AppLocalizations.of(context)!.followSystem),
        ),
        ...supportedLocales.map(
          (e) => MenuItemButton(
            onPressed: () {
              settingsProvider.forcedLocale = Locale(e.languageCode, e.countryCode);
              // context.setLocale(e.languageCode); // Removed - not available in Flutter localization
            },
            child: Text(getLanguageName(e)),
          ),
        ),
      ],
    );

    var intervalSlider = Slider(
      year2023: false,
      value: settingsProvider.updateIntervalSliderVal,
      max: updateIntervalNodes.length.toDouble(),
      divisions: updateIntervalNodes.length * 20,
      label: updateIntervalLabel,
      onChanged: (double value) {
        setState(() {
          settingsProvider.updateIntervalSliderVal = value;
          processIntervalSliderValue(value);
        });
      },
      onChangeStart: (double value) {
        setState(() {
          showIntervalLabel = false;
        });
      },
      onChangeEnd: (double value) {
        setState(() {
          showIntervalLabel = true;
          settingsProvider.updateInterval = updateInterval;
        });
      },
    );

    var sourceSpecificFields = sourceProvider.sources.map((e) {
      if (e.sourceConfigSettingFormItems.isNotEmpty) {
        return GeneratedForm(
          items: e.sourceConfigSettingFormItems.map((formItem) {
            var localizedItem = localizeFormItem(formItem, context);
            if (localizedItem is GeneratedFormSwitch) {
              localizedItem.defaultValue = settingsProvider.getSettingBool(localizedItem.key);
            } else {
              localizedItem.defaultValue = settingsProvider.getSettingString(localizedItem.key);
            }
            return [localizedItem];
          }).toList(),
          onValueChanges: (values, valid, isBuilding) {
            if (valid && !isBuilding) {
              values.forEach((key, value) {
                var formItem = e.sourceConfigSettingFormItems
                    .where((i) => i.key == key)
                    .firstOrNull;
                if (formItem is GeneratedFormSwitch) {
                  settingsProvider.setSettingBool(key, value == true);
                } else {
                  settingsProvider.setSettingString(key, value ?? '');
                }
              });
            }
          },
        );
      } else {
        return Container();
      }
    });

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            automaticallyImplyLeading: false,
            expandedHeight: MediaQuery.of(context).size.height * 0.15,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 20,
              ),
              title: Text(
                AppLocalizations.of(context)!.settings,
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyMedium!.color,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: settingsProvider.prefs == null
                  ? const SizedBox()
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.updates,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        height16,
                        //intervalDropdown,
                        height16,
                        if (showIntervalLabel)
                          SizedBox(
                            child: Text(
                              "${AppLocalizations.of(context)!.bgUpdateCheckInterval}: $updateIntervalLabel",
                            ),
                          )
                        else
                          const SizedBox(height: 16),
                        intervalSlider,
                        FutureBuilder(
                          builder: (ctx, val) {
                            return (settingsProvider.updateInterval > 0) &&
                                    (((val.data?.version.sdkInt ?? 0) >= 30) ||
                                        settingsProvider.useShizuku)
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              AppLocalizations.of(context)!.foregroundServiceExplanation,
                                            ),
                                          ),
                                          Switch(
                                            value:
                                                settingsProvider.useFGService,
                                            onChanged: (value) {
                                              settingsProvider.useFGService =
                                                  value;
                                            },
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              AppLocalizations.of(context)!.enableBackgroundUpdates,
                                            ),
                                          ),
                                          Switch(
                                            value: settingsProvider
                                                .enableBackgroundUpdates,
                                            onChanged: (value) {
                                              settingsProvider
                                                      .enableBackgroundUpdates =
                                                  value;
                                            },
                                          ),
                                        ],
                                      ),
                                      height8,
                                      Text(
                                        AppLocalizations.of(context)!.backgroundUpdateReqsExplanation,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.labelSmall,
                                      ),
                                      Text(
                                        AppLocalizations.of(context)!.backgroundUpdateLimitsExplanation,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.labelSmall,
                                      ),
                                      height8,
                                      if (settingsProvider
                                          .enableBackgroundUpdates)
                                        Column(
                                          children: [
                                            height16,
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Flexible(
                                                  child: Text(
                                                    AppLocalizations.of(context)!.bgUpdatesOnWiFiOnly,
                                                  ),
                                                ),
                                                Switch(
                                                  value: settingsProvider
                                                      .bgUpdatesOnWiFiOnly,
                                                  onChanged: (value) {
                                                    settingsProvider
                                                            .bgUpdatesOnWiFiOnly =
                                                        value;
                                                  },
                                                ),
                                              ],
                                            ),
                                            height16,
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Flexible(
                                                  child: Text(
                                                    AppLocalizations.of(context)!.bgUpdatesWhileChargingOnly,
                                                  ),
                                                ),
                                                Switch(
                                                  value: settingsProvider
                                                      .bgUpdatesWhileChargingOnly,
                                                  onChanged: (value) {
                                                    settingsProvider
                                                            .bgUpdatesWhileChargingOnly =
                                                        value;
                                                  },
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                    ],
                                  )
                                : const SizedBox.shrink();
                          },
                          future: DeviceInfoPlugin().androidInfo,
                        ),
                        height16,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(AppLocalizations.of(context)!.safeMode),
                                  Text(
                                    AppLocalizations.of(context)!.safeModeDescription,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.labelSmall,
                                  ),
                                ],
                              ),
                            ),
                            Switch(
                              value: settingsProvider.safeMode,
                              onChanged: (value) {
                                settingsProvider.safeMode = value;
                              },
                            ),
                          ],
                        ),
                        height16,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(child: Text(AppLocalizations.of(context)!.checkOnStart)),
                            Switch(
                              value: settingsProvider.checkOnStart,
                              onChanged: (value) {
                                settingsProvider.checkOnStart = value;
                              },
                            ),
                          ],
                        ),
                        height16,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(AppLocalizations.of(context)!.checkUpdateOnDetailPage),
                            ),
                            Switch(
                              value: settingsProvider.checkUpdateOnDetailPage,
                              onChanged: (value) {
                                settingsProvider.checkUpdateOnDetailPage =
                                    value;
                              },
                            ),
                          ],
                        ),
                        height16,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                AppLocalizations.of(context)!.onlyCheckInstalledOrTrackOnlyApps,
                              ),
                            ),
                            Switch(
                              value: settingsProvider
                                  .onlyCheckInstalledOrTrackOnlyApps,
                              onChanged: (value) {
                                settingsProvider
                                        .onlyCheckInstalledOrTrackOnlyApps =
                                    value;
                              },
                            ),
                          ],
                        ),
                        height16,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(AppLocalizations.of(context)!.removeOnExternalUninstall),
                            ),
                            Switch(
                              value: settingsProvider.removeOnExternalUninstall,
                              onChanged: (value) {
                                settingsProvider.removeOnExternalUninstall =
                                    value;
                              },
                            ),
                          ],
                        ),
                        height16,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(child: Text(AppLocalizations.of(context)!.parallelDownloads)),
                            Switch(
                              value: settingsProvider.parallelDownloads,
                              onChanged: (value) {
                                settingsProvider.parallelDownloads = value;
                              },
                            ),
                          ],
                        ),
                        height16,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    AppLocalizations.of(context)!.beforeNewInstallsShareToAppVerifier,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      launchUrlString(
                                        'https://github.com/soupslurpr/AppVerifier',
                                        mode: LaunchMode.externalApplication,
                                      );
                                    },
                                    child: Text(
                                      AppLocalizations.of(context)!.about,
                                      style: const TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Switch(
                              value: settingsProvider
                                  .beforeNewInstallsShareToAppVerifier,
                              onChanged: (value) {
                                settingsProvider
                                        .beforeNewInstallsShareToAppVerifier =
                                    value;
                              },
                            ),
                          ],
                        ),
                        height16,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(child: Text(AppLocalizations.of(context)!.useShizuku)),
                            Switch(
                              value: settingsProvider.useShizuku,
                              onChanged: (useShizuku) {
                                if (useShizuku) {
                                  ShizukuApkInstaller().checkPermission().then((
                                    resCode,
                                  ) {
                                    settingsProvider.useShizuku =
                                        resCode?.startsWith('granted') ?? false;
                                    switch (resCode) {
                                      case 'services_not_found':
                                        showError(
                                          UpdatiumError(
                                            AppLocalizations.of(context)!.shizukuBinderNotFound,
                                          ),
                                          context,
                                        );
                                      case 'old_shizuku':
                                        showError(
                                          UpdatiumError(AppLocalizations.of(context)!.shizukuOld),
                                          context,
                                        );
                                      case 'old_android_with_adb':
                                        showError(
                                          UpdatiumError(
                                            AppLocalizations.of(context)!.shizukuOldAndroidWithADB,
                                          ),
                                          context,
                                        );
                                      case 'denied':
                                        showError(
                                          UpdatiumError(AppLocalizations.of(context)!.cancelled),
                                          context,
                                        );
                                    }
                                  });
                                } else {
                                  settingsProvider.useShizuku = false;
                                }
                              },
                            ),
                          ],
                        ),
                        height16,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                AppLocalizations.of(context)!.shizukuPretendToBeGooglePlay,
                                style: TextStyle(
                                  color: settingsProvider.useShizuku
                                      ? null
                                      : Theme.of(context).colorScheme.onSurface
                                            .withValues(alpha: 0.6),
                                ),
                              ),
                            ),
                            Switch(
                              value:
                                  settingsProvider.shizukuPretendToBeGooglePlay,
                              onChanged: settingsProvider.useShizuku
                                  ? (value) {
                                      settingsProvider
                                              .shizukuPretendToBeGooglePlay =
                                          value;
                                    }
                                  : null,
                            ),
                          ],
                        ),
                        height32,
                        Text(
                          AppLocalizations.of(context)!.sourceSpecific,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        ...sourceSpecificFields,
                        height32,
                        Text(
                          AppLocalizations.of(context)!.appearance,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        height16,
                        MenuAnchor(
                          builder: (context, controller, child) {
                            String selectedValue;
                            switch (settingsProvider.theme) {
                              case ThemeSettings.system:
                                selectedValue = AppLocalizations.of(context)!.followSystem;
                                break;
                              case ThemeSettings.light:
                                selectedValue = AppLocalizations.of(context)!.light;
                                break;
                              case ThemeSettings.dark:
                                selectedValue = AppLocalizations.of(context)!.dark;
                                break;
                            }

                            return TextField(
                              controller: TextEditingController(
                                text: selectedValue,
                              ),
                              readOnly: true,
                              decoration: InputDecoration(
                                labelText: AppLocalizations.of(context)!.theme,
                                filled: true,
                                suffixIcon: const Icon(Icons.arrow_drop_down),
                              ),
                              onTap: () {
                                if (controller.isOpen) {
                                  controller.close();
                                } else {
                                  controller.open();
                                }
                              },
                            );
                          },
                          menuChildren: [
                            MenuItemButton(
                              onPressed: () =>
                                  settingsProvider.theme = ThemeSettings.system,
                              child: Text(AppLocalizations.of(context)!.followSystem),
                            ),
                            MenuItemButton(
                              onPressed: () =>
                                  settingsProvider.theme = ThemeSettings.light,
                              child: Text(AppLocalizations.of(context)!.light),
                            ),
                            MenuItemButton(
                              onPressed: () =>
                                  settingsProvider.theme = ThemeSettings.dark,
                              child: Text(AppLocalizations.of(context)!.dark),
                            ),
                          ],
                        ),
                        height8,
                        if (settingsProvider.theme == ThemeSettings.system)
                          followSystemThemeExplanation,
                        height16,
                        if (settingsProvider.theme != ThemeSettings.light)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(child: Text(AppLocalizations.of(context)!.useBlackTheme)),
                              Switch(
                                value: settingsProvider.useBlackTheme,
                                onChanged: (value) {
                                  settingsProvider.useBlackTheme = value;
                                },
                              ),
                            ],
                          ),
                        height8,
                        useMaterialThemeSwitch,
                        height16,
                        if (!settingsProvider.useMaterialYou) colorPicker,
                        height16,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child: sortDropdown),
                            const SizedBox(width: 16),
                            Expanded(child: orderDropdown),
                          ],
                        ),
                        height16,
                        localeDropdown,
                        FutureBuilder(
                          builder: (ctx, val) {
                            return (val.data?.version.sdkInt ?? 0) >= 36
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      height16,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: Text(AppLocalizations.of(context)!.useSystemFont),
                                          ),
                                          Switch(
                                            value:
                                                settingsProvider.useSystemFont,
                                            onChanged: (useSystemFont) {
                                              if (useSystemFont) {
                                                NativeFeatures.loadSystemFont()
                                                    .then((val) {
                                                      settingsProvider
                                                              .useSystemFont =
                                                          true;
                                                    });
                                              } else {
                                                settingsProvider.useSystemFont =
                                                    false;
                                              }
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                : const SizedBox.shrink();
                          },
                          future: DeviceInfoPlugin().androidInfo,
                        ),
                        height16,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(child: Text(AppLocalizations.of(context)!.pinUpdates)),
                            Switch(
                              value: settingsProvider.pinUpdates,
                              onChanged: (value) {
                                settingsProvider.pinUpdates = value;
                              },
                            ),
                          ],
                        ),
                        height16,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(AppLocalizations.of(context)!.moveNonInstalledAppsToBottom),
                            ),
                            Switch(
                              value: settingsProvider.buryNonInstalled,
                              onChanged: (value) {
                                settingsProvider.buryNonInstalled = value;
                              },
                            ),
                          ],
                        ),
                        height16,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(child: Text(AppLocalizations.of(context)!.hideNonInstalledApps)),
                            Switch(
                              value: settingsProvider.hideNonInstalled,
                              onChanged: (value) {
                                settingsProvider.hideNonInstalled = value;
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(child: Text(AppLocalizations.of(context)!.groupByCategory)),
                            Switch(
                              value: settingsProvider.groupByCategory,
                              onChanged: (value) {
                                settingsProvider.groupByCategory = value;
                              },
                            ),
                          ],
                        ),
                        height16,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(AppLocalizations.of(context)!.dontShowTrackOnlyWarnings),
                            ),
                            Switch(
                              value: settingsProvider.hideTrackOnlyWarning,
                              onChanged: (value) {
                                settingsProvider.hideTrackOnlyWarning = value;
                              },
                            ),
                          ],
                        ),
                        height16,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(AppLocalizations.of(context)!.dontShowAPKOriginWarnings),
                            ),
                            Switch(
                              value: settingsProvider.hideAPKOriginWarning,
                              onChanged: (value) {
                                settingsProvider.hideAPKOriginWarning = value;
                              },
                            ),
                          ],
                        ),
                        height16,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(child: Text(AppLocalizations.of(context)!.disablePageTransitions)),
                            Switch(
                              value: settingsProvider.disablePageTransitions,
                              onChanged: (value) {
                                settingsProvider.disablePageTransitions = value;
                              },
                            ),
                          ],
                        ),
                        height16,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(child: Text(AppLocalizations.of(context)!.reversePageTransitions)),
                            Switch(
                              value: settingsProvider.reversePageTransitions,
                              onChanged: settingsProvider.disablePageTransitions
                                  ? null
                                  : (value) {
                                      settingsProvider.reversePageTransitions =
                                          value;
                                    },
                            ),
                          ],
                        ),
                        height16,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(child: Text(AppLocalizations.of(context)!.highlightTouchTargets)),
                            Switch(
                              value: settingsProvider.highlightTouchTargets,
                              onChanged: (value) {
                                settingsProvider.highlightTouchTargets = value;
                              },
                            ),
                          ],
                        ),
                        height32,
                        Text(
                          AppLocalizations.of(context)!.categories,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        height16,
                        const CategoryEditorSelector(
                          showLabelWhenNotEmpty: false,
                        ),
                      ],
                    ),
            ),
          ),
        ],
      ),
      persistentFooterButtons: [
        Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Semantics(
                    button: true,
                    label: AppLocalizations.of(context)!.appSource,
                    hint: AppLocalizations.of(context)!.appSourceHint,
                    child: IconButton(
                      visualDensity: VisualDensity.compact,
                      onPressed: () {
                        launchUrlString(
                          settingsProvider.sourceUrl,
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      tooltip: AppLocalizations.of(context)!.appSource,
                      icon: const Icon(Icons.code),
                    ),
                  ),
                  Semantics(
                    button: true,
                    label: AppLocalizations.of(context)!.wiki,
                    hint: AppLocalizations.of(context)!.wikiHint,
                    child: IconButton(
                      visualDensity: VisualDensity.compact,
                      onPressed: () {
                        launchUrlString(
                          'https://github.com/omeritzics/Updatium/wiki',
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      tooltip: AppLocalizations.of(context)!.wiki,
                      icon: Localizations.localeOf(context).languageCode == 'he'
                          ? Transform(
                              transform: Matrix4.identity(),
                              child: const Icon(Icons.help),
                            )
                          : const Icon(Icons.help),
                    ),
                  ),
                  Semantics(
                    button: true,
                    label: AppLocalizations.of(context)!.appLogs,
                    hint: AppLocalizations.of(context)!.appLogsHint,
                    child: IconButton(
                      visualDensity: VisualDensity.compact,
                      onPressed: () {
                        context.read<LogsProvider>().get().then((logs) {
                          if (logs.isEmpty) {
                            showMessage(UpdatiumError(AppLocalizations.of(context)!.noLogs), context);
                          } else {
                            showDialog(
                              context: context,
                              builder: (BuildContext ctx) {
                                return const LogsDialog();
                              },
                            );
                          }
                        });
                      },
                      tooltip: AppLocalizations.of(context)!.appLogs,
                      icon: const Icon(Icons.bug_report),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class LogsDialog extends StatefulWidget {
  const LogsDialog({super.key});

  @override
  State<LogsDialog> createState() => _LogsDialogState();
}

class _LogsDialogState extends State<LogsDialog> {
  String? logString;
  List<int> days = [7, 5, 4, 3, 2, 1];
  int selectedDays = 7;

  @override
  Widget build(BuildContext context) {
    var logsProvider = context.read<LogsProvider>();
    void filterLogs(int days) {
      logsProvider
          .get(after: DateTime.now().subtract(Duration(days: days)))
          .then((value) {
            setState(() {
              String l = value.map((e) => e.toString()).join('\n\n');
              logString = l.isNotEmpty ? l : AppLocalizations.of(context)!.noLogs;
            });
          });
    }

    if (logString == null) {
      filterLogs(days.first);
    }

    return AlertDialog(
      scrollable: true,
      title: Text(AppLocalizations.of(context)!.appLogs),
      content: Column(
        children: [
          MenuAnchor(
            builder: (context, controller, child) {
              return TextField(
                controller: TextEditingController(
                  text: '$selectedDays days',
                ),
                readOnly: true,
                decoration: InputDecoration(
                  labelText: AppLocalizations.of(context)!.filter,
                  filled: true,
                  suffixIcon: const Icon(Icons.arrow_drop_down),
                ),
                onTap: () {
                  if (controller.isOpen) {
                    controller.close();
                  } else {
                    controller.open();
                  }
                },
              );
            },
            menuChildren: days.map((day) {
              return MenuItemButton(
                onPressed: () {
                  setState(() {
                    selectedDays = day;
                  });
                  filterLogs(day);
                },
                child: Text(AppLocalizations.of(context)!.day(day)),
              );
            }).toList(),
          ),
          const SizedBox(height: 32),
          Text(logString ?? ''),
        ],
      ),
      actions: [
        AppTextButton(
          onPressed: () async {
            var cont =
                (await showDialog<Map<String, dynamic>?>(
                  context: context,
                  builder: (BuildContext ctx) {
                    return GeneratedFormModal(
                      title: AppLocalizations.of(context)!.appLogs,
                      items: const [],
                      initValid: true,
                      message: AppLocalizations.of(context)!.removeFromUpdatium,
                    );
                  },
                )) !=
                null;
            if (cont) {
              logsProvider.clear();
              Navigator.of(context).pop();
            }
          },
          child: Text(AppLocalizations.of(context)!.remove),
        ),
        AppTextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(AppLocalizations.of(context)!.close),
        ),
        AppTextButton(
          onPressed: () {
            Share.share(logString ?? '', subject: AppLocalizations.of(context)!.appLogs);
            Navigator.of(context).pop();
          },
          child: Text(AppLocalizations.of(context)!.share),
        ),
      ],
    );
  }
}

class CategoryEditorSelector extends StatefulWidget {
  final void Function(List<String> categories)? onSelected;
  final bool singleSelect;
  final Set<String> preselected;
  final WrapAlignment alignment;
  final bool showLabelWhenNotEmpty;
  const CategoryEditorSelector({
    super.key,
    this.onSelected,
    this.singleSelect = false,
    this.preselected = const {},
    this.alignment = WrapAlignment.start,
    this.showLabelWhenNotEmpty = true,
  });

  @override
  State<CategoryEditorSelector> createState() => _CategoryEditorSelectorState();
}

class _CategoryEditorSelectorState extends State<CategoryEditorSelector> {
  Map<String, MapEntry<int, bool>> storedValues = {};

  @override
  Widget build(BuildContext context) {
    var settingsProvider = context.watch<SettingsProvider>();
    var appsProvider = context.watch<AppsProvider>();
    storedValues = settingsProvider.categories.map(
      (key, value) => MapEntry(
        key,
        MapEntry(
          value,
          storedValues[key]?.value ?? widget.preselected.contains(key),
        ),
      ),
    );
    return GeneratedForm(
      items: [
        [
          GeneratedFormTagInput(
            'categories',
            label: AppLocalizations.of(context)!.categories,
            emptyMessage: AppLocalizations.of(context)!.noCategories,
            defaultValue: storedValues,
            alignment: widget.alignment,
            deleteConfirmationMessage: MapEntry(
              AppLocalizations.of(context)!.deleteCategoriesQuestion,
              AppLocalizations.of(context)!.categoryDeleteWarning,
            ),
            singleSelect: widget.singleSelect,
            showLabelWhenNotEmpty: widget.showLabelWhenNotEmpty,
          ),
        ],
      ],
      onValueChanges: ((values, valid, isBuilding) {
        if (!isBuilding) {
          storedValues =
              values['categories'] as Map<String, MapEntry<int, bool>>;
          settingsProvider.setCategories(
            storedValues.map((key, value) => MapEntry(key, value.key)),
            appsProvider: appsProvider,
          );
          if (widget.onSelected != null) {
            widget.onSelected!(
              storedValues.keys.where((k) => storedValues[k]!.value).toList(),
            );
          }
        }
      }),
    );
  }
}
