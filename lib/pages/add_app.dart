import 'package:animations/animations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:updatium/components/generated_form.dart';
import 'package:updatium/main.dart';
import 'package:updatium/pages/app.dart';
import 'package:updatium/pages/import_export.dart';
import 'package:updatium/pages/settings.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/notifications_provider.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/providers/logs_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AddAppPage extends StatefulWidget {
  const AddAppPage({super.key});

  @override
  State<AddAppPage> createState() => AddAppPageState();
}

class AddAppPageState extends State<AddAppPage> {
  bool gettingAppInfo = false;
  bool searching = false;

  String userInput = '';
  String searchQuery = '';
  String? pickedSourceOverride;
  String? previousPickedSourceOverride;
  AppSource? pickedSource;
  Map<String, dynamic> additionalSettings = {};
  bool additionalSettingsValid = true;
  bool inferAppIdIfOptional = true;
  List<String> pickedCategories = [];
  int urlInputKey = 0;
  SourceProvider sourceProvider = SourceProvider();
  bool _advancedExpanded = false;
  Map<String, dynamic> _advancedSettings = {
    'apkFilterRegEx': '',
    'zippedApkFilterRegEx': '',
    'shizukuPretendToBeGooglePlay': false,
    'allowInsecure': false,
  };

  String? _regExValidator(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    try {
      RegExp(value);
    } catch (e) {
      return tr('invalidRegEx');
    }
    return null;
  }

  void linkFn(String input) {
    try {
      if (input.isEmpty) {
        throw UnsupportedURLError();
      }
      sourceProvider.getSource(input);
      changeUserInput(input, true, false, updateUrlInput: true);
    } catch (e) {
      showError(e, context);
    }
  }

