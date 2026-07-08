import 'dart:async';
import 'package:equations/equations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:updatium/components/settings_widgets.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:share_plus/share_plus.dart';

import 'package:updatium/main.dart';
import 'package:updatium/components/generated_form.dart';
import 'package:updatium/components/category_chip.dart';
import 'package:updatium/pages/safe_mode_dialog.dart';

import 'package:provider/provider.dart';
import 'package:updatium/providers/logs_provider.dart';
import 'package:updatium/providers/native_provider.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/providers/source_provider.dart';

import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:updatium/services/device_admin_service.dart';
import 'package:updatium/services/dns_service.dart';
import 'package:updatium/services/slang_converter.dart';

import 'package:url_launcher/url_launcher_string.dart';
import 'package:shizuku_apk_installer/shizuku_apk_installer.dart';

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
  String updateIntervalLabel = 'neverManualOnly'.t();
  bool showIntervalLabel = true;
  final Map<ColorSwatch<Object>, String> colorsNameMap =
      <ColorSwatch<Object>, String>{
        ColorTools.createPrimarySwatch(updatiumThemeColor): 'Updatium',
      };
  late ScrollController scrollController;
  bool _scrollPositionRestored = false;
  final Map<String, TextEditingController> _textControllers = {};
  final Map<String, FocusNode> _focusNodes = {};

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
      updateIntervalLabel = 'neverManualOnly'.t();
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
      updateIntervalLabel = 'minute'.plural(valInterpolated);
    } else if (valInterpolated < 8 * 60) {
      int valRounded = (valInterpolated / 15).floor() * 15;
      updateInterval = valRounded;
      updateIntervalLabel = 'hour'.plural(valRounded ~/ 60);
      int mins = valRounded % 60;
      if (mins != 0) updateIntervalLabel += " ${'minute'.plural(mins)}";
    } else if (valInterpolated < 24 * 60) {
      int valRounded = (valInterpolated / 30).floor() * 30;
      updateInterval = valRounded;
      updateIntervalLabel = 'hour'.plural(valRounded / 60);
    } else if (valInterpolated < 7 * 24 * 60) {
      int valRounded = (valInterpolated / (12 * 60)).floor() * 12 * 60;
      updateInterval = valRounded;
      updateIntervalLabel = 'day'.plural(valRounded / (24 * 60));
    } else {
      int valRounded = (valInterpolated / (24 * 60)).floor() * 24 * 60;
      updateInterval = valRounded;
      updateIntervalLabel = 'day'.plural(valRounded ~/ (24 * 60));
    }
  }

  @override
  void initState() {
    super.initState();
    // Initialize scroll controller - will get initial position in build
    scrollController = ScrollController();
    // Add listener to save scroll position
    scrollController.addListener(() {
      final settingsProvider = context.read<SettingsProvider>();
      settingsProvider.settingsScrollPosition = scrollController.offset;
    });
    // Clean up unused controllers on initialization
    _cleanupUnusedControllers();
  }

  @override
  void dispose() {
    scrollController.dispose();
    for (var controller in _textControllers.values) {
      controller.dispose();
    }
    _textControllers.clear();
    for (var focusNode in _focusNodes.values) {
      focusNode.dispose();
    }
    _focusNodes.clear();
    super.dispose();
  }

  void _cleanupUnusedControllers() {
    var activeKeys = SourceProvider().sources
        .where((e) => e.sourceConfigSettingFormItems.isNotEmpty)
        .expand((e) => e.sourceConfigSettingFormItems.map((item) => item.key))
        .toSet();
    // Clean up both controllers and focus nodes together to prevent mismatches
    var keysToRemove = _textControllers.keys
        .where((key) => !activeKeys.contains(key))
        .toSet();
    for (var key in keysToRemove) {
      _textControllers[key]?.dispose();
      _textControllers.remove(key);
      _focusNodes[key]?.dispose();
      _focusNodes.remove(key);
    }
  }

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = context.watch<SettingsProvider>();
    SourceProvider sourceProvider = SourceProvider();
    if (settingsProvider.prefs == null) settingsProvider.initializeSettings();
    initUpdateIntervalInterpolator();
    processIntervalSliderValue(settingsProvider.updateIntervalSliderVal);
    // Clean up unused controllers in case sources changed dynamically
    _cleanupUnusedControllers();

    // Restore scroll position on first build
    if (!_scrollPositionRestored) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (scrollController.hasClients) {
          scrollController.jumpTo(settingsProvider.settingsScrollPosition);
          _scrollPositionRestored = true;
        }
      });
    }

    var followSystemThemeExplanation = FutureBuilder(
      builder: (ctx, val) {
        return ((val.data?.version.sdkInt ?? 30) < 29)
            ? Text(
                'followSystemThemeExplanation'.t(),
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
          ColorPickerType.custom: 'standard'.t(),
          ColorPickerType.wheel: 'custom'.t(),
        },
        title: Text(
          t('selectX', args: ['color'.t().toLowerCase()]),
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
      title: Text(
        t('selectX', args: ['color'.t().toLowerCase()]),
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
        ),
      ),
    );

    var useMaterialThemeSwitch = FutureBuilder(
      builder: (ctx, val) {
        return ((val.data?.version.sdkInt ?? 0) >= 31)
            ? SwitchListTile(
                title: Text('useMaterialYou'.t()),
                value: settingsProvider.useMaterialYou,
                onChanged: (value) {
                  settingsProvider.useMaterialYou = value;
                },
              )
            : const SizedBox.shrink();
      },
      future: DeviceInfoPlugin().androidInfo,
    );

    var sortDropdown = GeneratedForm(
      items: [
        [
          GeneratedFormDropdown(
            'sortColumn',
            [
              const MapEntry('authorName', 'authorName'),
              const MapEntry('nameAuthor', 'nameAuthor'),
              const MapEntry('asAdded', 'asAdded'),
              const MapEntry('releaseDate', 'releaseDate'),
            ].map((e) => MapEntry(e.key, t(e.value))).toList(),
            label: 'appSortBy'.t(),
            defaultValue: settingsProvider.sortColumn.name,
            required: true,
          ),
        ],
      ],
      onValueChanges: (values, valid, isBuilding) {
        if (!isBuilding && valid) {
          settingsProvider.sortColumn = SortColumnSettings.values.firstWhere(
            (e) => e.name == values['sortColumn'],
          );
        }
      },
    );

    var orderDropdown = GeneratedForm(
      items: [
        [
          GeneratedFormDropdown(
            'sortOrder',
            [
              const MapEntry('ascending', 'ascending'),
              const MapEntry('descending', 'descending'),
            ].map((e) => MapEntry(e.key, t(e.value))).toList(),
            label: 'appSortOrder'.t(),
            defaultValue: settingsProvider.sortOrder.name,
            required: true,
          ),
        ],
      ],
      onValueChanges: (values, valid, isBuilding) {
        if (!isBuilding && valid) {
          settingsProvider.sortOrder = SortOrderSettings.values.firstWhere(
            (e) => e.name == values['sortOrder'],
          );
        }
      },
    );

    var localeDropdown = GeneratedForm(
      items: [
        [
          GeneratedFormDropdown(
            'forcedLocale',
            [
              const MapEntry('', 'followSystem'),
              ...supportedLocales.map(
                (e) => MapEntry(e.key.toString(), e.value),
              ),
            ].map((e) => MapEntry(e.key, t(e.value))).toList(),
            label: 'language'.t(),
            defaultValue: settingsProvider.forcedLocale?.toString() ?? '',
            required: true,
          ),
        ],
      ],
      onValueChanges: (values, valid, isBuilding) {
        if (!isBuilding && valid) {
          final localeValue = values['forcedLocale'] as String;
          if (localeValue.isEmpty) {
            settingsProvider.forcedLocale = null;
          } else {
            settingsProvider.forcedLocale = Locale(localeValue);
          }
          // Apply the locale change immediately
          if (settingsProvider.forcedLocale != null) {
            context.setLocale(settingsProvider.forcedLocale!);
          } else {
            context.resetLocale();
          }
        }
      },
    );

    final rawSlider = Slider(
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

    final Widget intervalSlider = settingsProvider.isTV
        ? Row(
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: settingsProvider.updateIntervalSliderVal <= 0
                    ? null
                    : () {
                        setState(() {
                          final newVal =
                              (settingsProvider.updateIntervalSliderVal - 1)
                                  .clamp(
                                    0.0,
                                    updateIntervalNodes.length.toDouble(),
                                  );
                          settingsProvider.updateIntervalSliderVal = newVal;
                          processIntervalSliderValue(newVal);
                          settingsProvider.updateInterval = updateInterval;
                        });
                      },
              ),
              Expanded(
                child: Text(
                  updateIntervalLabel,
                  textAlign: TextAlign.center,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed:
                    settingsProvider.updateIntervalSliderVal >=
                            updateIntervalNodes.length.toDouble()
                        ? null
                        : () {
                            setState(() {
                              final newVal =
                                  (settingsProvider.updateIntervalSliderVal + 1)
                                      .clamp(
                                        0.0,
                                        updateIntervalNodes.length.toDouble(),
                                      );
                              settingsProvider.updateIntervalSliderVal = newVal;
                              processIntervalSliderValue(newVal);
                              settingsProvider.updateInterval = updateInterval;
                            });
                          },
              ),
            ],
          )
        : rawSlider;

    var sourceSpecificFields = sourceProvider.sources.map((e) {
      if (e.sourceConfigSettingFormItems.isNotEmpty) {
        final columnContent = Column(
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
                  child: SwitchListTile(
                    title: Text(formItem.key),
                    value: currentValue,
                    onChanged: (value) {
                      settingsProvider.setSettingBool(formItem.key, value);
                    },
                  ),
                );
              } else {
                // Text field type
                final String currentValue =
                    settingsProvider.getSettingString(formItem.key) ?? '';
                if (!_textControllers.containsKey(formItem.key)) {
                  _textControllers[formItem.key] = TextEditingController(
                    text: currentValue,
                  );
                  _focusNodes[formItem.key] = FocusNode();
                } else if (_textControllers[formItem.key]!.text !=
                    currentValue) {
                  // Only update if not focused to avoid overwriting user input
                  if (!_focusNodes[formItem.key]!.hasFocus) {
                    _textControllers[formItem.key]!.text = currentValue;
                  }
                }
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextField(
                    controller: _textControllers[formItem.key],
                    focusNode: _focusNodes[formItem.key],
                    decoration: InputDecoration(labelText: formItem.key),
                    onChanged: (value) {
                      settingsProvider.setSettingString(formItem.key, value);
                    },
                  ),
                );
              }
            }),
          ],
        );
        return columnContent;
      } else {
        return const SizedBox.shrink();
      }
    });

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: CustomScrollView(
        controller: scrollController,
        slivers: <Widget>[
          SliverAppBar.large(
            pinned: true,
            automaticallyImplyLeading: false,
            title: Text('settings'.t()),
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
                          leading: Icon(
                            Icons.update,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          title: Text(
                            'updates'.t(),
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                          ),
                          initiallyExpanded:
                              settingsProvider.updatesSectionExpanded,
                          onExpansionChanged: (bool expanded) {
                            settingsProvider.updatesSectionExpanded = expanded;
                          },
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
                                  "${'bgUpdateCheckInterval'.t()}: $updateIntervalLabel",
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
                                          SwitchListTile(
                                            title: Text(
                                              t('foregroundServiceExplanation'),
                                            ),
                                            value:
                                                settingsProvider.useFGService,
                                            onChanged: (value) {
                                              settingsProvider.useFGService =
                                                  value;
                                            },
                                          ),

                                          SwitchListTile(
                                            title: Text(
                                              'enableBackgroundUpdates'.t(),
                                            ),
                                            subtitle: Text(
                                              t(
                                                'backgroundUpdateReqsExplanation',
                                              ),
                                              style: Theme.of(
                                                context,
                                              ).textTheme.labelSmall,
                                            ),
                                            value: settingsProvider
                                                .enableBackgroundUpdates,
                                            onChanged: (value) {
                                              settingsProvider
                                                      .enableBackgroundUpdates =
                                                  value;
                                            },
                                          ),

                                          gap8,

                                          Text(
                                            t(
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

                                                SwitchListTile(
                                                  title: Text(
                                                    t('bgUpdatesOnWiFiOnly'),
                                                  ),
                                                  value: settingsProvider
                                                      .bgUpdatesOnWiFiOnly,
                                                  onChanged: (value) {
                                                    settingsProvider
                                                            .bgUpdatesOnWiFiOnly =
                                                        value;
                                                  },
                                                ),

                                                gap16,
                                                SwitchListTile(
                                                  title: Text(
                                                    t(
                                                      'bgUpdatesWhileChargingOnly',
                                                    ),
                                                  ),
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
                                      )
                                    : const SizedBox.shrink();
                              },
                              future: DeviceInfoPlugin().androidInfo,
                            ),
                            gap16,
                            if (!settingsProvider.safeMode)
                              SwitchListTile(
                                title: Text('safeMode'.t()),
                                subtitle: Text(
                                  'safeModeDescription'.t(),
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                                value: false,
                                onChanged: (value) {
                                  showSafeModeEnableDialog(context);
                                },
                              ),

                            if (settingsProvider.safeMode)
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('safeMode'.t()),
                                        Text(
                                          'safeModeEnabled'.t(),
                                          style: Theme.of(
                                            context,
                                          ).textTheme.labelSmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.primaryContainer,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Icon(
                                      Icons.lock,
                                      size: 20,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            gap16,
                            if (settingsProvider.safeMode)
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [],
                                    ),
                                  ),
                                  SwitchListTile(
                                    title: Text('preventUninstallation'.t()),
                                    subtitle: Text(
                                      'preventUninstallationDescription'.t(),
                                      style: Theme.of(
                                        context,
                                      ).textTheme.labelSmall,
                                    ),
                                    value:
                                        settingsProvider.preventUninstallation,
                                    onChanged: (value) async {
                                      if (value) {
                                        // Enable device admin
                                        await DeviceAdminService.requestDeviceAdmin();
                                        // Check if device admin is now enabled
                                        final isEnabled =
                                            await DeviceAdminService.isDeviceAdminEnabled();
                                        if (!mounted) return;
                                        if (isEnabled) {
                                          settingsProvider
                                                  .preventUninstallation =
                                              true;
                                        } else {
                                          // User declined or failed
                                          ScaffoldMessenger.of(
                                            context,
                                          ).showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'deviceAdminRequired'.t(),
                                              ),
                                            ),
                                          );
                                        }
                                      } else {
                                        // Prevent disabling when Safe Mode is enabled
                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'turnOffSafeModeFirst'.t(),
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ],
                              ),
                            gap16,

                            //if (settingsProvider.safeMode &&
                            //    settingsProvider.preventUninstallation)
                            //  SwitchListTile(
                            //    title: Text('safeModeAntiCheat'.t()),
                            //    subtitle: Text(
                            //      'safeModeAntiCheatDescription'.t(),
                            //      style: Theme.of(context).textTheme.labelSmall,
                            //  ),
                            //  value: settingsProvider.safeModeAntiCheat,
                            //  onChanged: (value) async {
                            //    if (value) {
                            //      // Enable anti-cheat
                            //      final success =
                            //          await DeviceAdminService.enableAntiCheat();
                            //      if (success) {
                            //        settingsProvider.safeModeAntiCheat = true;
                            //      } else {
                            //        ScaffoldMessenger.of(
                            //          context,
                            //        ).showSnackBar(
                            //          SnackBar(
                            //            content: Text(
                            //              'safeModeAntiCheatError'.t(),
                            //            ),
                            //            backgroundColor: Theme.of(
                            //              context,
                            //            ).colorScheme.error,
                            //          ),
                            //        );
                            //      }
                            //    } else {
                            //      // Disable anti-cheat
                            //      final success =
                            //          await DeviceAdminService.disableAntiCheat();
                            //      if (success) {
                            //        settingsProvider.safeModeAntiCheat =
                            //            false;
                            //      } else {
                            //        ScaffoldMessenger.of(
                            //          context,
                            //        ).showSnackBar(
                            //          SnackBar(
                            //            content: Text(
                            //              'safeModeAntiCheatError'.t(),
                            //            ),
                            //            backgroundColor: Theme.of(
                            //              context,
                            //            ).colorScheme.error,
                            //          ),
                            //        );
                            //      }
                            //    }
                            //  },
                            //),
                            gap16,
                            SwitchListTile(
                              title: Text('checkOnStart'.t()),
                              value: settingsProvider.checkOnStart,
                              onChanged: (value) {
                                settingsProvider.checkOnStart = value;
                              },
                            ),
                            gap16,

                            SwitchListTile(
                              title: Text('checkUpdateOnDetailPage'.t()),
                              value: settingsProvider.checkUpdateOnDetailPage,
                              onChanged: (value) {
                                settingsProvider.checkUpdateOnDetailPage =
                                    value;
                              },
                            ),

                            gap16,

                            SwitchListTile(
                              title: Text('removeOnExternalUninstall'.t()),
                              value: settingsProvider.removeOnExternalUninstall,
                              onChanged: (value) {
                                settingsProvider.removeOnExternalUninstall =
                                    value;
                              },
                            ),

                            gap16,

                            SwitchListTile(
                              title: Text('parallelDownloads'.t()),
                              value: settingsProvider.parallelDownloads,
                              onChanged: (value) {
                                settingsProvider.parallelDownloads = value;
                              },
                            ),

                            gap16,

                            SwitchListTile(
                              title: Text(
                                'beforeNewInstallsShareToAppVerifier'.t(),
                              ),
                              subtitle: GestureDetector(
                                onTap: () {
                                  launchUrlString(
                                    'https://github.com/soupslurpr/AppVerifier',
                                    mode: LaunchMode.externalApplication,
                                  );
                                },
                                child: Text(
                                  'about'.t(),
                                  style: const TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              value: settingsProvider
                                  .beforeNewInstallsShareToAppVerifier,
                              onChanged: (value) {
                                settingsProvider
                                        .beforeNewInstallsShareToAppVerifier =
                                    value;
                              },
                            ),

                            gap16,

                            SwitchListTile(
                              title: Text('useShizuku'.t()),
                              value: settingsProvider.useShizuku,
                              onChanged: (useShizuku) {
                                if (useShizuku) {
                                  ShizukuApkInstaller()().checkPermission().then((
                                    resCode,
                                  ) {
                                    if (!mounted) return;
                                    settingsProvider.useShizuku =resCode?.startsWith('granted') ?? false;
                                    switch (resCode) {
                                      case 'services_not_found':
                                      case 'services_not_found':
                                        showError(
                                          UpdatiumError('shizukuBinderNotFound'.t()),
                                          context,
                                        );
                                      case 'old_shizuku':
                                        showError(
                                          UpdatiumError('shizukuOld'.t()),
                                          context,
                                        );
                                      case 'old_android_with_adb':
                                        showError(
                                          UpdatiumError(t('shizukuOldAndroidWithADB')),
                                          context,
                                        );
                                      case 'denied':
                                        showError(
                                          UpdatiumError('cancelled'.t()),
                                          context,
                                        );
                                    }
                                  });
                                } else {
                                  settingsProvider.useShizuku = false;
                                }
                              },
                            ),

                            gap16,

                            SwitchListTile(
                              title: Text(
                                'shizukuPretendToBeGooglePlay'.t(),
                                style: TextStyle(
                                  color: settingsProvider.useShizuku
                                      ? null
                                      : Theme.of(context).colorScheme.onSurface
                                            .withValues(alpha: 0.6),
                                ),
                              ),
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
                            gap16,
                            GeneratedForm(
                              items: [
                                [
                                  GeneratedFormDropdown(
                                    'dnsProvider',
                                    [
                                          const MapEntry(
                                            'system',
                                            'systemDefaults',
                                          ),
                                          const MapEntry(
                                            'cloudflare',
                                            'cloudflare',
                                          ),
                                          const MapEntry('quad9', 'quad9'),
                                          const MapEntry('opendns', 'openDNS'),
                                          const MapEntry(
                                            'mullvad',
                                            'mullvadDNS',
                                          ),
                                        ]
                                        .map((e) => MapEntry(e.key, t(e.value)))
                                        .toList(),
                                    label: 'dnsServiceProvider'.t(),
                                    defaultValue: settingsProvider
                                        .dnsServiceProvider
                                        .name,
                                    required: true,
                                  ),
                                ],
                              ],
                              onValueChanges: (values, valid, isBuilding) {
                                if (!isBuilding && valid) {
                                  final newProvider = DNSServiceProvider.values
                                      .firstWhere(
                                        (e) => e.name == values['dnsProvider'],
                                      );
                                  settingsProvider.dnsServiceProvider =
                                      newProvider;
                                  // Reinitialize DNS service with new provider
                                  DNSService().initializeFromSettings(
                                    settingsProvider,
                                  );
                                }
                              },
                            ),
                            gap8,
                            Text(
                              'dnsServiceProviderDescription'.t(),
                              style: Theme.of(context).textTheme.bodySmall
                                  ?.copyWith(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.onSurfaceVariant,
                                  ),
                            ),
                          ],
                        ),
                        gap24,
                        ExpansionTile(
                          leading: Icon(
                            Icons.cloud_download,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          title: Text(
                            'sourceSpecific'.t(),
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                          ),
                          initiallyExpanded:
                              settingsProvider.sourceSpecificSectionExpanded,
                          onExpansionChanged: (bool expanded) {
                            settingsProvider.sourceSpecificSectionExpanded =
                                expanded;
                          },
                          tilePadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          childrenPadding: const EdgeInsets.all(16),
                          children: [...sourceSpecificFields],
                        ),
                        gap24,
                        ExpansionTile(
                          leading: Icon(
                            Icons.palette_rounded,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          title: Text(
                            'appearance'.t(),
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                          ),
                          initiallyExpanded:
                              settingsProvider.appearanceSectionExpanded,
                          onExpansionChanged: (bool expanded) {
                            settingsProvider.appearanceSectionExpanded =
                                expanded;
                          },
                          tilePadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          childrenPadding: const EdgeInsets.all(16),
                          children: [
                            gap16,
                            GeneratedForm(
                              items: [
                                [
                                  GeneratedFormDropdown(
                                    'theme',
                                    [
                                          const MapEntry(
                                            'system',
                                            'followSystem',
                                          ),
                                          const MapEntry('light', 'light'),
                                          const MapEntry('dark', 'dark'),
                                        ]
                                        .map((e) => MapEntry(e.key, t(e.value)))
                                        .toList(),
                                    label: 'theme'.t(),
                                    defaultValue: settingsProvider.theme.name,
                                    required: true,
                                  ),
                                ],
                              ],
                              onValueChanges: (values, valid, isBuilding) {
                                if (!isBuilding && valid) {
                                  settingsProvider.theme = ThemeSettings.values
                                      .firstWhere(
                                        (e) => e.name == values['theme'],
                                      );
                                }
                              },
                            ),
                            gap8,
                            if (settingsProvider.theme == ThemeSettings.system)
                              followSystemThemeExplanation,
                            gap16,
                            if (settingsProvider.theme != ThemeSettings.light)
                              SwitchListTile(
                                title: Text('useBlackTheme'.t()),
                                value: settingsProvider.useBlackTheme,
                                onChanged: (value) {
                                  settingsProvider.useBlackTheme = value;
                                },
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

                                          SwitchListTile(
                                            title: Text('useSystemFont'.t()),
                                            value:
                                                settingsProvider.useSystemFont,
                                            onChanged: (useSystemFont) {
                                              if (useSystemFont) {
                                                NativeFeatures.loadSystemFont()
                                                    .then((val) {
                                                      settingsProvider.useSystemFont = true;
                                                    });
                                              } else {
                                                settingsProvider.useSystemFont = false;
                                              }
                                            },
                                          ),
                                        ],
                                      )
                                    : const SizedBox.shrink();
                              },
                              future: DeviceInfoPlugin().androidInfo,
                            ),
                            gap16,

                            SwitchListTile(
                              title: Text('pinUpdates'.t()),
                              value: settingsProvider.pinUpdates,
                              onChanged: (value) {
                                settingsProvider.pinUpdates = value;
                              },
                            ),

                            gap16,

                            SwitchListTile(
                              title: Text('moveNonInstalledAppsToBottom'.t()),
                              value: settingsProvider.buryNonInstalled,
                              onChanged: (value) {
                                settingsProvider.buryNonInstalled = value;
                              },
                            ),

                            gap16,

                            SwitchListTile(
                              title: Text('groupByCategory'.t()),
                              value: settingsProvider.groupByCategory,
                              onChanged: (value) {
                                settingsProvider.groupByCategory = value;
                              },
                            ),

                            gap16,

                            SwitchListTile(
                              title: Text('dontShowTrackOnlyWarnings'.t()),
                              value: settingsProvider.hideTrackOnlyWarning,
                              onChanged: (value) {
                                settingsProvider.hideTrackOnlyWarning = value;
                              },
                            ),

                            gap16,

                            SwitchListTile(
                              title: Text('dontShowAPKOriginWarnings'.t()),
                              value: settingsProvider.hideAPKOriginWarning,
                              onChanged: (value) {
                                settingsProvider.hideAPKOriginWarning = value;
                              },
                            ),

                            gap16,

                            SwitchListTile(
                              title: Text('disablePageTransitions'.t()),
                              value: settingsProvider.disablePageTransitions,
                              onChanged: (value) {
                                settingsProvider.disablePageTransitions = value;
                              },
                            ),

                            gap16,

                            SwitchListTile(
                              title: Text('disablePageTransitions'.t()),
                              value: settingsProvider.reversePageTransitions,
                              onChanged: settingsProvider.disablePageTransitions
                                  ? null
                                  : (value) {
                                      settingsProvider.reversePageTransitions =
                                          value;
                                    },
                            ),

                            gap16,

                            SwitchListTile(
                              title: Text('highlightTouchTargets'.t()),
                              value: settingsProvider.highlightTouchTargets,
                              onChanged: (value) {
                                settingsProvider.highlightTouchTargets = value;
                              },
                            ),
                          ],
                        ),
                        gap24,
                        ExpansionTile(
                          leading: Icon(
                            Icons.category_rounded,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          title: Text(
                            'categories'.t(),
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                          ),
                          initiallyExpanded:
                              settingsProvider.categoriesSectionExpanded,
                          onExpansionChanged: (bool expanded) {
                            settingsProvider.categoriesSectionExpanded =
                                expanded;
                          },
                          tilePadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          childrenPadding: const EdgeInsets.all(16),
                          children: [
                            gap16,
                            CategoryTagEditor(showLabelWhenNotEmpty: false),
                          ],
                        ),
                      ],
                    ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.info_outline_rounded),
        label: Text('about'.t()),
        extendedPadding: const EdgeInsets.symmetric(horizontal: 20),
        elevation: 3,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext ctx) {
              return const AboutDialog();
            },
          );
        },
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
    var logsProvider = context.watch<LogsProvider>();
    void filterLogs(int days) {
      logsProvider
          .get(after: DateTime.now().subtract(Duration(days: days)))
          .then((value) {
            setState(() {
              String l = value.map((e) => e.toString()).join('\n\n');
              logString = l.isNotEmpty ? l : 'noLogs'.t();
            });
          });
    }

    if (logString == null) {
      filterLogs(days.first);
    }

    return AlertDialog(
      scrollable: true,
      title: Text('appLogs'.t()),
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
                    'filterDays'.t(),
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  gap8,
                  DropdownButton<int>(
                    value: selectedDays,
                    isExpanded: true,
                    items: days.map((day) {
                      return DropdownMenuItem<int>(
                        value: day,
                        child: Text('day'.plural(day)),
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
                      title: Text('appLogs'.t()),
                      content: Text('removeFromUpdatium'.t()),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(ctx).pop(false),
                          child: Text('cancel'.t()),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(ctx).pop(true),
                          child: Text('ok'.t()),
                        ),
                      ],
                    );
                  },
                )) ==
                true;
            if (cont) {
              logsProvider.clear();
              if (mounted) {
                Navigator.of(context).pop();
              }
            }
          },
          child: Text('remove'.t()),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('close'.t()),
        ),
        TextButton(
          onPressed: () {
            SharePlus.instance.share(
              ShareParams(text: logString ?? '', subject: 'appLogs'.t()),
            );
            Navigator.of(context).pop();
          },
          child: Text('share'.t()),
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

  void _onAddPressed(BuildContext context, SettingsProvider settingsProvider) {
    final random = DateTime.now().millisecondsSinceEpoch;
    final initialColor = Color((random & 0xFFFFFF) | 0xFF000000);

    showCategoryEditorDialog(
      context,
      initialColor: initialColor,
      title: 'addCategory'.t(),
      confirmButtonText: 'add'.t(),
    ).then((result) {
      if (result != null && result.name.isNotEmpty) {
        final newCategories = Map<String, int>.from(
          settingsProvider.categories,
        );
        if (!newCategories.containsKey(result.name)) {
          newCategories[result.name] = result.color.toARGB32();
          settingsProvider.setCategories(newCategories);
        }
      }
    });
  }

  void _onEditPressed(
    BuildContext context,
    SettingsProvider settingsProvider,
    String oldName,
  ) {
    final initialColor = Color(
      settingsProvider.categories[oldName] ??
          Theme.of(context).colorScheme.primary.toARGB32(),
    );

    showCategoryEditorDialog(
      context,
      initialName: oldName,
      initialColor: initialColor,
      title: 'editCategory'.t(),
      confirmButtonText: 'save'.t(),
    ).then((result) {
      if (result != null && result.name.isNotEmpty) {
        final appsProvider = context.read<AppsProvider>();
        final newColorValue = result.color.toARGB32();
        if (result.name != oldName) {
          // Name changed: atomically rename in both the categories map
          // and every app that references the old category name.
          settingsProvider.renameCategory(
            oldName,
            result.name,
            newColorValue,
            appsProvider: appsProvider,
          );
        } else {
          // Only the color changed – a simple map update is sufficient.
          final newCategories = Map<String, int>.from(
            settingsProvider.categories,
          );
          newCategories[oldName] = newColorValue;
          settingsProvider.setCategories(newCategories);
        }
      }
    });
  }

  void _onDeletePressed(
    BuildContext context,
    SettingsProvider settingsProvider,
    String categoryName,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return AlertDialog(
          title: Text('deleteCategory'.t()),
          content: Text('categoryDeleteWarning'.t()),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: Text('cancel'.t()),
            ),
            TextButton(
              onPressed: () {
                final newCategories = Map<String, int>.from(
                  settingsProvider.categories,
                );
                newCategories.remove(categoryName);
                settingsProvider.setCategories(newCategories);
                Navigator.pop(ctx);
              },
              child: Text('delete'.t()),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var settingsProvider = context.watch<SettingsProvider>();

    final allTags = settingsProvider.categories.keys.toList();

    return Column(
      crossAxisAlignment: alignment == WrapAlignment.center
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.stretch,
      children: [
        if (allTags.isNotEmpty && showLabelWhenNotEmpty) ...[
          Text('categories'.t(), style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 8),
        ],
        Wrap(
          alignment: alignment,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 8,
          runSpacing: 4,
          children: [
            ...allTags.map((tag) {
              final categoryColor = Color(
                settingsProvider.categories[tag] ??
                    Theme.of(context).colorScheme.primary.toARGB32(),
              );
              return InkWell(
                onTap: () => _onEditPressed(context, settingsProvider, tag),
                child: Chip(
                  label: Text(tag),
                  backgroundColor: categoryColor.withValues(alpha: 0.3),
                  side: BorderSide(color: categoryColor, width: 1),
                  visualDensity: VisualDensity.compact,
                  onDeleted: () =>
                      _onDeletePressed(context, settingsProvider, tag),
                  deleteIcon: const Icon(Icons.close, size: 18),
                ),
              );
            }),
            Semantics(
              button: true,
              label: 'add'.t(),
              child: IconButton(
                onPressed: () => _onAddPressed(context, settingsProvider),
                icon: const Icon(Icons.add),
                tooltip: 'add'.t(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CategorySelector extends StatefulWidget {
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
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  late Set<String> _selected;

  @override
  void initState() {
    super.initState();
    _selected = Set<String>.from(widget.preselected);
  }

  @override
  Widget build(BuildContext context) {
    var settingsProvider = context.watch<SettingsProvider>();
    final allTags = settingsProvider.categories.keys.toList();

    return Column(
      crossAxisAlignment: widget.alignment == WrapAlignment.center
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.stretch,
      children: [
        if (allTags.isNotEmpty && widget.showLabelWhenNotEmpty) ...[
          Text('categories'.t(), style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 8),
        ],
        Wrap(
          alignment: widget.alignment,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 8,
          runSpacing: 4,
          children: allTags.map((tag) {
            final categoryColor = Color(
              settingsProvider.categories[tag] ??
                  Theme.of(context).colorScheme.primary.toARGB32(),
            );
            return CategoryChip(
              label: tag,
              selected: _selected.contains(tag),
              categoryColor: categoryColor,
              onSelected: (selected) {
                setState(() {
                  if (widget.singleSelect) {
                    _selected.clear();
                    if (selected) {
                      _selected.add(tag);
                    }
                  } else {
                    if (selected) {
                      _selected.add(tag);
                    } else {
                      _selected.remove(tag);
                    }
                  }
                });
                widget.onSelected?.call(_selected.toList());
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}

class LicenseDialog extends StatelessWidget {
  const LicenseDialog({super.key});

  @override
  Widget build(BuildContext context) {
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
              Icons.description_rounded,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
              size: 28,
            ),
          ),
          horizontalGap16,
          Text('license'.t()),
        ],
      ),
      content: SizedBox(
        width: double.maxFinite,
        child: FutureBuilder<String>(
          future: rootBundle.loadString('LICENSE.txt'),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return SelectableText(
                snapshot.data!,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontFamily: 'monospace',
                  height: 1.5,
                ),
              );
            } else if (snapshot.hasError) {
              return Text(
                'error'.t(),
                style: Theme.of(context).textTheme.bodyMedium,
              );
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('close'.t()),
        ),
      ],
    );
  }
}

class AboutDialog extends StatefulWidget {
  const AboutDialog({super.key});

  @override
  State<AboutDialog> createState() => _AboutDialogState();
}

class _AboutDialogState extends State<AboutDialog> {
  Timer? _tapResetTimer;

  @override
  void dispose() {
    _tapResetTimer?.cancel();
    super.dispose();
  }

  void _onVersionTapped() {
    final settingsProvider = context.read<SettingsProvider>();
    final isSafeModeEnabled = settingsProvider.safeMode;
    final tapCount = settingsProvider.safeModeTapCount;

    settingsProvider.safeModeTapCount = tapCount + 1;

    _tapResetTimer?.cancel();
    _tapResetTimer = Timer(const Duration(hours: 1), () {
      settingsProvider.safeModeTapCount = 0;
    });

    // Haptic feedback at milestones
    if ((tapCount + 1) % 25 == 0) {
      HapticFeedback.selectionClick();
    }

    // Show remaining taps when Safe Mode is enabled (only from third tap)
    if (isSafeModeEnabled && (tapCount + 1) >= 3) {
      final remaining = 613 - (tapCount + 1);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            t(
              'safeModeTapsRemaining',
            ).replaceAll('{count}', remaining.toString()),
          ),
          duration: const Duration(milliseconds: 800),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }

    // Visual feedback at 100-tap intervals when Safe Mode is disabled
    if (!isSafeModeEnabled && (tapCount + 1) % 100 == 0 && (tapCount + 1) > 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${tapCount + 1}...'),
          duration: const Duration(milliseconds: 500),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }

    // Success at 613 taps
    if ((tapCount + 1) >= 613) {
      settingsProvider.safeModeTapCount = 0;
      _tapResetTimer?.cancel();

      HapticFeedback.heavyImpact();
      _showSafeModeDialog();
    }
  }

  void _showSafeModeDialog() {
    showSafeModeDisableDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PackageInfo>(
      future: PackageInfo.fromPlatform(),
      builder: (context, snapshot) {
        String version = 'Unknown';
        String buildNumber = '';

        if (snapshot.hasData) {
          final packageInfo = snapshot.data!;
          version = packageInfo.version;
          buildNumber = packageInfo.buildNumber;
        }

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
              Text('about'.t()),
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
                    Image.asset(
                      'assets/graphics/icon.png',
                      width: 72,
                      height: 72,
                    ),
                    gap16,
                    Text(
                      'Updatium',
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    gap8,
                    GestureDetector(
                      onTap: _onVersionTapped,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 8,
                        ),
                        child: Text(
                          '${'version'.t()} $version ($buildNumber)',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color: Theme.of(
                                  context,
                                ).colorScheme.onSurfaceVariant,
                              ),
                        ),
                      ),
                    ),
                    gap8,
                    Text(
                      'appDescription'.t(),
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
                'developedBy'.t(),
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
              Text(
                'sourceCode'.t(),
                style: Theme.of(context).textTheme.titleSmall,
              ),
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
              Text(
                'license'.t(),
                style: Theme.of(context).textTheme.titleSmall,
              ),
              gap8,
              TextButton.icon(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext ctx) {
                      return const LicenseDialog();
                    },
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
                      'quickLinks'.t(),
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    gap12,
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        TextButton.icon(
                          onPressed: () {
                            launchUrlString(
                              'https://github.com/omeritzics/Updatium/wiki',
                              mode: LaunchMode.externalApplication,
                            );
                          },
                          icon: const Icon(Icons.menu_book_rounded, size: 18),
                          label: Text('wiki'.t()),
                          style: TextButton.styleFrom(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(vertical: 8),
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext ctx) {
                                return const LogsDialog();
                              },
                            );
                          },
                          icon: const Icon(Icons.bug_report_outlined, size: 18),
                          label: Text('appLogs'.t()),
                          style: TextButton.styleFrom(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(vertical: 8),
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () {
                            showLicensePage(
                              context: context,
                              applicationName: 'Updatium',
                            );
                          },
                          icon: const Icon(Icons.code_rounded, size: 18),
                          label: Text('usedOpenSourcePackages'.t()),
                          style: TextButton.styleFrom(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(vertical: 8),
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
              child: Text('close'.t()),
            ),
          ],
        );
      },
    );
  }
}
