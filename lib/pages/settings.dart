import 'package:device_info_plus/device_info_plus.dart';
import 'package:equations/equations.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
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
  String updateIntervalLabel = AppLocalizations.of(context)!\.neverManualOnly;
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
      updateIntervalLabel = AppLocalizations.of(context)!\.neverManualOnly;
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
                AppLocalizations.of(context)!\.followSystemThemeExplanation,
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
          ColorPickerType.custom: AppLocalizations.of(context)!\.standard,
          ColorPickerType.wheel: AppLocalizations.of(context)!\.custom,
        },
        title: Text(
          "selectX"(AppLocalizations.of(context)!\.color.toLowerCase()),
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
        "selectX"(AppLocalizations.of(context)!\.color.toLowerCase()),
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        "${ColorTools.nameThatColor(settingsProvider.themeColor)} "
        "(${ColorTools.materialNameAndCode(settingsProvider.themeColor, colorSwatchNameMap: colorsNameMap)})",
      ),
      trailing: Container(
        width: MediaQuery.of(context).size.width * 0.1,
        height: MediaQuery.of(context).size.width * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            MediaQuery.of(context).size.width * 0.05,
          ),
          color: settingsProvider.themeColor,
          border: Border.all(
            color: Theme.of(context).colorScheme.outline,
            width: 1,
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(
              MediaQuery.of(context).size.width * 0.05,
            ),
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
              size: MediaQuery.of(context).size.width * 0.05,
            ),
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
                  Flexible(child: Text(AppLocalizations.of(context)!\.useMaterialYou)),
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

    var sortDropdown = DropdownButtonFormField(
      isExpanded: true,
      decoration: InputDecoration(labelText: AppLocalizations.of(context)!\.appSortBy),
      initialValue: settingsProvider.sortColumn,
      items: [
        DropdownMenuItem(
          value: SortColumnSettings.authorName,
          child: Text(AppLocalizations.of(context)!\.authorName),
        ),
        DropdownMenuItem(
          value: SortColumnSettings.nameAuthor,
          child: Text(AppLocalizations.of(context)!\.nameAuthor),
        ),
        DropdownMenuItem(
          value: SortColumnSettings.added,
          child: Text(AppLocalizations.of(context)!\.asAdded),
        ),
        DropdownMenuItem(
          value: SortColumnSettings.releaseDate,
          child: Text(AppLocalizations.of(context)!\.releaseDate),
        ),
      ],
      onChanged: (value) {
        if (value != null) {
          settingsProvider.sortColumn = value;
        }
      },
    );

    var orderDropdown = DropdownButtonFormField(
      isExpanded: true,
      decoration: InputDecoration(labelText: AppLocalizations.of(context)!\.appSortOrder),
      initialValue: settingsProvider.sortOrder,
      items: [
        DropdownMenuItem(
          value: SortOrderSettings.ascending,
          child: Text(AppLocalizations.of(context)!\.ascending),
        ),
        DropdownMenuItem(
          value: SortOrderSettings.descending,
          child: Text(AppLocalizations.of(context)!\.descending),
        ),
      ],
      onChanged: (value) {
        if (value != null) {
          settingsProvider.sortOrder = value;
        }
      },
    );

    var localeDropdown = DropdownButtonFormField(
      decoration: InputDecoration(labelText: AppLocalizations.of(context)!\.language),
      initialValue: settingsProvider.forcedLocale,
      items: [
        DropdownMenuItem(value: null, child: Text(AppLocalizations.of(context)!\.followSystem)),
        ...supportedLocales.map(
          (e) => DropdownMenuItem(value: e.key, child: Text(e.value)),
        ),
      ],
      onChanged: (value) {
        settingsProvider.forcedLocale = value;
        if (value != null) {
          context.setLocale(value);
        } else {
          settingsProvider.resetLocaleSafe(context);
        }
      },
    );

    var intervalSlider = SliderTheme(
      data: SliderTheme.of(context).copyWith(
        trackHeight: 4,
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 24),
        valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
        valueIndicatorTextStyle: Theme.of(context).textTheme.bodyMedium
            ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
        showValueIndicator: ShowValueIndicator.onDrag,
      ),
      child: Slider(
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
      ),
    );

    var sourceSpecificFields = sourceProvider.sources.map((e) {
      if (e.sourceConfigSettingFormItems.isNotEmpty) {
        return GeneratedForm(
          items: e.sourceConfigSettingFormItems.map((e) {
            if (e is GeneratedFormSwitch) {
              e.defaultValue = settingsProvider.getSettingBool(e.key);
            } else {
              e.defaultValue = settingsProvider.getSettingString(e.key);
            }
            return [e];
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

    const height8 = SizedBox(height: 8);

    const height16 = SizedBox(height: 16);

    const height32 = SizedBox(height: 32);

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
                AppLocalizations.of(context)!\.settings,
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
                          AppLocalizations.of(context)!\.updates,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        //intervalDropdown,
                        height16,
                        if (showIntervalLabel)
                          SizedBox(
                            child: Text(
                              "${AppLocalizations.of(context)!\.bgUpdateCheckInterval}: $updateIntervalLabel",
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
                                              tr(
                                                'foregroundServiceExplanation',
                                              ),
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
                                              AppLocalizations.of(context)!\.enableBackgroundUpdates,
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
                                        AppLocalizations.of(context)!\.backgroundUpdateReqsExplanation,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.labelSmall,
                                      ),
                                      Text(
                                        AppLocalizations.of(context)!\.backgroundUpdateLimitsExplanation,
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
                                                    AppLocalizations.of(context)!\.bgUpdatesOnWiFiOnly,
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
                        height16,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(child: Text(AppLocalizations.of(context)!\.checkOnStart)),
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
                              child: Text(AppLocalizations.of(context)!\.checkUpdateOnDetailPage),
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
                                AppLocalizations.of(context)!\.onlyCheckInstalledOrTrackOnlyApps,
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
                              child: Text(AppLocalizations.of(context)!\.removeOnExternalUninstall),
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
                            Flexible(child: Text(AppLocalizations.of(context)!\.parallelDownloads)),
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
                                    AppLocalizations.of(context)!\.beforeNewInstallsShareToAppVerifier,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      launchUrlString(
                                        'https://github.com/soupslurpr/AppVerifier',
                                        mode: LaunchMode.externalApplication,
                                      );
                                    },
                                    child: Text(
                                      AppLocalizations.of(context)!\.about,
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
                            Flexible(child: Text(AppLocalizations.of(context)!\.useShizuku)),
                            Switch(
                              value: settingsProvider.useShizuku,
                              onChanged: (useShizuku) {
                                if (useShizuku) {
                                  ShizukuApkInstaller.checkPermission().then((
                                    resCode,
                                  ) {
                                    settingsProvider.useShizuku = resCode!
                                        .startsWith('granted');
                                    switch (resCode) {
                                      case 'binder_not_found':
                                        showError(
                                          UpdatiumError(
                                            AppLocalizations.of(context)!\.shizukuBinderNotFound,
                                          ),
                                          context,
                                        );
                                      case 'old_shizuku':
                                        showError(
                                          UpdatiumError(AppLocalizations.of(context)!\.shizukuOld),
                                          context,
                                        );
                                      case 'old_android_with_adb':
                                        showError(
                                          UpdatiumError(
                                            AppLocalizations.of(context)!\.shizukuOldAndroidWithADB,
                                          ),
                                          context,
                                        );
                                      case 'denied':
                                        showError(
                                          UpdatiumError(AppLocalizations.of(context)!\.cancelled),
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
                              child: Text(AppLocalizations.of(context)!\.shizukuPretendToBeGooglePlay),
                            ),
                            Switch(
                              value:
                                  settingsProvider.shizukuPretendToBeGooglePlay,
                              onChanged: (value) {
                                settingsProvider.shizukuPretendToBeGooglePlay =
                                    value;
                              },
                            ),
                          ],
                        ),
                        height32,
                        Text(
                          AppLocalizations.of(context)!\.sourceSpecific,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        ...sourceSpecificFields,
                        height32,
                        Text(
                          AppLocalizations.of(context)!\.appearance,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        DropdownButtonFormField(
                          decoration: InputDecoration(labelText: AppLocalizations.of(context)!\.theme),
                          initialValue: settingsProvider.theme,
                          items: [
                            DropdownMenuItem(
                              value: ThemeSettings.system,
                              child: Text(AppLocalizations.of(context)!\.followSystem),
                            ),
                            DropdownMenuItem(
                              value: ThemeSettings.light,
                              child: Text(AppLocalizations.of(context)!\.light),
                            ),
                            DropdownMenuItem(
                              value: ThemeSettings.dark,
                              child: Text(AppLocalizations.of(context)!\.dark),
                            ),
                          ],
                          onChanged: (value) {
                            if (value != null) {
                              settingsProvider.theme = value;
                            }
                          },
                        ),
                        height8,
                        if (settingsProvider.theme == ThemeSettings.system)
                          followSystemThemeExplanation,
                        height16,
                        if (settingsProvider.theme != ThemeSettings.light)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(child: Text(AppLocalizations.of(context)!\.useBlackTheme)),
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
                        if (!settingsProvider.useMaterialYou) colorPicker,
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
                                            child: Text(AppLocalizations.of(context)!\.useSystemFont),
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
                            Flexible(child: Text(AppLocalizations.of(context)!\.pinUpdates)),
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
                              child: Text(AppLocalizations.of(context)!\.moveNonInstalledAppsToBottom),
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
                            Flexible(child: Text(AppLocalizations.of(context)!\.hideNonInstalledApps)),
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
                            Flexible(child: Text(AppLocalizations.of(context)!\.groupByCategory)),
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
                              child: Text(AppLocalizations.of(context)!\.dontShowTrackOnlyWarnings),
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
                              child: Text(AppLocalizations.of(context)!\.dontShowAPKOriginWarnings),
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
                            Flexible(child: Text(AppLocalizations.of(context)!\.disablePageTransitions)),
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
                            Flexible(child: Text(AppLocalizations.of(context)!\.reversePageTransitions)),
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
                            Flexible(child: Text(AppLocalizations.of(context)!\.highlightTouchTargets)),
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
                          AppLocalizations.of(context)!\.categories,
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
          SliverToBoxAdapter(
            child: Column(
              children: [
                const Divider(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        launchUrlString(
                          settingsProvider.sourceUrl,
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      icon: const Icon(Icons.code),
                      tooltip: AppLocalizations.of(context)!\.appSource,
                    ),
                    IconButton(
                      onPressed: () {
                        launchUrlString(
                          'https://github.com/omeritzics/Updatium/wiki',
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      icon: context.locale.languageCode == 'he'
                          ? Transform(
                              transform: Matrix4.identity(),
                              child: const Icon(Icons.help),
                            )
                          : const Icon(Icons.help),
                      tooltip: AppLocalizations.of(context)!\.wiki,
                    ),
                    IconButton(
                      onPressed: () {
                        context.read<LogsProvider>().get().then((logs) {
                          if (logs.isEmpty) {
                            showMessage(UpdatiumError(AppLocalizations.of(context)!\.noLogs), context);
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
                      icon: const Icon(Icons.bug_report),
                      tooltip: AppLocalizations.of(context)!\.appLogs,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ],
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

  @override
  Widget build(BuildContext context) {
    var logsProvider = context.read<LogsProvider>();
    void filterLogs(int days) {
      logsProvider
          .get(after: DateTime.now().subtract(Duration(days: days)))
          .then((value) {
            setState(() {
              String l = value.map((e) => e.toString()).join('\n\n');
              logString = l.isNotEmpty ? l : AppLocalizations.of(context)!\.noLogs;
            });
          });
    }

    if (logString == null) {
      filterLogs(days.first);
    }

    return AlertDialog(
      scrollable: true,
      title: Text(AppLocalizations.of(context)!\.appLogs),
      content: Column(
        children: [
          DropdownButtonFormField(
            initialValue: days.first,
            items: days
                .map(
                  (e) =>
                      DropdownMenuItem(value: e, child: Text(plural('day', e))),
                )
                .toList(),
            onChanged: (d) {
              filterLogs(d ?? 7);
            },
          ),
          const SizedBox(height: 32),
          Text(logString ?? ''),
        ],
      ),
      actions: [
        createAppTextButton(
          onPressed: () async {
            var cont =
                (await showDialog<Map<String, dynamic>?>(
                  context: context,
                  builder: (BuildContext ctx) {
                    return GeneratedFormModal(
                      title: AppLocalizations.of(context)!\.appLogs,
                      items: const [],
                      initValid: true,
                      message: AppLocalizations.of(context)!\.removeFromUpdatium,
                    );
                  },
                )) !=
                null;
            if (cont) {
              logsProvider.clear();
              Navigator.of(context).pop();
            }
          },
          child: Text(AppLocalizations.of(context)!\.remove),
        ),
        createAppTextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(AppLocalizations.of(context)!\.close),
        ),
        createAppTextButton(
          onPressed: () {
            Share.share(logString ?? '', subject: AppLocalizations.of(context)!\.appLogs);
            Navigator.of(context).pop();
          },
          child: Text(AppLocalizations.of(context)!\.share),
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
            label: AppLocalizations.of(context)!\.categories,
            emptyMessage: AppLocalizations.of(context)!\.noCategories,
            defaultValue: storedValues,
            alignment: widget.alignment,
            deleteConfirmationMessage: MapEntry(
              AppLocalizations.of(context)!\.deleteCategoriesQuestion,
              AppLocalizations.of(context)!\.categoryDeleteWarning,
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