  void changeUserInput(
    String input,
    bool valid,
    bool isBuilding, {
    bool updateUrlInput = false,
    String? overrideSource,
  }) {
    userInput = input;
    if (!isBuilding) {
      setState(() {
        if (overrideSource != null) {
          pickedSourceOverride = overrideSource;
        }
        bool overrideChanged =
            pickedSourceOverride != previousPickedSourceOverride;
        previousPickedSourceOverride = pickedSourceOverride;
        if (updateUrlInput) {
          urlInputKey++;
        }
        var prevHost = pickedSource?.hosts.isNotEmpty == true
            ? pickedSource?.hosts[0]
            : null;
        AppSource? source;
        if (valid) {
          try {
            source = sourceProvider.getSource(
              userInput,
              overrideSource: pickedSourceOverride,
            );
          } catch (e) {
            // Ignore errors while typing
          }
        }
        if (pickedSource?.runtimeType != source?.runtimeType ||
            overrideChanged ||
            (prevHost != null && prevHost != source?.hosts[0])) {
          pickedSource = source;
          pickedSource?.runOnAddAppInputChange(userInput);
          additionalSettings = source != null
              ? getDefaultValuesFromFormItems(
                  source.combinedAppSpecificSettingFormItems,
                )
              : {};
          additionalSettingsValid = source != null
              ? !sourceProvider.ifRequiredAppSpecificSettingsExist(source)
              : true;
          inferAppIdIfOptional = true;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    AppsProvider appsProvider = context.read<AppsProvider>();
    SettingsProvider settingsProvider = context.watch<SettingsProvider>();
    NotificationsProvider notificationsProvider = context
        .read<NotificationsProvider>();

    bool doingSomething = gettingAppInfo || searching;

    Future<bool> getTrackOnlyConfirmationIfNeeded(
      bool userPickedTrackOnly, {
      bool ignoreHideSetting = false,
    }) async {
      var useTrackOnly = userPickedTrackOnly || pickedSource!.enforceTrackOnly;
      if (useTrackOnly &&
          (!settingsProvider.hideTrackOnlyWarning || ignoreHideSetting)) {
        // ignore: use_build_context_synchronously
        var values = await showDialog<Map<String, dynamic>?>(
          context: context,
          builder: (BuildContext ctx) {
            Map<String, dynamic> localValues = {'hide': false};
            return AlertDialog(
              scrollable: true,
              contentPadding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
              title: Text(
                tr(
                  'xIsTrackOnly',
                  args: [
                    pickedSource!.enforceTrackOnly ? tr('source') : tr('app'),
                  ],
                ),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${pickedSource!.enforceTrackOnly ? tr('appsFromSourceAreTrackOnly') : tr('youPickedTrackOnly')}\n\n${tr('trackOnlyAppDescription')}',
                  ),
                  const SizedBox(height: 16),
                  GeneratedForm(
                    items: [
                      [GeneratedFormSwitch('hide', label: tr('dontShowAgain'))],
                    ],
                    onValueChanges: (vals, valid, isBuilding) {
                      localValues = vals;
                    },
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(ctx).pop(null),
                  child: Text(tr('cancel')),
                ),
                TextButton(
                  onPressed: () => Navigator.of(ctx).pop(localValues),
                  child: Text(tr('ok')),
                ),
              ],
            );
          },
        );
        if (values != null) {
          settingsProvider.hideTrackOnlyWarning = values['hide'] == true;
        }
        return useTrackOnly && values != null;
      } else {
        return true;
      }
    }

    getReleaseDateAsVersionConfirmationIfNeeded(
      bool userPickedTrackOnly,
    ) async {
      return (!(additionalSettings['releaseDateAsVersion'] == true &&
          // ignore: use_build_context_synchronously
          await showDialog(
                context: context,
                builder: (BuildContext ctx) {
                  return AlertDialog(
                    title: Text(tr('releaseDateAsVersion')),
                    content: Text(tr('releaseDateAsVersionExplanation')),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(ctx).pop(null),
                        child: Text(tr('cancel')),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(ctx).pop(true),
                        child: Text(tr('ok')),
                      ),
                    ],
                  );
                },
              ) ==
              null));
    }

    addApp({bool resetUserInputAfter = false}) async {
      setState(() {
        gettingAppInfo = true;
      });
      try {
        var userPickedTrackOnly = additionalSettings['trackOnly'] == true;
        App? app;
        if ((await getTrackOnlyConfirmationIfNeeded(userPickedTrackOnly)) &&
            (await getReleaseDateAsVersionConfirmationIfNeeded(
              userPickedTrackOnly,
            ))) {
          var trackOnly = pickedSource!.enforceTrackOnly || userPickedTrackOnly;
          app = await sourceProvider.getApp(
            pickedSource!,
            userInput.trim(),
            additionalSettings,
            trackOnlyOverride: trackOnly,
            sourceIsOverriden: pickedSourceOverride != null,
            inferAppIdIfOptional: inferAppIdIfOptional,
          );
          // Only download the APK here if you need to for the package ID
          if (isTempId(app) && app.additionalSettings['trackOnly'] != true) {
            // ignore: use_build_context_synchronously
            var apkUrl = await appsProvider.confirmAppFileUrl(
              app,
              context,
              false,
            );
            if (apkUrl == null) {
              throw UpdatiumError(tr('cancelled'));
            }
            app.preferredApkIndex = app.apkUrls
                .map((e) => e.value)
                .toList()
                .indexOf(apkUrl.value);
            // ignore: use_build_context_synchronously
            var downloadedArtifact = await appsProvider.downloadApp(
              app,
              globalNavigatorKey.currentContext,
              notificationsProvider: notificationsProvider,
            );
            DownloadedApk? downloadedFile;
            DownloadedDir? downloadedDir;
            if (downloadedArtifact is DownloadedApk) {
              downloadedFile = downloadedArtifact;
            } else {
              downloadedDir = downloadedArtifact as DownloadedDir;
            }
            app.id = downloadedFile?.appId ?? downloadedDir!.appId;
          }
          if (appsProvider.apps.containsKey(app.id)) {
            throw UpdatiumError(tr('appAlreadyAdded'));
          }
          if (app.additionalSettings['trackOnly'] == true ||
              app.additionalSettings['versionDetection'] != true) {
            app.installedVersion = app.latestVersion;
          }
          app.categories = pickedCategories;
          await appsProvider.saveApps([app], onlyIfExists: false);
        }
        if (app != null) {
          Navigator.push(
            globalNavigatorKey.currentContext ?? context,
            MaterialPageRoute(builder: (context) => AppPage(appId: app!.id)),
          );
        }
      } catch (e) {
        showError(e, context);
      } finally {
        setState(() {
          gettingAppInfo = false;
          if (resetUserInputAfter) {
            changeUserInput('', false, true);
          }
        });
      }
    }

    Widget getUrlInputRow() => Row(
      children: [
        Expanded(
          child: GeneratedForm(
            key: Key(urlInputKey.toString()),
            items: [
              [
                GeneratedFormTextField(
                  'appSourceURL',
                  label: tr('appSourceURL'),
                  defaultValue: userInput,
                  additionalValidators: [
                    (value) {
                      try {
                        sourceProvider
                            .getSource(
                              value ?? '',
                              overrideSource: pickedSourceOverride,
                            )
                            .standardizeUrl(value ?? '');
                      } catch (e) {
                        return e is String
                            ? e
                            : e is UpdatiumError
                            ? e.toString()
                            : tr('error');
                      }
                      return null;
                    },
                  ],
                ),
              ],
            ],
            onValueChanges: (values, valid, isBuilding) {
              changeUserInput(values['appSourceURL']!, valid, isBuilding);
            },
          ),
        ),
        const SizedBox(width: 16),
        gettingAppInfo
            ? Semantics(
                label: tr('gettingAppInfo'),
                child: const CircularProgressIndicator(),
              )
            : Semantics(
                button: true,
                label: tr('add'),
                hint: doingSomething
                    ? 'Please wait, operation in progress'
                    : pickedSource == null
                    ? 'Select a source first'
                    : (pickedSource!
                              .combinedAppSpecificSettingFormItems
                              .isNotEmpty &&
                          !additionalSettingsValid)
                    ? 'Complete additional settings first'
                    : 'Add this app to your collection',
                excludeSemantics: true,
                child: FilledButton(
                  onPressed:
                      doingSomething ||
                          pickedSource == null ||
                          (pickedSource!
                                  .combinedAppSpecificSettingFormItems
                                  .isNotEmpty &&
                              !additionalSettingsValid)
                      ? null
                      : () {
                          HapticFeedback.selectionClick();
                          addApp();
                        },
                  child: Text(tr('add')),
                ),
              ),
      ],
    );

    runSearch({bool filtered = true}) async {
      setState(() {
        searching = true;
      });
      var sourceStrings = <String, List<String>>{};
      sourceProvider.sources.where((e) => e.canSearch).forEach((s) {
        sourceStrings[s.name] = [s.name];
      });
      try {
        var searchSources =
            await showDialog<List<String>?>(
              context: context,
              builder: (BuildContext ctx) {
                return SelectionModal(
                  title: tr(
                    'selectX',
                    args: [plural('source', 2).toLowerCase()],
                  ),
                  entries: sourceStrings,
                  selectedByDefault: true,
                  onlyOneSelectionAllowed: false,
                  titlesAreLinks: false,
                  deselectThese: settingsProvider.searchDeselected,
                );
              },
            ) ??
            [];
        if (searchSources.isNotEmpty) {
          settingsProvider.searchDeselected = sourceStrings.keys
              .where((s) => !searchSources.contains(s))
              .toList();
          List<MapEntry<String, Map<String, List<String>>>>
          results = (await Future.wait<MapEntry<String, Map<String, List<String>>>?>(
            sourceProvider.sources
                .where((e) => searchSources.contains(e.name))
                .map((e) async {
                  try {
                    Map<String, dynamic>? querySettings = {};
                    if (e.includeAdditionalOptsInMainSearch) {
                      querySettings = await showDialog<Map<String, dynamic>?>(
                        context: context,
                        builder: (BuildContext ctx) {
                          Map<String, dynamic> localValues = {};
                          return AlertDialog(
                            scrollable: true,
                            contentPadding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                            title: Text(tr('searchX', args: [e.name])),
                            content: SizedBox(
                              width: double.maxFinite,
                              child: GeneratedForm(
                              items: [
                                ...e.searchQuerySettingFormItems.map(
                                  (e) => [e],
                                ),
                                [
                                  GeneratedFormTextField(
                                    'url',
                                    label: e.hosts.isNotEmpty
                                        ? tr('overrideSource')
                                        : plural('url', 1).substring(2),
                                    autoCompleteOptions: [
                                      ...(e.hosts.isNotEmpty
                                          ? [e.hosts[0]]
                                          : []),
                                      ...appsProvider.apps.values
                                          .where(
                                            (a) =>
                                                sourceProvider
                                                    .getSource(
                                                      a.app.url,
                                                      overrideSource:
                                                          a.app.overrideSource,
                                                    )
                                                    .runtimeType ==
                                                e.runtimeType,
                                          )
                                          .map((a) {
                                            var uri = Uri.parse(a.app.url);
                                            return '${uri.origin}${uri.path}';
                                          }),
                                    ],
                                    defaultValue: e.hosts.isNotEmpty
                                        ? e.hosts[0]
                                        : '',
                                    required: true,
                                  ),
                                ],
                              ],
                              onValueChanges: (vals, valid, isBuilding) {
                                localValues = vals;
                              },
                            ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.of(ctx).pop(null),
                                child: Text(tr('cancel')),
                              ),
                              TextButton(
                                onPressed: () =>
                                    Navigator.of(ctx).pop(localValues),
                                child: Text(tr('ok')),
                              ),
                            ],
                          );
                        },
                      );
                    }
                    return MapEntry(
                      e.runtimeType.toString(),
                      await e.search(
                        searchQuery,
                        querySettings: querySettings ?? {},
                      ),
                    );
                  } catch (err) {
                    if (err is CredsNeededError) {
                      err.unexpected = true;
                      showError(err, context);
                    } else {
                      LogsProvider().add(
                        'Search error for ${e.name}: ${err.toString()}',
                        level: LogLevels.error,
                      );
                    }
                    return null;
                  }
                }),
          )).whereType<MapEntry<String, Map<String, List<String>>>>().toList();

          // Interleave results instead of simple reduce
          Map<String, MapEntry<String, List<String>>> res = {};
          var si = 0;
          var done = false;
          while (!done) {
            done = true;
            for (var r in results) {
              var sourceName = r.key;
              if (r.value.length > si) {
                done = false;
                var singleRes = r.value.entries.elementAt(si);
                res[singleRes.key] = MapEntry(sourceName, singleRes.value);
              }
            }
            si++;
          }
          if (res.isEmpty) {
            throw UpdatiumError(tr('noResults'));
          }
          List<String>? selectedUrls = res.isEmpty
              ? []
              // ignore: use_build_context_synchronously
              : await showDialog<List<String>?>(
                  context: context,
                  builder: (BuildContext ctx) {
                    return SelectionModal(
                      entries: res.map((k, v) => MapEntry(k, v.value)),
                      selectedByDefault: false,
                      onlyOneSelectionAllowed: true,
                    );
                  },
                );
          if (selectedUrls != null && selectedUrls.isNotEmpty) {
            var sourceName = res[selectedUrls[0]]?.key;
            changeUserInput(
              selectedUrls[0],
              true,
              false,
              updateUrlInput: true,
              overrideSource: sourceName,
            );
          }
        }
      } catch (e) {
        showError(e, context);
      } finally {
        setState(() {
          searching = false;
        });
      }
    }

    bool shouldShowSearchBar() =>
        sourceProvider.sources.where((e) => e.canSearch).isNotEmpty &&
        pickedSource == null &&
        userInput.isEmpty;

    Widget getHTMLSourceOverrideDropdown() => Column(
      children: [
        Row(
          children: [
            Expanded(
              child: MenuAnchor(
                builder: (context, controller, child) {
                  final selectedSource = sourceProvider.sources
                      .where(
                        (s) =>
                            s.allowOverride ||
                            (pickedSource != null &&
                                pickedSource.runtimeType == s.runtimeType),
                      )
                      .firstWhere(
                        (s) =>
                            s.runtimeType.toString() ==
                            (pickedSourceOverride ?? ''),
                        orElse: () => sourceProvider.sources.first,
                      );

                  return TextField(
                    controller: TextEditingController(
                      text:
                          pickedSourceOverride == null ||
                              pickedSourceOverride == ''
                          ? tr('none')
                          : selectedSource.name,
                    ),
                    readOnly: true,
                    decoration: InputDecoration(
                      labelText: tr('overrideSource'),
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
                      setState(() {
                        pickedSourceOverride = null;
                      });
                      changeUserInput(userInput, true, false);
                    },
                    child: Text(tr('none')),
                  ),
                  ...sourceProvider.sources
                      .where(
                        (s) =>
                            s.allowOverride ||
                            (pickedSource != null &&
                                pickedSource.runtimeType == s.runtimeType),
                      )
                      .map(
                        (s) => MenuItemButton(
                          onPressed: () {
                            setState(() {
                              pickedSourceOverride = s.runtimeType.toString();
                            });
                            changeUserInput(userInput, true, false);
                          },
                          child: Text(s.name),
                        ),
                      ),
                ],
              ),
            ),
          ],
        ),
      ],
    );

    Widget getSearchBarRow() => Row(
      children: [
        Expanded(
          child: GeneratedForm(
            items: [
              [
                GeneratedFormTextField(
                  'searchSomeSources',
                  label: tr('searchSomeSourcesLabel'),
                  required: false,
                ),
              ],
            ],
            onValueChanges: (values, valid, isBuilding) {
              if (values.isNotEmpty && valid && !isBuilding) {
                setState(() {
                  searchQuery = values['searchSomeSources']!.trim();
                });
              }
            },
          ),
        ),
        const SizedBox(width: 16),
        searching
            ? Semantics(
                label: tr('searching'),
                child: const CircularProgressIndicator(),
              )
            : Semantics(
                button: true,
                label: tr('search'),
                hint: searchQuery.isEmpty
                    ? 'Enter search terms first'
                    : 'Search for apps',
                excludeSemantics: true,
                child: FilledButton(
                  onPressed: searchQuery.isEmpty || doingSomething
                      ? null
                      : () {
                          runSearch();
                        },
                  child: Text(tr('search')),
                ),
              ),
      ],
    );

    Widget getAdvancedSection() => Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 24),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.outline.withOpacity(0.3),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: ExpansionTile(
            title: Text(
              tr('advanced'),
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            initiallyExpanded: _advancedExpanded,
            onExpansionChanged: (expanded) {
              setState(() {
                _advancedExpanded = expanded;
              });
            },
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: GeneratedForm(
                  key: const Key('advancedSettings'),
                  items: [
                    [
                      GeneratedFormTextField(
                        'apkFilterRegEx',
                        label: tr('filterAPKsByRegEx'),
                        required: false,
                        additionalValidators: [
                          (value) => _regExValidator(value),
                        ],
                      ),
                    ],
                    [
                      GeneratedFormSwitch(
                        'invertAPKFilter',
                        label:
                            '${tr('invertRegEx')} (${tr('filterAPKsByRegEx')})',
                        defaultValue: false,
                      ),
                    ],
                    [
                      GeneratedFormTextField(
                        'zippedApkFilterRegEx',
                        label: tr('zippedApkFilterRegEx'),
                        required: false,
                        additionalValidators: [
                          (value) => _regExValidator(value),
                        ],
                      ),
                    ],
                    [
                      GeneratedFormSwitch(
                        'shizukuPretendToBeGooglePlay',
                        label: tr('shizukuPretendToBeGooglePlay'),
                        defaultValue: false,
                      ),
                    ],
                    [
                      GeneratedFormSwitch(
                        'allowInsecure',
                        label: tr('allowInsecure'),
                        defaultValue: false,
                      ),
                    ],
                  ],
                  onValueChanges: (values, valid, isBuilding) {
                    if (!isBuilding) {
                      setState(() {
                        _advancedSettings = values;
                        // Merge advanced settings into additional settings
                        additionalSettings.addAll(_advancedSettings);
                      });
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );

    Widget getAdditionalOptsCol() => Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 16),
        Text(
          tr('additionalOptsFor', args: [pickedSource?.name ?? tr('source')]),
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        GeneratedForm(
          key: Key(
            '${pickedSource.runtimeType.toString()}-${pickedSource?.hostChanged.toString()}-${pickedSource?.hostIdenticalDespiteAnyChange.toString()}',
          ),
          items: [
            ...pickedSource!.combinedAppSpecificSettingFormItems,
            ...(pickedSourceOverride != null
                ? pickedSource!.sourceConfigSettingFormItems.map((e) => [e])
                : []),
          ],
          onValueChanges: (values, valid, isBuilding) {
            if (!isBuilding) {
              setState(() {
                additionalSettings = values;
                additionalSettingsValid = valid;
                // Merge advanced settings into additional settings
                additionalSettings.addAll(_advancedSettings);
              });
            }
          },
        ),
        Column(
          children: [
            const SizedBox(height: 16),
            CategoryEditorSelector(
              alignment: WrapAlignment.start,
              onSelected: (categories) {
                pickedCategories = categories;
              },
            ),
          ],
        ),
        if (pickedSource != null && pickedSource!.appIdInferIsOptional)
          GeneratedForm(
            key: const Key('inferAppIdIfOptional'),
            items: [
              [
                GeneratedFormSwitch(
                  'inferAppIdIfOptional',
                  label: tr('tryInferAppIdFromCode'),
                  defaultValue: inferAppIdIfOptional,
                ),
              ],
            ],
            onValueChanges: (values, valid, isBuilding) {
              if (!isBuilding) {
                setState(() {
                  inferAppIdIfOptional = values['inferAppIdIfOptional'];
                });
              }
            },
          ),
        if (pickedSource != null && pickedSource!.enforceTrackOnly)
          GeneratedForm(
            key: Key(
              '${pickedSource.runtimeType.toString()}-${pickedSource?.hostChanged.toString()}-${pickedSource?.hostIdenticalDespiteAnyChange.toString()}-appId',
            ),
            items: [
              [
                GeneratedFormTextField(
                  'appId',
                  label: '${tr('appId')} - ${tr('custom')}',
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
                        return tr('invalidInput');
                      }
                      return null;
                    },
                  ],
                ),
              ],
            ],
            onValueChanges: (values, valid, isBuilding) {
              if (!isBuilding) {
                setState(() {
                  additionalSettings['appId'] = values['appId'];
                });
              }
            },
          ),
      ],
    );

