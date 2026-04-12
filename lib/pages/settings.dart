import 'package:device_info_plus/device_info_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:equations/equations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:updatium/components/tag_editor.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/logs_provider.dart';
import 'package:updatium/providers/native_provider.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:updatium/main.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shizuku_apk_installer/shizuku_apk_installer.dart';
import 'package:flex_color_picker/flex_color_picker.dart';

// Material 3 spacing tokens
const gap8 = SizedBox(height: 8);
const gap12 = SizedBox(height: 12);
const gap16 = SizedBox(height: 16);
const gap24 = SizedBox(height: 24);
const gap32 = SizedBox(height: 32);

const horizontalGap8 = SizedBox(width: 8);
const horizontalGap12 = SizedBox(width: 12);
const horizontalGap16 = SizedBox(width: 16);
const horizontalGap24 = SizedBox(width: 24);

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
  late SplineInterpolation updateIntervalInterpolator;
  String updateIntervalLabel = tr('neverManualOnly');
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
      updateIntervalLabel = tr('neverManualOnly');
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
      updateIntervalLabel = plural('minute', valInterpolated);
    } else if (valInterpolated < 8 * 60) {
      int valRounded = (valInterpolated / 15).floor() * 15;
      updateInterval = valRounded;
      updateIntervalLabel = plural('hour', valRounded ~/ 60);
      int mins = valRounded % 60;
      if (mins != 0) updateIntervalLabel += " ${plural('minute', mins)}";
    } else if (valInterpolated < 24 * 60) {
      int valRounded = (valInterpolated / 30).floor() * 30;
      updateInterval = valRounded;
      updateIntervalLabel = plural('hour', valRounded / 60);
    } else if (valInterpolated < 7 * 24 * 60) {
      int valRounded = (valInterpolated / (12 * 60)).floor() * 12 * 60;
      updateInterval = valRounded;
      updateIntervalLabel = plural('day', valRounded / (24 * 60));
    } else {
      int valRounded = (valInterpolated / (24 * 60)).floor() * 24 * 60;
      updateInterval = valRounded;
      updateIntervalLabel = plural('day', valRounded ~/ (24 * 60));
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
                tr('followSystemThemeExplanation'),
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
          ColorPickerType.custom: tr('standard'),
          ColorPickerType.wheel: tr('custom'),
        },
        title: Text(
          tr('selectX', args: [tr('color').toLowerCase()]),
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
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      tileColor: Theme.of(context).colorScheme.surfaceContainer,
      title: Text(
        tr('selectX', args: [tr('color').toLowerCase()]),
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        "${ColorTools.nameThatColor(settingsProvider.themeColor)} "
        "(${ColorTools.materialNameAndCode(settingsProvider.themeColor, colorSwatchNameMap: colorsNameMap)})",
      ),
      trailing: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: settingsProvider.themeColor,
          border: Border.all(
            color: Theme.of(context).colorScheme.outline,
            width: 1,
          ),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
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
            size: 20,
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
                  Flexible(child: Text(tr('useMaterialYou'))),
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

    var sortDropdown = Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              tr('appSortBy'),
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
            gap8,
            DropdownButton<SortColumnSettings>(
              value: settingsProvider.sortColumn,
              isExpanded: true,
              underline: const SizedBox(),
              icon: const Icon(Icons.keyboard_arrow_down_rounded),
              iconSize: 24,
              iconEnabledColor: Theme.of(context).colorScheme.onSurfaceVariant,
              items: [
                DropdownMenuItem(
                  value: SortColumnSettings.authorName,
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_outline_rounded,
                        size: 20,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      horizontalGap12,
                      Expanded(child: Text(tr('authorName'))),
                      if (settingsProvider.sortColumn ==
                          SortColumnSettings.authorName)
                        Icon(
                          Icons.check_rounded,
                          size: 20,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                    ],
                  ),
                ),
                DropdownMenuItem(
                  value: SortColumnSettings.nameAuthor,
                  child: Row(
                    children: [
                      Icon(
                        Icons.sort_by_alpha_rounded,
                        size: 20,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      horizontalGap12,
                      Expanded(child: Text(tr('nameAuthor'))),
                      if (settingsProvider.sortColumn ==
                          SortColumnSettings.nameAuthor)
                        Icon(
                          Icons.check_rounded,
                          size: 20,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                    ],
                  ),
                ),
                DropdownMenuItem(
                  value: SortColumnSettings.added,
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_circle_outline_rounded,
                        size: 20,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      horizontalGap12,
                      Expanded(child: Text(tr('asAdded'))),
                      if (settingsProvider.sortColumn ==
                          SortColumnSettings.added)
                        Icon(
                          Icons.check_rounded,
                          size: 20,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                    ],
                  ),
                ),
                DropdownMenuItem(
                  value: SortColumnSettings.releaseDate,
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        size: 20,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      horizontalGap12,
                      Expanded(child: Text(tr('releaseDate'))),
                      if (settingsProvider.sortColumn ==
                          SortColumnSettings.releaseDate)
                        Icon(
                          Icons.check_rounded,
                          size: 20,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                    ],
                  ),
                ),
              ],
              onChanged: (SortColumnSettings? value) {
                if (value != null) {
                  settingsProvider.sortColumn = value;
                }
              },
            ),
          ],
        ),
      ),
    );

    var orderDropdown = Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              tr('appSortOrder'),
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
            gap8,
            DropdownButton<SortOrderSettings>(
              value: settingsProvider.sortOrder,
              isExpanded: true,
              underline: const SizedBox(),
              icon: const Icon(Icons.keyboard_arrow_down_rounded),
              iconSize: 24,
              iconEnabledColor: Theme.of(context).colorScheme.onSurfaceVariant,
              items: [
                DropdownMenuItem(
                  value: SortOrderSettings.ascending,
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_upward_rounded,
                        size: 20,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      horizontalGap12,
                      Expanded(child: Text(tr('ascending'))),
                      if (settingsProvider.sortOrder ==
                          SortOrderSettings.ascending)
                        Icon(
                          Icons.check_rounded,
                          size: 20,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                    ],
                  ),
                ),
                DropdownMenuItem(
                  value: SortOrderSettings.descending,
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_downward_rounded,
                        size: 20,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      horizontalGap12,
                      Expanded(child: Text(tr('descending'))),
                      if (settingsProvider.sortOrder ==
                          SortOrderSettings.descending)
                        Icon(
                          Icons.check_rounded,
                          size: 20,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                    ],
                  ),
                ),
              ],
              onChanged: (SortOrderSettings? value) {
                if (value != null) {
                  settingsProvider.sortOrder = value;
                }
              },
            ),
          ],
        ),
      ),
    );

    var localeDropdown = Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              tr('language'),
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
            gap8,
            DropdownButton<String?>(
              value: settingsProvider.forcedLocale?.toString(),
              isExpanded: true,
              underline: const SizedBox(),
              icon: const Icon(Icons.keyboard_arrow_down_rounded),
              iconSize: 24,
              iconEnabledColor: Theme.of(context).colorScheme.onSurfaceVariant,
              items: [
                DropdownMenuItem<String?>(
                  value: null,
                  child: Row(
                    children: [
                      Icon(
                        Icons.settings_system_daydream_rounded,
                        size: 20,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      horizontalGap12,
                      Expanded(child: Text(tr('followSystem'))),
                      if (settingsProvider.forcedLocale == null)
                        Icon(
                          Icons.check_rounded,
                          size: 20,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                    ],
                  ),
                ),
                ...supportedLocales.map(
                  (e) => DropdownMenuItem<String>(
                    value: e.key.toString(),
                    child: Row(
                      children: [
                        Icon(
                          Icons.language_rounded,
                          size: 20,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                        horizontalGap12,
                        Expanded(child: Text(e.value)),
                        if (settingsProvider.forcedLocale?.toString() ==
                            e.key.toString())
                          Icon(
                            Icons.check_rounded,
                            size: 20,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                      ],
                    ),
                  ),
                ),
              ],
              onChanged: (String? value) {
                if (value == null) {
                  settingsProvider.forcedLocale = null;
                  settingsProvider.resetLocaleSafe(context);
                } else {
                  final entry = supportedLocales.firstWhere(
                    (e) => e.key.toString() == value,
                  );
                  settingsProvider.forcedLocale = entry.key;
                  context.setLocale(entry.key);
                }
              },
            ),
          ],
        ),
      ),
    );

    var intervalSlider = Slider(
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
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).colorScheme.surfaceContainerLow,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                e.name,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              gap16,
              ...e.sourceConfigSettingFormItems.map((formItem) {
                if (formItem.key.contains('switch') ||
                    formItem.key.contains('enable')) {
                  // Switch type
                  final bool currentValue =
                      settingsProvider.getSettingBool(formItem.key) ?? false;
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(child: Text(formItem.key)),
                        Switch(
                          value: currentValue,
                          onChanged: (value) {
                            settingsProvider.setSettingBool(
                              formItem.key,
                              value,
                            );
                          },
                        ),
                      ],
                    ),
                  );
                } else {
                  // Text field type
                  final String currentValue =
                      settingsProvider.getSettingString(formItem.key) ?? '';
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: TextField(
                      controller: TextEditingController(text: currentValue),
                      decoration: InputDecoration(
                        labelText: formItem.key,
                        border: const OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        settingsProvider.setSettingString(formItem.key, value);
                      },
                    ),
                  );
                }
              }).toList(),
            ],
          ),
        );
      } else {
        return Container();
      }
    });

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar.large(
            pinned: true,
            automaticallyImplyLeading: false,
            title: Text(tr('settings')),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: settingsProvider.prefs == null
                  ? const SizedBox()
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ExpansionTile(
                          title: Text(
                            tr('updates'),
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          initiallyExpanded: true,
                          tilePadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          childrenPadding: const EdgeInsets.all(16),
                          children: [
                            gap16,
                            //intervalDropdown,
                            gap16,
                            if (showIntervalLabel)
                              SizedBox(
                                child: Text(
                                  "${tr('bgUpdateCheckInterval')}: $updateIntervalLabel",
                                ),
                              )
                            else
                              gap16,
                            intervalSlider,
                            FutureBuilder(
                              builder: (ctx, val) {
                                return (settingsProvider.updateInterval > 0) &&
                                        (((val.data?.version.sdkInt ?? 0) >=
                                                30) ||
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
                                                  tr(
                                                    'foregroundServiceExplanation',
                                                  ),
                                                ),
                                              ),
                                              Switch(
                                                value: settingsProvider
                                                    .useFGService,
                                                onChanged: (value) {
                                                  settingsProvider
                                                          .useFGService =
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
                                                  tr('enableBackgroundUpdates'),
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
                                          gap8,
                                          Text(
                                            tr(
                                              'backgroundUpdateReqsExplanation',
                                            ),
                                            style: Theme.of(
                                              context,
                                            ).textTheme.labelSmall,
                                          ),
                                          Text(
                                            tr(
                                              'backgroundUpdateLimitsExplanation',
                                            ),
                                            style: Theme.of(
                                              context,
                                            ).textTheme.labelSmall,
                                          ),
                                          gap8,
                                          if (settingsProvider
                                              .enableBackgroundUpdates)
                                            Column(
                                              children: [
                                                gap16,
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Flexible(
                                                      child: Text(
                                                        tr(
                                                          'bgUpdatesOnWiFiOnly',
                                                        ),
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
                                                gap16,
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Flexible(
                                                      child: Text(
                                                        tr(
                                                          'bgUpdatesWhileChargingOnly',
                                                        ),
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
                            gap16,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(tr('safeMode')),
                                      Text(
                                        tr('safeModeDescription'),
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
                            gap16,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(child: Text(tr('checkOnStart'))),
                                Switch(
                                  value: settingsProvider.checkOnStart,
                                  onChanged: (value) {
                                    settingsProvider.checkOnStart = value;
                                  },
                                ),
                              ],
                            ),
                            gap16,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(tr('checkUpdateOnDetailPage')),
                                ),
                                Switch(
                                  value:
                                      settingsProvider.checkUpdateOnDetailPage,
                                  onChanged: (value) {
                                    settingsProvider.checkUpdateOnDetailPage =
                                        value;
                                  },
                                ),
                              ],
                            ),
                            gap16,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    tr('onlyCheckInstalledOrTrackOnlyApps'),
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
                            gap16,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(tr('removeOnExternalUninstall')),
                                ),
                                Switch(
                                  value: settingsProvider
                                      .removeOnExternalUninstall,
                                  onChanged: (value) {
                                    settingsProvider.removeOnExternalUninstall =
                                        value;
                                  },
                                ),
                              ],
                            ),
                            gap16,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(child: Text(tr('parallelDownloads'))),
                                Switch(
                                  value: settingsProvider.parallelDownloads,
                                  onChanged: (value) {
                                    settingsProvider.parallelDownloads = value;
                                  },
                                ),
                              ],
                            ),
                            gap16,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        tr(
                                          'beforeNewInstallsShareToAppVerifier',
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          launchUrlString(
                                            'https://github.com/soupslurpr/AppVerifier',
                                            mode:
                                                LaunchMode.externalApplication,
                                          );
                                        },
                                        child: Text(
                                          tr('about'),
                                          style: const TextStyle(
                                            decoration:
                                                TextDecoration.underline,
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
                            gap16,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(child: Text(tr('useShizuku'))),
                                Switch(
                                  value: settingsProvider.useShizuku,
                                  onChanged: (useShizuku) {
                                    if (useShizuku) {
                                      ShizukuApkInstaller()
                                          .checkPermission()
                                          .then((resCode) {
                                            settingsProvider.useShizuku =
                                                resCode?.startsWith(
                                                  'granted',
                                                ) ??
                                                false;
                                            switch (resCode) {
                                              case 'services_not_found':
                                                showError(
                                                  UpdatiumError(
                                                    tr('shizukuBinderNotFound'),
                                                  ),
                                                  context,
                                                );
                                              case 'old_shizuku':
                                                showError(
                                                  UpdatiumError(
                                                    tr('shizukuOld'),
                                                  ),
                                                  context,
                                                );
                                              case 'old_android_with_adb':
                                                showError(
                                                  UpdatiumError(
                                                    tr(
                                                      'shizukuOldAndroidWithADB',
                                                    ),
                                                  ),
                                                  context,
                                                );
                                              case 'denied':
                                                showError(
                                                  UpdatiumError(
                                                    tr('cancelled'),
                                                  ),
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
                            gap16,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    tr('shizukuPretendToBeGooglePlay'),
                                    style: TextStyle(
                                      color: settingsProvider.useShizuku
                                          ? null
                                          : Theme.of(context)
                                                .colorScheme
                                                .onSurface
                                                .withValues(alpha: 0.6),
                                    ),
                                  ),
                                ),
                                Switch(
                                  value: settingsProvider
                                      .shizukuPretendToBeGooglePlay,
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
                          ],
                        ),
                        gap24,
                        ExpansionTile(
                          title: Text(
                            tr('sourceSpecific'),
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          initiallyExpanded: false,
                          tilePadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          childrenPadding: const EdgeInsets.all(16),
                          children: [...sourceSpecificFields],
                        ),
                        gap24,
                        ExpansionTile(
                          title: Text(
                            tr('appearance'),
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          initiallyExpanded: false,
                          tilePadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          childrenPadding: const EdgeInsets.all(16),
                          children: [
                            gap16,
                            Card(
                              margin: EdgeInsets.zero,
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      tr('theme'),
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall
                                          ?.copyWith(
                                            color: Theme.of(
                                              context,
                                            ).colorScheme.primary,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    gap8,
                                    DropdownButton<ThemeSettings>(
                                      value: settingsProvider.theme,
                                      isExpanded: true,
                                      underline: const SizedBox(),
                                      icon: const Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                      ),
                                      iconSize: 24,
                                      iconEnabledColor: Theme.of(
                                        context,
                                      ).colorScheme.onSurfaceVariant,
                                      items: [
                                        DropdownMenuItem(
                                          value: ThemeSettings.system,
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons
                                                    .settings_system_daydream_rounded,
                                                size: 20,
                                                color: Theme.of(
                                                  context,
                                                ).colorScheme.onSurfaceVariant,
                                              ),
                                              horizontalGap12,
                                              Expanded(
                                                child: Text(tr('followSystem')),
                                              ),
                                              if (settingsProvider.theme ==
                                                  ThemeSettings.system)
                                                Icon(
                                                  Icons.check_rounded,
                                                  size: 20,
                                                  color: Theme.of(
                                                    context,
                                                  ).colorScheme.primary,
                                                ),
                                            ],
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: ThemeSettings.light,
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.light_mode_rounded,
                                                size: 20,
                                                color: Theme.of(
                                                  context,
                                                ).colorScheme.onSurfaceVariant,
                                              ),
                                              horizontalGap12,
                                              Expanded(
                                                child: Text(tr('light')),
                                              ),
                                              if (settingsProvider.theme ==
                                                  ThemeSettings.light)
                                                Icon(
                                                  Icons.check_rounded,
                                                  size: 20,
                                                  color: Theme.of(
                                                    context,
                                                  ).colorScheme.primary,
                                                ),
                                            ],
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: ThemeSettings.dark,
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.dark_mode_rounded,
                                                size: 20,
                                                color: Theme.of(
                                                  context,
                                                ).colorScheme.onSurfaceVariant,
                                              ),
                                              horizontalGap12,
                                              Expanded(child: Text(tr('dark'))),
                                              if (settingsProvider.theme ==
                                                  ThemeSettings.dark)
                                                Icon(
                                                  Icons.check_rounded,
                                                  size: 20,
                                                  color: Theme.of(
                                                    context,
                                                  ).colorScheme.primary,
                                                ),
                                            ],
                                          ),
                                        ),
                                      ],
                                      onChanged: (ThemeSettings? value) {
                                        if (value != null) {
                                          settingsProvider.theme = value;
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            gap8,
                            if (settingsProvider.theme == ThemeSettings.system)
                              followSystemThemeExplanation,
                            gap16,
                            if (settingsProvider.theme != ThemeSettings.light)
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(child: Text(tr('useBlackTheme'))),
                                  Switch(
                                    value: settingsProvider.useBlackTheme,
                                    onChanged: (value) {
                                      settingsProvider.useBlackTheme = value;
                                    },
                                  ),
                                ],
                              ),
                            gap8,
                            useMaterialThemeSwitch,
                            gap16,
                            if (!settingsProvider.useMaterialYou) colorPicker,
                            gap16,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(child: sortDropdown),
                                horizontalGap16,
                                Expanded(child: orderDropdown),
                              ],
                            ),
                            gap16,
                            localeDropdown,
                            FutureBuilder(
                              builder: (ctx, val) {
                                return (val.data?.version.sdkInt ?? 0) >= 36
                                    ? Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          gap16,
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  tr('useSystemFont'),
                                                ),
                                              ),
                                              Switch(
                                                value: settingsProvider
                                                    .useSystemFont,
                                                onChanged: (useSystemFont) {
                                                  if (useSystemFont) {
                                                    NativeFeatures.loadSystemFont()
                                                        .then((val) {
                                                          settingsProvider
                                                                  .useSystemFont =
                                                              true;
                                                        });
                                                  } else {
                                                    settingsProvider
                                                            .useSystemFont =
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
                            gap16,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(child: Text(tr('pinUpdates'))),
                                Switch(
                                  value: settingsProvider.pinUpdates,
                                  onChanged: (value) {
                                    settingsProvider.pinUpdates = value;
                                  },
                                ),
                              ],
                            ),
                            gap16,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    tr('moveNonInstalledAppsToBottom'),
                                  ),
                                ),
                                Switch(
                                  value: settingsProvider.buryNonInstalled,
                                  onChanged: (value) {
                                    settingsProvider.buryNonInstalled = value;
                                  },
                                ),
                              ],
                            ),
                            gap16,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(tr('hideNonInstalledApps')),
                                ),
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
                                Flexible(child: Text(tr('groupByCategory'))),
                                Switch(
                                  value: settingsProvider.groupByCategory,
                                  onChanged: (value) {
                                    settingsProvider.groupByCategory = value;
                                  },
                                ),
                              ],
                            ),
                            gap16,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(tr('dontShowTrackOnlyWarnings')),
                                ),
                                Switch(
                                  value: settingsProvider.hideTrackOnlyWarning,
                                  onChanged: (value) {
                                    settingsProvider.hideTrackOnlyWarning =
                                        value;
                                  },
                                ),
                              ],
                            ),
                            gap16,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(tr('dontShowAPKOriginWarnings')),
                                ),
                                Switch(
                                  value: settingsProvider.hideAPKOriginWarning,
                                  onChanged: (value) {
                                    settingsProvider.hideAPKOriginWarning =
                                        value;
                                  },
                                ),
                              ],
                            ),
                            gap16,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(tr('disablePageTransitions')),
                                ),
                                Switch(
                                  value:
                                      settingsProvider.disablePageTransitions,
                                  onChanged: (value) {
                                    settingsProvider.disablePageTransitions =
                                        value;
                                  },
                                ),
                              ],
                            ),
                            gap16,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(tr('reversePageTransitions')),
                                ),
                                Switch(
                                  value:
                                      settingsProvider.reversePageTransitions,
                                  onChanged:
                                      settingsProvider.disablePageTransitions
                                      ? null
                                      : (value) {
                                          settingsProvider
                                                  .reversePageTransitions =
                                              value;
                                        },
                                ),
                              ],
                            ),
                            gap16,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(tr('highlightTouchTargets')),
                                ),
                                Switch(
                                  value: settingsProvider.highlightTouchTargets,
                                  onChanged: (value) {
                                    settingsProvider.highlightTouchTargets =
                                        value;
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        gap24,
                        ExpansionTile(
                          title: Text(
                            tr('categories'),
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          initiallyExpanded: false,
                          tilePadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          childrenPadding: const EdgeInsets.all(16),
                          children: [
                            gap16,
                            CategoryTagEditor(
                              showLabelWhenNotEmpty: false,
                            ),
                          ],
                        ),
                      ],
                    ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext ctx) {
              return const AboutDialog();
            },
          );
        },
        icon: const Icon(Icons.info_outline_rounded),
        label: Text(tr('about')),
        extendedPadding: const EdgeInsets.symmetric(horizontal: 20),
        elevation: 3,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
      ),
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
              logString = l.isNotEmpty ? l : tr('noLogs');
            });
          });
    }

    if (logString == null) {
      filterLogs(days.first);
    }

    return AlertDialog(
      scrollable: true,
      title: Text(tr('appLogs')),
      content: Column(
        children: [
          Card(
            margin: EdgeInsets.zero,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    tr('filterDays'),
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  gap8,
                  DropdownButton<int>(
                    value: selectedDays,
                    isExpanded: true,
                    underline: const SizedBox(),
                    icon: const Icon(Icons.keyboard_arrow_down_rounded),
                    iconSize: 24,
                    iconEnabledColor: Theme.of(
                      context,
                    ).colorScheme.onSurfaceVariant,
                    items: days.map((day) {
                      return DropdownMenuItem<int>(
                        value: day,
                        child: Row(
                          children: [
                            Icon(
                              Icons.date_range_rounded,
                              size: 20,
                              color: Theme.of(
                                context,
                              ).colorScheme.onSurfaceVariant,
                            ),
                            horizontalGap12,
                            Expanded(child: Text(plural('day', day))),
                            if (selectedDays == day)
                              Icon(
                                Icons.check_rounded,
                                size: 20,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (int? value) {
                      if (value != null) {
                        setState(() {
                          selectedDays = value;
                        });
                        filterLogs(value);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          gap32,
          Text(logString ?? ''),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () async {
            var cont =
                (await showDialog<bool>(
                  context: context,
                  builder: (BuildContext ctx) {
                    return AlertDialog(
                      title: Text(tr('appLogs')),
                      content: Text(tr('removeFromUpdatium')),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(ctx).pop(false),
                          child: Text(tr('cancel')),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(ctx).pop(true),
                          child: Text(tr('ok')),
                        ),
                      ],
                    );
                  },
                )) ==
                true;
            if (cont) {
              logsProvider.clear();
              Navigator.of(context).pop();
            }
          },
          child: Text(tr('remove')),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(tr('close')),
        ),
        TextButton(
          onPressed: () {
            SharePlus.instance.share(
              ShareParams(text: logString ?? '', subject: tr('appLogs')),
            );
            Navigator.of(context).pop();
          },
          child: Text(tr('share')),
        ),
      ],
    );
  }
}

class CategoryTagEditor extends StatelessWidget {
  final bool showLabelWhenNotEmpty;
  final WrapAlignment alignment;

  const CategoryTagEditor({
    super.key,
    this.showLabelWhenNotEmpty = true,
    this.alignment = WrapAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    var settingsProvider = context.watch<SettingsProvider>();
    var appsProvider = context.watch<AppsProvider>();

    // Convert categories Map<String, int> to TagEditor's expected Map<String, MapEntry<int, bool>> format
    final tagEditorTags = settingsProvider.categories.map(
      (key, value) => MapEntry(key, MapEntry(value, true)),
    );

    return TagEditor(
      tags: tagEditorTags,
      label: tr('categories'),
      alignment: alignment,
      showLabelWhenNotEmpty: showLabelWhenNotEmpty,
      onTagsChanged: (newTags) {
        // Convert back from TagEditor format to categories Map<String, int>
        final newCategories = <String, int>{};
        for (final entry in newTags.entries) {
          if (entry.value.value) { // Only keep selected tags
            newCategories[entry.key] = entry.value.key;
          }
        }
        
        // Find categories that were removed
        final removedCategories = settingsProvider.categories.keys
            .where((cat) => !newCategories.containsKey(cat))
            .toList();

        if (removedCategories.isNotEmpty) {
          // Show confirmation dialog for category removal
          showDialog(
            context: context,
            builder: (BuildContext ctx) {
              return AlertDialog(
                title: Text(tr('deleteCategoriesQuestion')),
                content: Text(tr('categoryDeleteWarning')),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(ctx).pop(),
                    child: Text(tr('cancel')),
                  ),
                  TextButton(
                    onPressed: () {
                      settingsProvider.setCategories(
                        newCategories,
                        appsProvider: appsProvider,
                      );
                      Navigator.of(ctx).pop();
                    },
                    child: Text(tr('ok')),
                  ),
                ],
              );
            },
          );
        } else {
          // Just add new categories without confirmation
          settingsProvider.setCategories(
            newCategories,
            appsProvider: appsProvider,
          );
        }
      },
      deleteConfirmationMessage: MapEntry(
        tr('deleteCategoriesQuestion'),
        tr('categoryDeleteWarning'),
      ),
    );
  }
}

class CategorySelector extends StatelessWidget {
  final void Function(List<String> categories)? onSelected;
  final bool singleSelect;
  final Set<String> preselected;
  final WrapAlignment alignment;
  final bool showLabelWhenNotEmpty;
  
  const CategorySelector({
    super.key,
    this.onSelected,
    this.singleSelect = false,
    this.preselected = const {},
    this.alignment = WrapAlignment.start,
    this.showLabelWhenNotEmpty = true,
  });

  @override
  Widget build(BuildContext context) {
    var settingsProvider = context.watch<SettingsProvider>();

    // Convert categories Map<String, int> to TagEditor's expected Map<String, MapEntry<int, bool>> format
    final tagEditorTags = settingsProvider.categories.map(
      (key, value) => MapEntry(key, MapEntry(value, preselected.contains(key))),
    );

    return TagEditor(
      tags: tagEditorTags,
      label: tr('categories'),
      singleSelect: singleSelect,
      alignment: alignment,
      showLabelWhenNotEmpty: showLabelWhenNotEmpty,
      onTagsChanged: (newTags) {
        // Convert back from TagEditor format to List<String> for callback
        final selectedCategories = newTags.entries
            .where((entry) => entry.value.value)
            .map((entry) => entry.key)
            .toList();
        
        onSelected?.call(selectedCategories);
      },
    );
  }
}

class AboutDialog extends StatelessWidget {
  const AboutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    const version = '26.3.0';
    const buildNumber = '26020419';

    return AlertDialog(
      scrollable: true,
      title: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            child: Icon(
              Icons.info_rounded,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
              size: 28,
            ),
          ),
          horizontalGap16,
          Text(tr('about')),
        ],
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
            ),
            child: Column(
              children: [
                Image.asset('assets/graphics/icon.png', width: 80, height: 80),
                gap16,
                Text(
                  'Updatium',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                gap8,
                Text(
                  'Version $version ($buildNumber)',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
                gap8,
                Text(
                  tr('appDescription'),
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          gap24,
          Text(
            tr('developedBy'),
            style: Theme.of(context).textTheme.titleSmall,
          ),
          gap8,
          TextButton.icon(
            onPressed: () {
              launchUrlString(
                'https://github.com/omeritzics',
                mode: LaunchMode.externalApplication,
              );
            },
            icon: const Icon(Icons.link_rounded, size: 18),
            label: Text('Omer I.S. (@omeritzics)'),
            style: TextButton.styleFrom(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.zero,
            ),
          ),
          gap16,
          Text(tr('sourceCode'), style: Theme.of(context).textTheme.titleSmall),
          gap8,
          TextButton.icon(
            onPressed: () {
              launchUrlString(
                'https://github.com/omeritzics/Updatium',
                mode: LaunchMode.externalApplication,
              );
            },
            icon: const Icon(Icons.code_rounded, size: 18),
            label: Text('GitHub'),
            style: TextButton.styleFrom(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.zero,
            ),
          ),
          gap16,
          Text(tr('license'), style: Theme.of(context).textTheme.titleSmall),
          gap8,
          TextButton.icon(
            onPressed: () {
              launchUrlString(
                'https://github.com/omeritzics/Updatium/blob/main/LICENSE.md',
                mode: LaunchMode.externalApplication,
              );
            },
            icon: const Icon(Icons.description_rounded, size: 18),
            label: Text('GPL-3.0'),
            style: TextButton.styleFrom(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.zero,
            ),
          ),
          gap24,
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).colorScheme.surfaceContainerLow,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tr('quickLinks'),
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
                ),
                gap12,
                Row(
                  children: [
                    Expanded(
                      child: TextButton.icon(
                        onPressed: () {
                          launchUrlString(
                            'https://github.com/omeritzics/Updatium/wiki',
                            mode: LaunchMode.externalApplication,
                          );
                        },
                        icon: const Icon(Icons.menu_book_rounded, size: 18),
                        label: Text(tr('wiki')),
                        style: TextButton.styleFrom(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 8),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextButton.icon(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext ctx) {
                              return const LogsDialog();
                            },
                          );
                        },
                        icon: const Icon(Icons.bug_report_outlined, size: 18),
                        label: Text(tr('appLogs')),
                        style: TextButton.styleFrom(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 8),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(tr('close')),
        ),
      ],
    );
  }
}
