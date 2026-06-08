import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:m3e_buttons/m3e_buttons.dart';
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
import 'package:updatium/services/slang_converter.dart';
import 'package:url_launcher/url_launcher_string.dart';

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

class AppAddingProgressBar extends StatelessWidget {
  final int currentStep;
  final int totalSteps;

  const AppAddingProgressBar({
    super.key,
    required this.currentStep,
    required this.totalSteps,
  });

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: currentStep / totalSteps,
    );
  }
}

class AddAppPage extends StatefulWidget {
  const AddAppPage({super.key});

  @override
  State<AddAppPage> createState() => AddAppPageState();
}

class AddAppPageState extends State<AddAppPage> {
  bool searching = false;
  String userInput = '';
  String searchQuery = '';
  int searchBarKey = 0;
  String? pickedSourceOverride;
  AppSource? pickedSource;
  int urlInputKey = 0;
  SourceProvider sourceProvider = SourceProvider();
  final TextEditingController _sourceOverrideController =
      TextEditingController();

  @override
  void dispose() {
    _sourceOverrideController.dispose();
    super.dispose();
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
        if (updateUrlInput) {
          urlInputKey++;
        }
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
        if (pickedSource?.runtimeType != source?.runtimeType) {
          pickedSource = source;
          pickedSource?.runOnAddAppInputChange(userInput);
        }
      });
    }
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

  bool shouldShowSearchBar() =>
      sourceProvider.sources.where((e) => e.canSearch).isNotEmpty &&
      pickedSource == null &&
      userInput.isEmpty;

  Widget getUrlInputRow() => Row(
    children: [
      Expanded(
        child: GeneratedForm(
          key: Key(urlInputKey.toString()),
          items: [
            [
              GeneratedFormTextField(
                'appSourceURL',
                label: t('appSourceURL'),
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
                          : t('error');
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
      horizontalGap16,
      searching
          ? const CircularProgressIndicator()
          : M3EFilledButton(
              onPressed: searching || pickedSource == null
                  ? null
                  : () {
                      HapticFeedback.selectionClick();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddAppConfirmationPage(
                            initialUrl: userInput,
                            initialSourceOverride: pickedSourceOverride,
                          ),
                        ),
                      );
                    },
              child: Text(t('continue')),
            ),
    ],
  );

  Widget getSearchBarRow() => Row(
    children: [
      Expanded(
        child: GeneratedForm(
          key: Key(searchBarKey.toString()),
          items: [
            [
              GeneratedFormTextField(
                'searchSomeSources',
                label: t('searchSomeSourcesLabel'),
                required: false,
                defaultValue: searchQuery,
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
      horizontalGap16,
      searching
          ? const CircularProgressIndicator()
          : M3EFilledButton(
              onPressed: searchQuery.isEmpty || searching
                  ? null
                  : () {
                      runSearch();
                    },
              child: Text(t('search')),
            ),
    ],
  );

  Widget getHTMLSourceOverrideDropdown() => SourceOverrideDropdown(
    selectedOverride: pickedSourceOverride,
    pickedSource: pickedSource,
    onSelectionChanged: (selection) {
      setState(() {
        pickedSourceOverride = selection;
      });
      changeUserInput(userInput, true, false);
    },
    controller: _sourceOverrideController,
  );

  Widget getSourcesListWidget() => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      TextButton.icon(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext ctx) {
              return AlertDialog(
                scrollable: true,
                contentPadding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                title: Text(t('supportedSources')),
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
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '${e.name}${e.enforceTrackOnly ? ' ${t('trackOnlyInBrackets')}' : ''}${e.canSearch ? ' ${t('searchableInBrackets')}' : ''}',
                                style: TextStyle(
                                  decoration: e.hosts.isNotEmpty
                                      ? TextDecoration.underline
                                      : TextDecoration.none,
                                ),
                              ),
                              if (e.openSource) ...[
                                const SizedBox(width: 4),
                                Icon(
                                  Icons.workspace_premium,
                                  size: 14,
                                  color: Theme.of(context).colorScheme.primary,
                                  semanticLabel: t('openSource'),
                                ),
                                const SizedBox(width: 2),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                    gap16,
                    Text(
                      '${t('note')}:',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text(t('selfHostedNote', args: [t('overrideSource')])),
                    gap8,
                    Row(
                      children: [
                        Icon(
                          Icons.workspace_premium,
                          size: 14,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            t('openSourceNote'),
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(ctx).pop(),
                    child: Text(t('ok')),
                  ),
                ],
              );
            },
          );
        },
        icon: const Icon(Icons.info_outline, size: 18),
        label: Text(t('supportedSources')),
        style: TextButton.styleFrom(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.zero,
        ),
      ),
      horizontalGap8,
      TextButton.icon(
        onPressed: () async {
          final installedApps = await getAllInstalledInfo();
          if (!context.mounted) return;

          // Filter out system apps
          final nonSystemApps = installedApps.where((app) {
            final flags = app.applicationInfo?.flags ?? 0;
            // System apps have the FLAG_SYSTEM bit set (0x00000001)
            return (flags & 0x00000001) == 0;
          }).toList();

          showDialog(
            context: context.mounted as BuildContext,
            builder: (BuildContext ctx) {
              return AlertDialog(
                contentPadding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                title: Text(t('installedApps')),
                content: SizedBox(
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: nonSystemApps.length,
                      itemBuilder: (context, index) {
                        final app = nonSystemApps[index];
                        return FutureBuilder<Uint8List?>(
                          future: app.applicationInfo?.getAppIcon(),
                          builder: (context, iconSnapshot) {
                            return FutureBuilder<String>(
                              future:
                                  app.applicationInfo?.getAppLabel().then(
                                    (label) => label ?? app.packageName ?? 'Unknown',
                                  ) ??
                                  Future.value(app.packageName ?? 'Unknown'),
                              builder: (context, snapshot) {
                                final appName = snapshot.data ?? 'Unknown';
                                return ListTile(
                                  dense: true,
                                  leading: iconSnapshot.hasData && iconSnapshot.data != null
                                      ? Image.memory(
                                          iconSnapshot.data!,
                                          width: 40,
                                          height: 40,
                                        )
                                      : const Icon(Icons.apps),
                                  title: Text(appName),
                                  subtitle: Text(app.packageName ?? ''),
                                  onTap: () {
                                    Navigator.of(ctx).pop();
                                    setState(() {
                                      searchQuery = app.packageName ?? '';
                                      userInput = '';
                                      pickedSource = null;
                                      pickedSourceOverride = null;
                                      searchBarKey++;
                                    });
                                  },
                                );
                              },
                            );
                          },
                        );
                      },

                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(ctx).pop(),
                    child: Text(t('ok')),
                  ),
                ],
              );
            },
          );
        },
        icon: const Icon(Icons.apps, size: 18),
        label: Text(t('installedApps')),
        style: TextButton.styleFrom(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.zero,
        ),
      ),
    ],
  );

  Future<void> runSearch({bool filtered = true}) async {
    setState(() {
      searching = true;
    });
    var sourceStrings = <String, List<String>>{};
    sourceProvider.sources.where((e) => e.canSearch).forEach((s) {
      sourceStrings[s.name] = [s.name];
    });
    SettingsProvider settingsProvider = context.read<SettingsProvider>();
    try {
      var searchSources =
          await showDialog<List<String>?>(
            context: context,
            builder: (BuildContext ctx) {
              return SelectionModal(
                title: tr('selectX', args: [plural('source', 2).toLowerCase()]),
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
        List<MapEntry<String, Map<String, List<String>>>> results =
            (await Future.wait<MapEntry<String, Map<String, List<String>>>?>(
                  sourceProvider.sources
                      .where((e) => searchSources.contains(e.name))
                      .map((e) async {
                        try {
                          Map<String, dynamic>? querySettings = {};
                          if (e.includeAdditionalOptsInMainSearch) {
                            querySettings =
                                await showDialog<Map<String, dynamic>?>(
                                  context: context,
                                  builder: (BuildContext ctx) {
                                    Map<String, dynamic> localValues = {};
                                    return AlertDialog(
                                      scrollable: true,
                                      contentPadding: const EdgeInsets.fromLTRB(
                                        24,
                                        16,
                                        24,
                                        16,
                                      ),
                                      title: Text(t('searchX', args: [e.name])),
                                      content: SizedBox(
                                        width: double.maxFinite,
                                        child: GeneratedForm(
                                          items: [
                                            ...e.searchQuerySettingFormItems
                                                .map((e) => [e]),
                                            [
                                              GeneratedFormTextField(
                                                'url',
                                                label: e.hosts.isNotEmpty
                                                    ? t('overrideSource')
                                                    : plural(
                                                        'url',
                                                        1,
                                                      ).substring(2),
                                                defaultValue: e.hosts.isNotEmpty
                                                    ? e.hosts[0]
                                                    : '',
                                                required: true,
                                              ),
                                            ],
                                          ],
                                          onValueChanges:
                                              (vals, valid, isBuilding) {
                                                localValues = vals;
                                              },
                                        ),
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.of(ctx).pop(null),
                                          child: Text(t('cancel')),
                                        ),
                                        TextButton(
                                          onPressed: () => Navigator.of(
                                            ctx,
                                          ).pop(localValues),
                                          child: Text(t('ok')),
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
                            showError(err, context.mounted as BuildContext);
                          } else {
                            LogsProvider().add(
                              'Search error for ${e.name}: ${err.toString()}',
                              level: LogLevels.error,
                            );
                          }
                          return null;
                        }
                      }),
                ))
                .whereType<MapEntry<String, Map<String, List<String>>>>()
                .toList();

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
          throw UpdatiumError(t('noResults'));
        }
        List<String>? selectedUrls = res.isEmpty
            ? []
            : await showDialog<List<String>?>(
                context: context.mounted as BuildContext,
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
          Navigator.push(
            context.mounted as BuildContext,
            MaterialPageRoute(
              builder: (context) => AddAppConfirmationPage(
                initialUrl: selectedUrls[0],
                initialSourceOverride: sourceName,
                cameFromSearch: true,
              ),
            ),
          );
        }
      }
    } catch (e) {
      showError(e, context.mounted as BuildContext);
    } finally {
      setState(() {
        searching = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar.large(
            pinned: true, 
            title: Text(t('addApp')),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(4),
              child: AppAddingProgressBar(
                currentStep: 1, 
                totalSteps: (searching || searchQuery.isNotEmpty) ? 3 : 2,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getUrlInputRow(),
                  gap16,
                  if (pickedSource != null) getHTMLSourceOverrideDropdown(),
                  if (shouldShowSearchBar()) getSearchBarRow(),
                  if (pickedSource == null) getSourcesListWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AddAppConfirmationPage extends StatefulWidget {
  final String? initialUrl;
  final String? initialSourceOverride;
  final bool cameFromSearch;

  const AddAppConfirmationPage({
    super.key,
    this.initialUrl,
    this.initialSourceOverride,
    this.cameFromSearch = false,
  });

  @override
  State<AddAppConfirmationPage> createState() => AddAppConfirmationPageState();
}

class AddAppConfirmationPageState extends State<AddAppConfirmationPage> {
  bool gettingAppInfo = false;
  bool cameFromSearch = false;

  App? prefilledApp;
  int prefillVersion = 0;

  String userInput = '';
  String? pickedSourceOverride;
  AppSource? pickedSource;
  Map<String, dynamic> additionalSettings = {};
  bool additionalSettingsValid = true;
  bool inferAppIdIfOptional = true;
  List<String> pickedCategories = [];
  SourceProvider sourceProvider = SourceProvider();
  final TextEditingController _sourceOverrideController =
      TextEditingController();

  String? _regExValidator(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    try {
      RegExp(value);
    } catch (e) {
      return t('invalidRegEx');
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
    userInput = widget.initialUrl ?? '';
    pickedSourceOverride = widget.initialSourceOverride;
    cameFromSearch = widget.cameFromSearch;
    if (userInput.isNotEmpty) {
      try {
        pickedSource = sourceProvider.getSource(
          userInput,
          overrideSource: pickedSourceOverride,
        );
        additionalSettings = pickedSource != null
            ? getDefaultValuesFromFormItems(
                pickedSource!.combinedAppSpecificSettingFormItems,
              )
            : {};
        additionalSettingsValid = pickedSource != null
            ? !sourceProvider.ifRequiredAppSpecificSettingsExist(pickedSource!)
            : true;
      } catch (e) {
        // Ignore errors during initialization
      }
      prefillAppInfo();
    }
  }

  Future<void> prefillAppInfo() async {
    if (userInput.isEmpty || pickedSource == null) return;
    try {
      App app = await sourceProvider.getApp(
        pickedSource!,
        userInput.trim(),
        additionalSettings,
        trackOnlyOverride: true,
        sourceIsOverriden: pickedSourceOverride != null,
        inferAppIdIfOptional: inferAppIdIfOptional,
      );
      if (mounted) {
        setState(() {
          prefilledApp = app;
          additionalSettings = Map.from(app.additionalSettings);
          prefillVersion++;
        });
      }
    } catch (e) {
      // Ignore errors during pre-filling
    }
  }


  @override
  void dispose() {
    _sourceOverrideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppsProvider appsProvider = context.read<AppsProvider>();
    SettingsProvider settingsProvider = context.watch<SettingsProvider>();
    NotificationsProvider notificationsProvider = context
        .read<NotificationsProvider>();

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
                    pickedSource!.enforceTrackOnly ? t('source') : t('app'),
                  ],
                ),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${pickedSource!.enforceTrackOnly ? t('appsFromSourceAreTrackOnly') : t('youPickedTrackOnly')}\n\n${t('trackOnlyAppDescription')}',
                  ),
                  gap16,
                  GeneratedForm(
                    items: [
                      [GeneratedFormSwitch('hide', label: t('dontShowAgain'))],
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
                  child: Text(t('cancel')),
                ),
                TextButton(
                  onPressed: () => Navigator.of(ctx).pop(localValues),
                  child: Text(t('ok')),
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
                    title: Text(t('releaseDateAsVersion')),
                    content: Text(t('releaseDateAsVersionExplanation')),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(ctx).pop(null),
                        child: Text(t('cancel')),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(ctx).pop(true),
                        child: Text(t('ok')),
                      ),
                    ],
                  );
                },
              ) ==
              null));
    }

    addApp() async {
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
              context.mounted as BuildContext,
              false,
               progressIndicatorStep: cameFromSearch ? 3 : 2,
               progressIndicatorTotal: cameFromSearch ? 3 : 2,

            );
            if (apkUrl == null) {
              throw UpdatiumError(t('cancelled'));
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
            throw UpdatiumError(t('appAlreadyAdded'));
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
            MaterialPageRoute(
              builder: (context) => AppPage(
                appId: app!.id,
                flowType: cameFromSearch
                    ? AppAddFlowType.search
                    : AppAddFlowType.url,
              ),
            ),
          );
        }
      } catch (e) {
        showError(e, context.mounted as BuildContext);
      } finally {
        setState(() {
          gettingAppInfo = false;
        });
      }
    }

    Widget getAdditionalOptsCol() => Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        gap16,
        Text(
          t('additionalOptsFor', args: [pickedSource?.name ?? t('source')]),
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        gap16,
        GeneratedForm(
          key: Key(
            '${pickedSource.runtimeType.toString()}-${pickedSource?.hostChanged.toString()}-${pickedSource?.hostIdenticalDespiteAnyChange.toString()}-$prefillVersion',
          ),
          items: [
            ...pickedSource!.combinedAppSpecificSettingFormItems.map((row) {
              return row.map((e) {
                var item = e.clone();
                if (prefilledApp != null) {
                  if (prefilledApp!.additionalSettings[item.key] != null) {
                    item.defaultValue = prefilledApp!.additionalSettings[item.key];
                  } else if (item.key == 'appAuthor') {
                    item.defaultValue = prefilledApp!.author;
                  } else if (item.key == 'appId') {
                    item.defaultValue = prefilledApp!.id;
                  } else if (item.key == 'appName') {
                    item.defaultValue = prefilledApp!.name;
                  } else if (item.key == 'appSourceURL') {
                    item.defaultValue = prefilledApp!.url;
                  }
                }
                return item;
              }).toList();
            }),
            ...(pickedSourceOverride != null
                ? pickedSource!.sourceConfigSettingFormItems.map((e) => [e.clone()])
                : []),
          ],
          onValueChanges: (values, valid, isBuilding) {
            if (!isBuilding) {
              setState(() {
                additionalSettings = values;
                additionalSettingsValid = valid;
              });
            }
          },
        ),
        Column(
          children: [
            gap16,
            CategorySelector(
              alignment: WrapAlignment.start,
              onSelected: (categories) {
                pickedCategories = categories;
              },
            ),
          ],
        ),
      ],
    );

    return Dialog.fullscreen(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: CustomScrollView(
          shrinkWrap: true,
          slivers: <Widget>[
            SliverAppBar.large(
              pinned: true,
              title: Text(t('addApp')),
              leading: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.of(context).pop(),
              ),
              bottom: (pickedSource != null || cameFromSearch)
                  ? PreferredSize(
                      preferredSize: const Size.fromHeight(4),
                      child: AppAddingProgressBar(
                        currentStep: cameFromSearch ? 3 : 2,
                        totalSteps: cameFromSearch ? 3 : 2,
                      ),
                    )
                  : null,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
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
                     if (pickedSource != null)
                       ExpansionTile(
                         initiallyExpanded: false,
                         title: Text(
                           t('advanced'),
                           style: TextStyle(
                             color: Theme.of(context).colorScheme.primary,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(bottom: 16),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.stretch,
                               children: [
                                 if (pickedSource!.appIdInferIsOptional)
                                   GeneratedForm(
                                     key: const Key('inferAppIdIfOptional'),
                                     items: [
                                       [
                                         GeneratedFormSwitch(
                                           'inferAppIdIfOptional',
                                           label: t('tryInferAppIdFromCode'),
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
                                 if (pickedSource!.enforceTrackOnly)
                                   GeneratedForm(
                                     key: Key(
                                       '${pickedSource.runtimeType.toString()}-${pickedSource?.hostChanged.toString()}-${pickedSource?.hostIdenticalDespiteAnyChange.toString()}-appId',
                                     ),
                                     items: [
                                       [
                                         GeneratedFormTextField(
                                           'appId',
                                           label: '${t('appId')} - ${t('custom')}',
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
                                                 return t('invalidInput');
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
                                 gap16,
                                 GeneratedForm(
                                   key: const Key('advancedSettings'),
                                   items: [
                                     [
                                       GeneratedFormTextField(
                                         'apkFilterRegEx',
                                         label: t('filterAPKsByRegEx'),
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
                                             '${t('invertRegEx')} (${t('filterAPKsByRegEx')})',
                                         defaultValue: false,
                                       ),
                                     ],
                                     [
                                       GeneratedFormTextField(
                                         'zippedApkFilterRegEx',
                                         label: t('zippedApkFilterRegEx'),
                                         required: false,
                                         additionalValidators: [
                                           (value) => _regExValidator(value),
                                         ],
                                       ),
                                     ],
                                     [
                                       GeneratedFormSwitch(
                                         'shizukuPretendToBeGooglePlay',
                                         label: t('shizukuPretendToBeGooglePlay'),
                                         defaultValue: false,
                                       ),
                                     ],
                                     [
                                       GeneratedFormSwitch(
                                         'allowInsecure',
                                         label: t('allowInsecure'),
                                         defaultValue: false,
                                       ),
                                     ],
                                   ],
                                   onValueChanges: (values, valid, isBuilding) {
                                     if (!isBuilding) {
                                       setState(() {
                                         additionalSettings.addAll(values);
                                       });
                                     }
                                   },
                                 ),
                               ],
                             ),
                           ),
                         ],
                       ),
                     gap24,


                    M3EFilledButton.icon(
                      onPressed:
                          gettingAppInfo ||
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
                      icon: const Icon(Icons.add),
                      label: Text(t('addAppToCollection')),
                    ),
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
          label: Text(t('importExport')),
          extendedPadding: const EdgeInsets.symmetric(horizontal: 20),
          elevation: 3,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
      ),
    );
  }
}

class SelectionModal extends StatefulWidget {
  const SelectionModal({
    super.key,
    required this.entries,
    this.selectedByDefault = true,
    this.onlyOneSelectionAllowed = false,
    this.titlesAreLinks = true,
    this.title,
    this.deselectThese = const [],
  });

  final String? title;
  final Map<String, List<String>> entries;
  final bool selectedByDefault;
  final List<String> deselectThese;
  final bool onlyOneSelectionAllowed;
  final bool titlesAreLinks;

  @override
  State<SelectionModal> createState() => _SelectionModalState();
}

class _SelectionModalState extends State<SelectionModal> {
  Map<MapEntry<String, List<String>>, bool> entrySelections = {};
  String filterRegex = '';
  final TextEditingController _filterController = TextEditingController();

  @override
  void initState() {
    super.initState();
    for (var entry in widget.entries.entries) {
      entrySelections.putIfAbsent(
        entry,
        () =>
            widget.selectedByDefault &&
            !widget.onlyOneSelectionAllowed &&
            !widget.deselectThese.contains(entry.key),
      );
    }
    if (widget.selectedByDefault && widget.onlyOneSelectionAllowed) {
      selectOnlyOne(widget.entries.entries.first.key);
    }
  }

  @override
  void dispose() {
    _filterController.dispose();
    super.dispose();
  }

  void selectOnlyOne(String url) {
    for (var e in entrySelections.keys) {
      entrySelections[e] = e.key == url;
    }
  }

  void selectAll({bool deselect = false}) {
    for (var e in entrySelections.keys) {
      entrySelections[e] = !deselect;
    }
  }

  @override
  Widget build(BuildContext context) {
    Map<MapEntry<String, List<String>>, bool> filteredEntrySelections = {};
    entrySelections.forEach((key, value) {
      var searchableText = key.value.isEmpty ? key.key : key.value[0];
      try {
        if (filterRegex.isEmpty ||
            RegExp(
              filterRegex,
              caseSensitive: false,
            ).hasMatch(searchableText)) {
          filteredEntrySelections.putIfAbsent(key, () => value);
        }
      } catch (e) {
        if (filterRegex.isEmpty ||
            searchableText.toLowerCase().contains(filterRegex.toLowerCase())) {
          filteredEntrySelections.putIfAbsent(key, () => value);
        }
      }
    });

    Widget getSelectAllButton() {
      if (widget.onlyOneSelectionAllowed) {
        return const SizedBox.shrink();
      }
      var noneSelected = entrySelections.values.every((v) => v == false);
      return noneSelected
          ? TextButton(
              onPressed: () => setState(selectAll),
              child: Text(t('selectAll')),
            )
          : TextButton(
              onPressed: () => setState(() => selectAll(deselect: true)),
              child: Text(t('deselectX', args: [t('all')])),
            );
    }

    return Dialog.fullscreen(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
            tooltip: t('cancel'),
          ),
          title: Text(widget.title ?? t('pick')),
          actions: [
            getSelectAllButton(),
            TextButton(
              onPressed: entrySelections.values.every((v) => v == false)
                  ? null
                  : () {
                      Navigator.of(context).pop(
                        entrySelections.entries
                            .where((entry) => entry.value)
                            .map((e) => e.key.key)
                            .toList(),
                      );
                    },
              child: Text(
                widget.onlyOneSelectionAllowed
                    ? t('pick')
                    : t(
                        'selectX',
                        args: [
                          entrySelections.values
                              .where((b) => b)
                              .length
                              .toString(),
                        ],
                      ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            const AppAddingProgressBar(currentStep: 2, totalSteps: 3),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    t('addApp'),
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: TextFormField(
                controller: _filterController,
                decoration: InputDecoration(
                  labelText: t('filter'),
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: _filterController.text.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            setState(() {
                              _filterController.clear();
                              filterRegex = '';
                            });
                          },
                        )
                      : null,
                  border: const OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    filterRegex = value;
                  });
                },
                validator: regExValidator,
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    if (widget.onlyOneSelectionAllowed)
                      RadioGroup<String>(
                        groupValue: entrySelections.entries
                            .where((e) => e.value)
                            .map((e) => e.key.key)
                            .firstOrNull,
                        onChanged: (value) {
                          if (value != null) {
                            setState(() => selectOnlyOne(value));
                          }
                        },
                        child: Column(
                          children: filteredEntrySelections.keys.map((entry) {
                            Widget urlLink = Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  entry.value.isEmpty
                                      ? entry.key
                                      : entry.value[0],
                                  style: TextStyle(
                                    decoration: widget.titlesAreLinks
                                        ? TextDecoration.underline
                                        : null,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                if (widget.titlesAreLinks)
                                  Text(
                                    Uri.tryParse(entry.key)?.host ?? entry.key,
                                    style: const TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 12,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                              ],
                            );

                            if (widget.titlesAreLinks) {
                              urlLink = GestureDetector(
                                onTap: () => launchUrlString(
                                  entry.key,
                                  mode: LaunchMode.externalApplication,
                                ),
                                child: urlLink,
                              );
                            }

                            Widget? descriptionText = entry.value.length <= 1
                                ? null
                                : Text(
                                    entry.value[1].length > 128
                                        ? '${entry.value[1].substring(0, 128)}...'
                                        : entry.value[1],
                                    style: const TextStyle(fontSize: 12),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  );

                            return RadioListTile<String>(
                              title: urlLink,
                              subtitle: descriptionText,
                              value: entry.key,
                            );
                          }).toList(),
                        ),
                      )
                    else
                      ...filteredEntrySelections.keys.map((entry) {
                        void selectThis(bool? value) {
                          setState(() {
                            value ??= false;
                            if (value! && widget.onlyOneSelectionAllowed) {
                              selectOnlyOne(entry.key);
                            } else {
                              entrySelections[entry] = value!;
                            }
                          });
                        }

                        Widget urlLink = Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              entry.value.isEmpty ? entry.key : entry.value[0],
                              style: TextStyle(
                                decoration: widget.titlesAreLinks
                                    ? TextDecoration.underline
                                    : null,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            if (widget.titlesAreLinks)
                              Text(
                                Uri.tryParse(entry.key)?.host ?? entry.key,
                                style: const TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 12,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                          ],
                        );

                        if (widget.titlesAreLinks) {
                          urlLink = GestureDetector(
                            onTap: () => launchUrlString(
                              entry.key,
                              mode: LaunchMode.externalApplication,
                            ),
                            child: urlLink,
                          );
                        }

                        Widget? descriptionText = entry.value.length <= 1
                            ? null
                            : Text(
                                entry.value[1].length > 128
                                    ? '${entry.value[1].substring(0, 128)}...'
                                    : entry.value[1],
                                style: const TextStyle(fontSize: 12),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              );

                        return CheckboxListTile(
                          title: urlLink,
                          subtitle: descriptionText,
                          value: entrySelections[entry],
                          onChanged: selectThis,
                          controlAffinity: ListTileControlAffinity.leading,
                        );
                      }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    // Here is the end of the dialog
  }
}