    Widget getSourcesListWidget() => Padding(
      padding: const EdgeInsets.all(16),
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.spaceBetween,
        spacing: 12,
        children: [
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    scrollable: true,
                    contentPadding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                    title: Text(tr('supportedSources')),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...sourceProvider.sources.map(
                          (e) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: GestureDetector(
                              onTap: e.hosts.isNotEmpty
                                  ? () {
                                      launchUrlString(
                                        'https://${e.hosts[0]}',
                                        mode: LaunchMode.externalApplication,
                                      );
                                    }
                                  : null,
                              child: Text(
                                '${e.name}${e.enforceTrackOnly ? ' ${tr('trackOnlyInBrackets')}' : ''}${e.canSearch ? ' ${tr('searchableInBrackets')}' : ''}',
                                style: TextStyle(
                                  decoration: e.hosts.isNotEmpty
                                      ? TextDecoration.underline
                                      : TextDecoration.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          '${tr('note')}:',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          tr('selfHostedNote', args: [tr('overrideSource')]),
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text(tr('ok')),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text(
              tr('supportedSources'),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      bottomNavigationBar: pickedSource == null ? getSourcesListWidget() : null,
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          SliverAppBar.large(pinned: true, title: Text(tr('addApp'))),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getUrlInputRow(),
                  const SizedBox(height: 16),
                  if (pickedSource != null) getHTMLSourceOverrideDropdown(),
                  if (shouldShowSearchBar()) getSearchBarRow(),
                  if (pickedSource != null)
                    FutureBuilder(
                      builder: (ctx, val) {
                        return val.data != null && val.data!.isNotEmpty
                            ? Text(
                                val.data!,
                                style: Theme.of(context).textTheme.bodySmall,
                              )
                            : const SizedBox();
                      },
                      future: pickedSource?.getSourceNote(),
                    ),
                  if (pickedSource != null) getAdditionalOptsCol(),
                  if (pickedSource != null) getAdvancedSection(),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const ImportExportPage(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                    return SharedAxisTransition(
                      animation: animation,
                      secondaryAnimation: secondaryAnimation,
                      transitionType: SharedAxisTransitionType.vertical,
                      child: child,
                    );
                  },
            ),
          );
        },
        icon: const Icon(Icons.import_export),
        label: Text(tr('importExport')),
      ),
    );
  }
}
