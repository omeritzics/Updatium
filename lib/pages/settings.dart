import 'dart:async';
import 'dart:io';
import 'package:equations/equations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:share_plus/share_plus.dart';
import 'package:updatium/custom_errors.dart';

import 'package:updatium/main.dart';
import 'package:updatium/components/generated_form.dart';
import 'package:updatium/components/category_chip.dart';
import 'package:updatium/pages/safe_mode_dialog.dart';

import 'package:provider/provider.dart';
import 'package:updatium/providers/logs_provider.dart';
import 'package:updatium/providers/native_provider.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/external_install_bridge.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/providers/source_provider.dart';

import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:updatium/services/device_admin_service.dart';
import 'package:updatium/services/dns_service.dart';
import 'package:updatium/services/slang_converter.dart';

import 'package:url_launcher/url_launcher_string.dart';
import 'package:shizuku_apk_installer/shizuku_apk_installer.dart'
    hide InstallerMode;

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
  int _installerCheckSeq = 0;

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

  void handleInstallerModeChange(
    SettingsProvider settingsProvider,
    InstallerMode mode,
    int currentSeq,
  ) {
    if (_installerCheckSeq != currentSeq) return;
    settingsProvider.selectionClick();
    if (mode == InstallerMode.shizuku) {
      _installerCheckSeq++;
      final seq = _installerCheckSeq;
      ShizukuApkInstaller()
          .checkPermission()
          .then((resCode) {
            if (_installerCheckSeq != seq) return;
            settingsProvider.installerMode =
                (resCode?.startsWith('granted') ?? false)
                ? InstallerMode.shizuku
                : InstallerMode.system;
            if (!context.mounted) return;
            final errorText = switch (resCode) {
              'services_not_found' => 'shizukuBinderNotFound'.t(),
              'old_shizuku' => 'shizukuOld'.t(),
              'old_android_with_adb' => 'shizukuOldAndroidWithADB'.t(),
              'denied' => 'cancelled'.t(),
              null => 'unexpectedError'.t(),
              _ => null,
            };
            if (errorText != null) {
              if (!mounted) return;
              showError(UpdatiumError(errorText), context);
            }
          })
          .catchError((e) {
            if (_installerCheckSeq != seq) return;
            settingsProvider.installerMode = InstallerMode.system;
            if (!mounted) return;
            showError(e, context);
          });
    } else if (mode == InstallerMode.root) {
      _installerCheckSeq++;
      final seq = _installerCheckSeq;
      // Import root installer - we'll need to add this import
      // For now, we'll use a simple check
      // TODO: Use RootInstaller from the installers package
      Process.run('su', ['-c', 'id -u'])
          .then((result) {
            if (_installerCheckSeq != seq) return;
            final isRoot = result.stdout.toString().trim() == '0';
            settingsProvider.installerMode = isRoot
                ? InstallerMode.root
                : InstallerMode.system;
            if (!mounted) return;
            if (!isRoot) {
              showError(UpdatiumError('rootNotGranted'.t()), context);
            }
          })
          .catchError((e) {
            if (_installerCheckSeq != seq) return;
            settingsProvider.installerMode = InstallerMode.system;
            if (!mounted) return;
            showError(e, context);
          });
    } else {
      settingsProvider.installerMode = mode;
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
              const MapEntry('manually', 'manually'),
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

    var defaultTabDropdown = GeneratedForm(
      items: [
        [
          GeneratedFormDropdown(
            'defaultTab',
            [
              const MapEntry('all', 'all'),
              const MapEntry('installed', 'installed'),
              const MapEntry('notInstalled', 'notInstalledApps'),
            ].map((e) => MapEntry(e.key, t(e.value))).toList(),
            label: 'defaultTab'.t(),
            defaultValue: settingsProvider.defaultTab.name,
            required: true,
          ),
        ],
      ],
      onValueChanges: (values, valid, isBuilding) {
        if (!isBuilding && valid) {
          settingsProvider.defaultTab = DefaultTabSettings.values.firstWhere(
            (e) => e.name == values['defaultTab'],
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
                child: Text(updateIntervalLabel, textAlign: TextAlign.center),
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
            gap12,
            ...e.sourceConfigSettingFormItems.map((formItem) {
              if (formItem is GeneratedFormSwitch) {
                // Switch type
                final bool currentValue =
                    settingsProvider.getSettingBool(formItem.key) ?? false;
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: SwitchListTile(
                    title: Text(formItem.label),
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
                    decoration: InputDecoration(labelText: formItem.label),
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
          SliverAppBar.medium(
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
                          leading: Icon(Icons.update),
                          title: Text(
                            'updates'.t(),
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.w600),
                          ),
                          initiallyExpanded:
                              settingsProvider.updatesSectionExpanded,
                          onExpansionChanged: (bool expanded) {
                            settingsProvider.updatesSectionExpanded = expanded;
                          },
                          childrenPadding: const EdgeInsets.all(8),
                          children: [
                            //intervalDropdown,
                            gap12,
                            if (showIntervalLabel)
                              SizedBox(
                                child: Text(
                                  "${'bgUpdateCheckInterval'.t()}: $updateIntervalLabel",
                                ),
                              )
                            else
                              gap12,
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
                                              '${t('backgroundUpdateLimitsExplanation')} ${t('backgroundUpdateReqsExplanation')}',
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
                                          if (settingsProvider
                                              .enableBackgroundUpdates)
                                            Column(
                                              children: [
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
                            gap12,
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
                            gap12,
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
                            SwitchListTile(
                              title: Text('checkOnStart'.t()),
                              value: settingsProvider.checkOnStart,
                              onChanged: (value) {
                                settingsProvider.checkOnStart = value;
                              },
                            ),

                            SwitchListTile(
                              title: Text('checkUpdateOnDetailPage'.t()),
                              value: settingsProvider.checkUpdateOnDetailPage,
                              onChanged: (value) {
                                settingsProvider.checkUpdateOnDetailPage =
                                    value;
                              },
                            ),

                            SwitchListTile(
                              title: Text('removeOnExternalUninstall'.t()),
                              value: settingsProvider.removeOnExternalUninstall,
                              onChanged: (value) {
                                settingsProvider.removeOnExternalUninstall =
                                    value;
                              },
                            ),

                            SwitchListTile(
                              title: Text('parallelDownloads'.t()),
                              value: settingsProvider.parallelDownloads,
                              onChanged: (value) {
                                settingsProvider.parallelDownloads = value;
                              },
                            ),

                            SwitchListTile(
                              title: Text(
                                'beforeNewInstallsShareToAppVerifierBG'.t(),
                              ),
                              subtitle: GestureDetector(
                                onTap: () {
                                  launchUrlString(
                                    'https://github.com/RoundSalmon4/AppVerifierBG',
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
                                  .beforeNewInstallsShareToAppVerifierBG,
                              onChanged: (value) {
                                settingsProvider
                                        .beforeNewInstallsShareToAppVerifierBG =
                                    value;
                              },
                            ),

                            DropdownButton<InstallerMode>(
                              value: settingsProvider.installerMode,

                              items: InstallerMode.values.map((mode) {
                                return DropdownMenuItem<InstallerMode>(
                                  value: mode,
                                  child: Text(switch (mode) {
                                    InstallerMode.system =>
                                      'installMethodSystem'.t(),
                                    InstallerMode.shizuku =>
                                      'installMethodShizuku'.t(),
                                    InstallerMode.external =>
                                      'installMethodExternal'.t(),
                                    InstallerMode.root =>
                                      'installMethodRoot'.t(),
                                  }),
                                );
                              }).toList(),
                              onChanged: (InstallerMode? value) {
                                if (value != null) {
                                  handleInstallerModeChange(
                                    settingsProvider,
                                    value,
                                    _installerCheckSeq,
                                  );
                                }
                              },
                            ),
                            if (settingsProvider.installerMode ==
                                    InstallerMode.shizuku ||
                                settingsProvider.installerMode ==
                                    InstallerMode.root)
                              SwitchListTile(
                                title: Text('shizukuPretendToBeGooglePlay'.t()),
                                value: settingsProvider
                                    .shizukuPretendToBeGooglePlay,
                                onChanged:
                                    (settingsProvider.installerMode ==
                                            InstallerMode.shizuku ||
                                        settingsProvider.installerMode ==
                                            InstallerMode.root)
                                    ? (value) {
                                        settingsProvider
                                                .shizukuPretendToBeGooglePlay =
                                            value;
                                      }
                                    : null,
                              ),
                            if (settingsProvider.installerMode ==
                                InstallerMode.external)
                              const _ExternalInstallerTile(),
                            gap8,
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
                          ],
                        ),
                        gap16,
                        ExpansionTile(
                          leading: Icon(Icons.cloud_download),
                          title: Text(
                            'sourceSpecific'.t(),
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.w600),
                          ),
                          initiallyExpanded:
                              settingsProvider.appViewSectionExpanded,
                          onExpansionChanged: (bool expanded) {
                            settingsProvider.appViewSectionExpanded = expanded;
                          },
                          childrenPadding: const EdgeInsets.all(8),
                          children: [...sourceSpecificFields],
                        ),
                        gap16,
                        ExpansionTile(
                          leading: Icon(Icons.palette_rounded),
                          title: Text(
                            'appearance'.t(),
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.w600),
                          ),
                          initiallyExpanded:
                              settingsProvider.appearanceSectionExpanded,
                          onExpansionChanged: (bool expanded) {
                            settingsProvider.appearanceSectionExpanded =
                                expanded;
                          },
                          childrenPadding: const EdgeInsets.all(8),
                          children: [
                            gap12,
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
                            gap12,
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
                            gap8,
                            if (!settingsProvider.useMaterialYou) colorPicker,
                            gap12,
                            localeDropdown,
                            FutureBuilder(
                              builder: (ctx, val) {
                                return (val.data?.version.sdkInt ?? 0) >= 36
                                    ? Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          gap8,

                                          SwitchListTile(
                                            title: Text('useSystemFont'.t()),
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
                                      )
                                    : const SizedBox.shrink();
                              },
                              future: DeviceInfoPlugin().androidInfo,
                            ),
                            SwitchListTile(
                              title: Text('dontShowTrackOnlyWarnings'.t()),
                              value: settingsProvider.hideTrackOnlyWarning,
                              onChanged: (value) {
                                settingsProvider.hideTrackOnlyWarning = value;
                              },
                            ),

                            SwitchListTile(
                              title: Text('dontShowAPKOriginWarnings'.t()),
                              value: settingsProvider.hideAPKOriginWarning,
                              onChanged: (value) {
                                settingsProvider.hideAPKOriginWarning = value;
                              },
                            ),

                            SwitchListTile(
                              title: Text('disablePageTransitions'.t()),
                              value: settingsProvider.disablePageTransitions,
                              onChanged: (value) {
                                settingsProvider.disablePageTransitions = value;
                              },
                            ),

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

                            SwitchListTile(
                              title: Text('highlightTouchTargets'.t()),
                              value: settingsProvider.highlightTouchTargets,
                              onChanged: (value) {
                                settingsProvider.highlightTouchTargets = value;
                              },
                            ),
                          ],
                        ),
                        gap16,
                        ExpansionTile(
                          leading: Icon(Icons.list_rounded),
                          title: Text(
                            'appView'.t(),
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.w600),
                          ),
                          initiallyExpanded:
                              settingsProvider.categoriesSectionExpanded,
                          onExpansionChanged: (bool expanded) {
                            settingsProvider.categoriesSectionExpanded =
                                expanded;
                          },
                          childrenPadding: const EdgeInsets.all(8),
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(child: sortDropdown),
                                horizontalGap16,
                                Expanded(child: orderDropdown),
                              ],
                            ),
                            gap12,
                            defaultTabDropdown,

                            SwitchListTile(
                              title: Text('pinUpdates'.t()),
                              value: settingsProvider.pinUpdates,
                              onChanged: (value) {
                                settingsProvider.pinUpdates = value;
                              },
                            ),

                            SwitchListTile(
                              title: Text('moveNonInstalledAppsToBottom'.t()),
                              value: settingsProvider.buryNonInstalled,
                              onChanged: (value) {
                                settingsProvider.buryNonInstalled = value;
                              },
                            ),

                            SwitchListTile(
                              title: Text('groupByCategory'.t()),
                              value: settingsProvider.groupByCategory,
                              onChanged: (value) {
                                settingsProvider.groupByCategory = value;
                              },
                            ),
                          ],
                        ),
                        gap16,
                        ExpansionTile(
                          leading: Icon(Icons.more_horiz),
                          title: Text(
                            'misc'.t(),
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.w600),
                          ),
                          initiallyExpanded: false,
                          onExpansionChanged: (bool expanded) {
                            // Optional: save expansion state in settingsProvider if desired
                          },
                          childrenPadding: const EdgeInsets.all(8),
                          children: [
                            gap12,
                            SwitchListTile(
                              title: Text('showConfetti'.t()),
                              value: settingsProvider.showConfetti,
                              onChanged: (value) {
                                settingsProvider.showConfetti = value;
                              },
                            ),
                          ],
                        ),
                        gap16,
                        ExpansionTile(
                          leading: Icon(Icons.category_rounded),
                          title: Text(
                            'categories'.t(),
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.w600),
                          ),
                          initiallyExpanded:
                              settingsProvider.categoriesSectionExpanded,
                          onExpansionChanged: (bool expanded) {
                            settingsProvider.categoriesSectionExpanded =
                                expanded;
                          },
                          childrenPadding: const EdgeInsets.all(8),
                          children: [
                            gap12,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('filterDays'.t()),
              gap8,
              DropdownButton<int>(
                value: selectedDays,

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
        // ignore: use_build_context_synchronously
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
            t('safeModeTapsRemaining', args: [remaining.toString()]),
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
                    gap12,
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
              gap12,
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
              gap12,
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

class _ExternalInstallerTile extends StatefulWidget {
  const _ExternalInstallerTile();

  @override
  State<_ExternalInstallerTile> createState() => _ExternalInstallerTileState();
}

class _ExternalInstallerTileState extends State<_ExternalInstallerTile> {
  Future<List<InstallerTarget>>? _targetsFuture;

  @override
  void initState() {
    super.initState();
    _targetsFuture = ExternalInstallerBridge.instance.listTargets();
  }

  InstallerTarget? _findCurrent(
    List<InstallerTarget> targets,
    String? pkg,
    String? activity,
  ) {
    if (pkg == null) return null;
    for (final target in targets) {
      if (target.package == pkg && target.activity == activity) return target;
    }
    return null;
  }

  Widget _targetIcon(InstallerTarget? target, {double size = 40}) {
    final icon = target?.icon;
    if (icon != null && icon.isNotEmpty) {
      return Image.memory(icon, width: size, height: size);
    }
    return Icon(Icons.extension_outlined, size: size);
  }

  Future<void> _choose(
    List<InstallerTarget> targets,
    SettingsProvider settingsProvider,
  ) async {
    if (targets.isEmpty) return;
    final grouped = <String, List<InstallerTarget>>{};
    for (final t in targets) {
      grouped.putIfAbsent(t.package, () => []).add(t);
    }
    // Deduplicate intents with identical activity names
    for (final entry in grouped.entries) {
      final seen = <String>{};
      entry.value.removeWhere((t) => !seen.add(t.activity));
    }
    grouped.removeWhere((_, v) => v.isEmpty);
    int expandedIndex = -1;
    final entries = grouped.entries.toList();
    final picked = await showDialog<InstallerTarget>(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (context, setDialogState) => AlertDialog(
          scrollable: true,
          title: Text('chooseExternalInstaller'.t()),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 8,
            children: [
              for (var i = 0; i < entries.length; i++)
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ListTile(
                        autofocus:
                            i == 0 && context.read<SettingsProvider>().isTV,
                        onTap: () {
                          final entry = entries[i];
                          if (entry.value.length == 1) {
                            Navigator.of(ctx).pop(entry.value.first);
                          } else {
                            setDialogState(() {
                              expandedIndex = expandedIndex == i ? -1 : i;
                            });
                          }
                        },
                        leading: _targetIcon(entries[i].value.first, size: 36),
                        title: Text(
                          entries[i].value.first.label,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        trailing: entries[i].value.length > 1
                            ? Icon(
                                expandedIndex == i
                                    ? Icons.expand_less
                                    : Icons.expand_more,
                              )
                            : null,
                      ),
                      if (expandedIndex == i)
                        ...entries[i].value.map(
                          (target) => ListTile(
                            onTap: () => Navigator.of(ctx).pop(target),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 2,
                            ),
                            minTileHeight: 36,
                            visualDensity: VisualDensity.compact,
                            title: Text(
                              _shortActivityName(target, entries[i].value),
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
    if (picked == null) return;
    settingsProvider.externalInstallerPackage = picked.package;
    settingsProvider.externalInstallerComponent = picked.activity;
    if (mounted) setState(() {});
  }

  String _shortActivityName(
    InstallerTarget target,
    List<InstallerTarget> siblings,
  ) {
    final short = target.activity.split('.').last;
    final duplicates = siblings.where(
      (s) => s.activity.split('.').last == short && s != target,
    );
    if (duplicates.isNotEmpty) {
      return target.activity;
    }
    return short;
  }

  @override
  Widget build(BuildContext context) {
    final settingsProvider = context.read<SettingsProvider>();
    final extPkg = context.select<SettingsProvider, String?>(
      (p) => p.externalInstallerPackage,
    );
    final extComp = context.select<SettingsProvider, String?>(
      (p) => p.externalInstallerComponent,
    );
    return FutureBuilder<List<InstallerTarget>>(
      future: _targetsFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 8),
            leading: SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(),
            ),
          );
        }
        final targets = snapshot.data ?? const <InstallerTarget>[];
        final current = _findCurrent(targets, extPkg, extComp);
        final intentCount = targets
            .where((t) => t.package == current?.package)
            .map((t) => t.activity)
            .toSet()
            .length;
        final subtitle = current != null
            ? intentCount > 1
                  ? '${current.label} \u00b7 ${current.activity.split('.').last}'
                  : current.label
            : extPkg ?? 'externalInstallerUnset'.t();
        return ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 8),
          leading: _targetIcon(current),
          title: Text('chooseExternalInstaller'.t()),
          subtitle: Text(subtitle),
          trailing: const Icon(Icons.arrow_drop_down),
          onTap: () => _choose(targets, settingsProvider),
        );
      },
    );
  }
}
