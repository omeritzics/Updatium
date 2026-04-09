import 'dart:convert';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:updatium/custom_errors.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:provider/provider.dart';
import 'package:file_picker/file_picker.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ImportExportPage extends StatefulWidget {
  const ImportExportPage({super.key});

  @override
  State<ImportExportPage> createState() => _ImportExportPageState();
}

class _ImportExportPageState extends State<ImportExportPage> {
  bool importInProgress = false;

  @override
  Widget build(BuildContext context) {
    SourceProvider sourceProvider = SourceProvider();
    var appsProvider = context.watch<AppsProvider>();
    var settingsProvider = context.watch<SettingsProvider>();

    urlListImport({String? initValue, bool overrideInitValid = false}) {
      final formKey = GlobalKey<FormState>();
      final controller = TextEditingController(text: initValue ?? '');

      showDialog<String?>(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: Text(tr('importFromURLList')),
            content: Form(
              key: formKey,
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  labelText: tr('appURLList'),
                  border: const OutlineInputBorder(),
                ),
                maxLines: 7,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value != null && value.isNotEmpty) {
                    var lines = value.trim().split('\n');
                    for (int i = 0; i < lines.length; i++) {
                      try {
                        sourceProvider.getSource(lines[i]);
                      } catch (e) {
                        return '${tr('line')} ${i + 1}: $e';
                      }
                    }
                  }
                  return null;
                },
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(null),
                child: Text(tr('cancel')),
              ),
              TextButton(
                onPressed: () {
                  if (formKey.currentState?.validate() == true) {
                    Navigator.of(ctx).pop(controller.text);
                  }
                },
                child: Text(tr('continue')),
              ),
            ],
          );
        },
      ).then((value) {
        if (value != null && value.isNotEmpty) {
          var urls = value.trim().split('\n');
          setState(() {
            importInProgress = true;
          });
          appsProvider
              .addAppsByURL(urls)
              .then((errors) {
                if (errors.isEmpty) {
                  showMessage(
                    tr(
                      'importedX',
                      args: [plural('apps', urls.length).toLowerCase()],
                    ),
                    context,
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext ctx) {
                      return ImportErrorDialog(
                        urlsLength: urls.length,
                        errors: errors,
                      );
                    },
                  );
                }
              })
              .catchError((e) {
                showError(e, context);
              })
              .whenComplete(() {
                setState(() {
                  importInProgress = false;
                });
              });
        }
      });
    }

    runUpdatiumExport({bool pickOnly = false}) async {
      HapticFeedback.selectionClick();
      appsProvider
          .export(
            pickOnly:
                pickOnly || (await settingsProvider.getExportDir()) == null,
            sp: settingsProvider,
          )
          .then((String? result) {
            if (result != null) {
              showMessage(tr('exportedTo', args: [result]), context);
            }
          })
          .catchError((e) {
            showError(e, context);
          });
    }

    runUpdatiumImport() {
      HapticFeedback.selectionClick();
      setState(() {
        importInProgress = true;
      });
      FilePicker.platform
          .pickFiles()
          .then((result) {
            if (result != null) {
              String data = File(result.files.single.path!).readAsStringSync();
              try {
                jsonDecode(data);
              } catch (e) {
                throw UpdatiumError(tr('invalidInput'));
              }
              appsProvider.import(data).then((value) {
                var cats = settingsProvider.categories;
                appsProvider.apps.forEach((key, value) {
                  for (var c in value.app.categories) {
                    if (!cats.containsKey(c)) {
                      cats[c] = generateRandomLightColor().value;
                    }
                  }
                });
                appsProvider.addMissingCategories(settingsProvider);
                showMessage(
                  '${tr('importedX', args: [plural('apps', value.key.length).toLowerCase()])}${value.value ? ' + ${tr('settings').toLowerCase()}' : ''}',
                  context,
                );
              });
            } else {
              // User canceled the picker
            }
          })
          .catchError((e) {
            showError(e, context);
          })
          .whenComplete(() {
            setState(() {
              importInProgress = false;
            });
          });
    }

    runUrlImport() {
      setState(() {
        importInProgress = true;
      });
      FilePicker.platform
          .pickFiles()
          .then((result) {
            if (result != null) {
              urlListImport(
                overrideInitValid: true,
                initValue: RegExp('https?://[^"]+')
                    .allMatches(
                      File(result.files.single.path!).readAsStringSync(),
                    )
                    .map((e) => e.input.substring(e.start, e.end))
                    .toSet()
                    .toList()
                    .where((url) {
                      try {
                        sourceProvider.getSource(url);
                        return true;
                      } catch (e) {
                        return false;
                      }
                    })
                    .join('\n'),
              );
            }
          })
          .catchError((e) {
            showError(e, context);
          })
          .whenComplete(() {
            setState(() {
              importInProgress = false;
            });
          });
    }

    runMassSourceImport(MassAppUrlSource source) {
      () async {
        final formKey = GlobalKey<FormState>();
        final controllers = {
          for (var arg in source.requiredArgs) arg: TextEditingController()
        };

        var values = await showDialog<Map<String, String>?>(
          context: context,
          builder: (BuildContext ctx) {
            return AlertDialog(
              title: Text(tr('importX', args: [source.name])),
              content: Form(
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: source.requiredArgs.map((arg) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: TextFormField(
                        controller: controllers[arg],
                        decoration: InputDecoration(
                          labelText: arg,
                          border: const OutlineInputBorder(),
                        ),
                        validator: (v) => v == null || v.isEmpty ? tr('requiredInBrackets') : null,
                      ),
                    );
                  }).toList(),
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(ctx).pop(null),
                  child: Text(tr('cancel')),
                ),
                TextButton(
                  onPressed: () {
                    if (formKey.currentState?.validate() == true) {
                      Navigator.of(ctx).pop(controllers.map((k, v) => MapEntry(k, v.text)));
                    }
                  },
                  child: Text(tr('continue')),
                ),
              ],
            );
          },
        );
            if (values != null) {
              setState(() {
                importInProgress = true;
              });
              var urlsWithDescriptions = await source.getUrlsWithDescriptions(
                values.values.map((e) => e.toString()).toList(),
              );
              var selectedUrls =
                  // ignore: use_build_context_synchronously
                  await showDialog<List<String>?>(
                    context: context,
                    builder: (BuildContext ctx) {
                      return SelectionModal(entries: urlsWithDescriptions);
                    },
                  );
              if (selectedUrls != null) {
                var errors = await appsProvider.addAppsByURL(selectedUrls);
                if (errors.isEmpty) {
                  // ignore: use_build_context_synchronously
                  showMessage(
                    tr(
                      'importedX',
                      args: [plural('apps', selectedUrls.length).toLowerCase()],
                    ),
                    context,
                  );
                } else {
                  // ignore: use_build_context_synchronously
                  showDialog(
                    context: context,
                    builder: (BuildContext ctx) {
                      return ImportErrorDialog(
                        urlsLength: selectedUrls.length,
                        errors: errors,
                      );
                    },
                  );
                }
              }
            }
          }()
          .catchError((e) {
            showError(e, context);
          })
          .whenComplete(() {
            setState(() {
              importInProgress = false;
            });
          });
    }

    var sourceStrings = <String, List<String>>{};
    sourceProvider.sources.where((e) => e.canSearch).forEach((s) {
      sourceStrings[s.name] = [s.name];
    });

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.height * 0.15,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 20,
              ),
              title: Text(
                tr('importExport'),
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyMedium!.color,
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FutureBuilder(
                    future: settingsProvider.getExportDir(),
                    builder: (context, snapshot) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Semantics(
                                  button: true,
                                  label: tr('pickExportDir'),
                                  hint:
                                      'Choose a directory to export your apps and settings',
                                  excludeSemantics: true,
                                  child: FilledButton.icon(
                                    onPressed:
                                        importInProgress ||
                                            appsProvider.exportInProgress
                                        ? null
                                        : () {
                                            runUpdatiumExport(pickOnly: true);
                                          },
                                    icon: const Icon(Icons.folder_open),
                                    label: Text(
                                      tr('pickExportDir'),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Semantics(
                                  button: true,
                                  label: tr('updatiumExport'),
                                  hint: snapshot.data == null
                                      ? 'Set export directory first'
                                      : 'Export all your apps and settings to file',
                                  excludeSemantics: true,
                                  child: FilledButton.icon(
                                    onPressed:
                                        importInProgress ||
                                            appsProvider.exportInProgress ||
                                            snapshot.data == null
                                        ? null
                                        : runUpdatiumExport,
                                    icon: const Icon(Icons.upload_file),
                                    label: Text(
                                      tr('updatiumExport'),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Expanded(
                                child: Semantics(
                                  button: true,
                                  label: tr('updatiumImport'),
                                  hint:
                                      'Import apps and settings from a backup file',
                                  excludeSemantics: true,
                                  child: FilledButton.icon(
                                    onPressed: importInProgress
                                        ? null
                                        : runUpdatiumImport,
                                    icon: const Icon(Icons.download),
                                    label: Text(
                                      tr('updatiumImport'),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          if (snapshot.data != null)
                            Column(
                              children: [
                                const SizedBox(height: 16),
                                GeneratedForm(
                                  items: [
                                    [
                                      GeneratedFormSwitch(
                                        'autoExportOnChanges',
                                        label: tr('autoExportOnChanges'),
                                        defaultValue: settingsProvider
                                            .autoExportOnChanges,
                                      ),
                                    ],
                                    [
                                      GeneratedFormDropdown(
                                        'exportSettings',
                                        [
                                          MapEntry('0', tr('none')),
                                          MapEntry('1', tr('excludeSecrets')),
                                          MapEntry('2', tr('all')),
                                        ],
                                        label: tr('includeSettings'),
                                        defaultValue: settingsProvider
                                            .exportSettings
                                            .toString(),
                                      ),
                                    ],
                                  ],
                                  onValueChanges: (value, valid, isBuilding) {
                                    if (valid && !isBuilding) {
                                      if (value['autoExportOnChanges'] !=
                                          null) {
                                        settingsProvider.autoExportOnChanges =
                                            value['autoExportOnChanges'] ==
                                            true;
                                      }
                                      if (value['exportSettings'] != null) {
                                        settingsProvider.exportSettings =
                                            int.parse(value['exportSettings']);
                                      }
                                    }
                                  },
                                ),
                              ],
                            ),
                        ],
                      );
                    },
                  ),
                  if (importInProgress || appsProvider.exportInProgress)
                    const Column(
                      children: [
                        SizedBox(height: 14),
                        LinearProgressIndicator(),
                        SizedBox(height: 14),
                      ],
                    )
                  else
                    Column(
                      children: [
                        SizedBox(height: 32),
                        Semantics(
                          button: true,
                          label: tr('importFromURLList'),
                          hint:
                              'Import multiple apps by entering their URLs in a list',
                          excludeSemantics: true,
                          child: FilledButton.icon(
                            onPressed: importInProgress ? null : urlListImport,
                            icon: const Icon(Icons.list_alt),
                            label: Text(tr('importFromURLList')),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Semantics(
                          button: true,
                          label: tr('importFromURLsInFile'),
                          hint: 'Import apps by reading URLs from a text file',
                          excludeSemantics: true,
                          child: FilledButton.icon(
                            onPressed: importInProgress ? null : runUrlImport,
                            icon: const Icon(Icons.link),
                            label: Text(tr('importFromURLsInFile')),
                          ),
                        ),
                      ],
                    ),
                  ...sourceProvider.massUrlSources.map(
                    (source) => Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 8),
                        FilledButton.icon(
                          onPressed: importInProgress
                              ? null
                              : () {
                                  runMassSourceImport(source);
                                },
                          icon: const Icon(Icons.cloud_download),
                          label: Text(tr('importX', args: [source.name])),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Divider(height: 32),
                  Text(
                    tr('importedAppsIdDisclaimer'),
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ImportErrorDialog extends StatefulWidget {
  const ImportErrorDialog({
    super.key,
    required this.urlsLength,
    required this.errors,
  });

  final int urlsLength;
  final List<List<String>> errors;

  @override
  State<ImportErrorDialog> createState() => _ImportErrorDialogState();
}

class _ImportErrorDialogState extends State<ImportErrorDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: Text(tr('importErrors')),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            tr(
              'importedXOfYApps',
              args: [
                (widget.urlsLength - widget.errors.length).toString(),
                widget.urlsLength.toString(),
              ],
            ),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 16),
          Text(
            tr('followingURLsHadErrors'),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          ...widget.errors.map((e) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 16),
                Text(
                  e[0],
                  style: Theme.of(context).textTheme.titleSmall,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  e[1],
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontStyle: FontStyle.italic,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            );
          }),
        ],
      ),
      actions: [
        TextButton.icon(
          onPressed: () {
            Navigator.of(context).pop(null);
          },
          icon: const Icon(Icons.close),
          label: Text(tr('ok')),
        ),
      ],
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
            RegExp(filterRegex, caseSensitive: false).hasMatch(searchableText)) {
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
              child: Text(tr('selectAll')),
            )
          : TextButton(
              onPressed: () => setState(() => selectAll(deselect: true)),
              child: Text(tr('deselectX', args: [tr('all')])),
            );
    }

    return AlertDialog(
      scrollable: true,
      title: Text(widget.title ?? tr('pick')),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: TextFormField(
              controller: _filterController,
              decoration: InputDecoration(
                labelText: tr('filter'),
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
                    decoration: widget.titlesAreLinks ? TextDecoration.underline : null,
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
                onTap: () => launchUrlString(entry.key, mode: LaunchMode.externalApplication),
                child: urlLink,
              );
            }

            Widget? descriptionText = entry.value.length <= 1
                ? null
                : Text(
                    entry.value[1].length > 128
                        ? '${entry.value[1].substring(0, 128)}...'
                        : entry.value[1],
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 12,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  );

            if (widget.onlyOneSelectionAllowed) {
              return RadioListTile<String>(
                title: urlLink,
                subtitle: descriptionText,
                value: entry.key,
                groupValue: entrySelections.entries
                    .where((e) => e.value)
                    .map((e) => e.key.key)
                    .firstOrNull,
                onChanged: (value) => setState(() => selectOnlyOne(entry.key)),
              );
            } else {
              return CheckboxListTile(
                title: urlLink,
                subtitle: descriptionText,
                value: entrySelections[entry],
                onChanged: selectThis,
                controlAffinity: ListTileControlAffinity.leading,
              );
            }
          }),
        ],
      ),
      actions: [
        getSelectAllButton(),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(tr('cancel')),
        ),
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
                ? tr('pick')
                : tr(
                    'selectX',
                    args: [
                      entrySelections.values.where((b) => b).length.toString(),
                    ],
                  ),
          ),
        ),
      ],
    );
  }
}
