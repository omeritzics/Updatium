import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:m3e_buttons/m3e_buttons.dart';
import 'package:updatium/custom_errors.dart';
import 'package:updatium/pages/add_app.dart';
import 'package:updatium/services/slang_converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:m3e_card_list/m3e_card_list.dart';
import 'package:updatium/services/githubstars.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:provider/provider.dart';
import 'package:docman/docman.dart';
import 'package:updatium/components/generated_form.dart';

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

class _CardAction {
  const _CardAction(this.icon, this.label, this.onPressed);

  final IconData icon;
  final String label;
  final VoidCallback? onPressed; // null = disabled
}

Widget _actionCards(BuildContext context, List<_CardAction> actions) {
  final theme = Theme.of(context);
  return M3ECardColumn(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    onTap: (i) => actions[i].onPressed?.call(),
    children: [
      for (final a in actions)
        Opacity(
          opacity: a.onPressed == null ? 0.38 : 1,
          child: Row(
            children: [
              Icon(a.icon, color: theme.colorScheme.onSurfaceVariant),
              horizontalGap16,
              Expanded(
                child: Text(a.label, style: theme.textTheme.titleMedium),
              ),
            ],
          ),
        ),
    ],
  );
}

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
            title: Text('importFromURLList'.t()),
            contentPadding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
            content: Form(
              key: formKey,
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(labelText: 'appURLList'.t()),
                maxLines: 7,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value != null && value.isNotEmpty) {
                    var lines = value.trim().split('\n');
                    for (int i = 0; i < lines.length; i++) {
                      try {
                        sourceProvider.getSource(lines[i]);
                      } catch (e) {
                        return '${'line'.t()} ${i + 1}: $e';
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
                child: Text('cancel'.t()),
              ),
              M3EFilledButton(
                onPressed: () {
                  if (formKey.currentState?.validate() == true) {
                    Navigator.of(ctx).pop(controller.text);
                  }
                },
                child: Text('continue'.t()),
              ),
            ],
          );
        },
      ).then((value) async {
        controller.dispose();
        if (value != null && value.isNotEmpty) {
          var urls = value.trim().split('\n');
          setState(() {
            importInProgress = true;
          });
          try {
            final errors = await appsProvider.addAppsByURL(urls);
            if (!mounted) return;
            if (errors.isEmpty) {
              showMessage(
                t(
                  'importedX',
                  args: ['apps'.plural(urls.length).toLowerCase()],
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
          } catch (e) {
            if (!mounted) return;
            showError(e, context);
          } finally {
            if (mounted) {
              setState(() {
                importInProgress = false;
              });
            }
          }
        }
      });
    }

    runUpdatiumExport({bool pickOnly = false}) async {
      settingsProvider.selectionClick();
      try {
        final result = await appsProvider.export(
          pickOnly: pickOnly || (await settingsProvider.getExportDir()) == null,
          sp: settingsProvider,
        );
        if (result != null && mounted) {
          showMessage(t('exportedTo', args: [result]), context);
        }
      } catch (e) {
        if (!mounted) return;
        showError(e, context);
      }
    }

    runUpdatiumImport() async {
      HapticFeedback.selectionClick();
      setState(() {
        importInProgress = true;
      });
      try {
        final result = await DocMan.pick.files(limit: 1);
        if (result.isNotEmpty) {
          String data = File(result.first.path).readAsStringSync();
          try {
            jsonDecode(data);
          } catch (e) {
            throw UpdatiumError('invalidInput'.t());
          }
          final value = await appsProvider.import(data);
          if (!mounted) return;
          var cats = settingsProvider.categories;
          appsProvider.apps.forEach((key, valueApp) {
            for (var c in valueApp.app.categories) {
              if (!cats.containsKey(c)) {
                cats[c] = generateRandomLightColor().toARGB32();
              }
            }
          });
          appsProvider.addMissingCategories(settingsProvider);
          showMessage(
            '${t('importedX', args: ['apps'.plural(value.key.length).toLowerCase()])}${value.value ? ' + ${'settings'.t().toLowerCase()}' : ''}',
            context,
          );
        }
      } catch (e) {
        if (!mounted) return;
        showError(e, context);
      } finally {
        if (mounted) {
          setState(() {
            importInProgress = false;
          });
        }
      }
    }

    runUrlImport() async {
      setState(() {
        importInProgress = true;
      });
      try {
        final result = await DocMan.pick.files(limit: 1);
        if (result.isNotEmpty) {
          var path = result.files.single.path;
          if (path == null) return;
          await urlListImport(
            overrideInitValid: true,
            initValue: RegExp('https?://[^"]+')
                .allMatches(File(path).readAsStringSync())
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
      }).catchError((e) {
        if (e is PlatformException || e is MissingPluginException) {
          showError(ObtainiumError(tr('noFilePickerAvailable')), context);
        } else {
          showError(e, context);
        }
      } catch (e) {
        if (!mounted) return;
        showError(e, context);
      } finally {
        if (mounted) {
          setState(() {
            importInProgress = false;
          });
        }
      }
    }

    runMassSourceImport(MassAppUrlSource source) {
      () async {
            final formKey = GlobalKey<FormState>();
            final controllers = {
              for (var arg in source.requiredArgs) arg: TextEditingController(),
            };

            var values =
                await showDialog<Map<String, String>?>(
                  context: context,
                  builder: (BuildContext ctx) {
                    return AlertDialog(
                      title: Text(t('importX', args: [source.name])),
                      content: Form(
                        key: formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: source.requiredArgs.map((arg) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: TextFormField(
                                controller: controllers[arg],
                                decoration: InputDecoration(labelText: arg),
                                validator: (v) => v == null || v.isEmpty
                                    ? 'requiredInBrackets'.t()
                                    : null,
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(ctx).pop(null),
                          child: Text('cancel'.t()),
                        ),
                        M3EFilledButton(
                          onPressed: () {
                            if (formKey.currentState?.validate() == true) {
                              Navigator.of(ctx).pop(
                                controllers.map((k, v) => MapEntry(k, v.text)),
                              );
                            }
                          },
                          child: Text('continue'.t()),
                        ),
                      ],
                    );
                  },
                ).then((_) {
                  for (var controller in controllers.values) {
                    controller.dispose();
                  }
                });
            if (values != null) {
              setState(() {
                importInProgress = true;
              });
              var urlsWithDescriptions = await source.getUrlsWithDescriptions(
                values.values.map((e) => e.toString()).toList(),
              );
              var selectedUrls = await showDialog<List<String>?>(
                context: context,
                builder: (BuildContext ctx) {
                  return SelectionModal(entries: urlsWithDescriptions);
                },
              );
              if (selectedUrls != null) {
                var errors = await appsProvider.addAppsByURL(selectedUrls);
                if (errors.isEmpty) {
                  showMessage(
                    t(
                      'importedX',
                      args: ['apps'.plural(selectedUrls.length).toLowerCase()],
                    ),
                    context,
                  );
                } else {
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
            if (!mounted) return;
            showError(e, context);
          })
          .whenComplete(() {
            if (mounted) {
              setState(() {
                importInProgress = false;
              });
            }
          });
    }

    var sourceStrings = <String, List<String>>{};
    sourceProvider.sources.where((e) => e.canSearch).forEach((s) {
      sourceStrings[s.name] = [s.name];
    });

    final importActions = <_CardAction>[
      _CardAction(
        Icons.list_alt,
        'importFromURLList'.t(),
        importInProgress ? null : () => urlListImport(),
      ),
      if (!settingsProvider.safeMode)
        _CardAction(
          Icons.link,
          'importFromURLsInFile'.t(),
          importInProgress ? null : runUrlImport,
        ),
      ...sourceProvider.massUrlSources
          .where(
            (source) => !(source is GitHubStars && settingsProvider.safeMode),
          )
          .map(
            (source) => _CardAction(
              Icons.star_outline,
              t('importX', args: [source.name]),
              importInProgress ? null : () => runMassSourceImport(source),
            ),
          ),
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar.medium(pinned: true, title: Text('importExport'.t())),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FutureBuilder(
                    future: settingsProvider.getExportDir(),
                    builder: (context, snapshot) {
                      final busy =
                          importInProgress || appsProvider.exportInProgress;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          _actionCards(context, [
                            _CardAction(
                              Icons.folder_open,
                              'pickExportDir'.t(),
                              busy
                                  ? null
                                  : () => runUpdatiumExport(pickOnly: true),
                            ),
                            _CardAction(
                              Icons.save_outlined,
                              'updatiumExport'.t(),
                              busy || snapshot.data == null
                                  ? null
                                  : () => runUpdatiumExport(),
                            ),
                            _CardAction(
                              Icons.restore_outlined,
                              'updatiumImport'.t(),
                              importInProgress ? null : runUpdatiumImport,
                            ),
                          ]),
                          if (snapshot.data != null)
                            Column(
                              children: [
                                gap16,
                                GeneratedForm(
                                  items: [
                                    [
                                      GeneratedFormSwitch(
                                        'autoExportOnChanges',
                                        label: 'autoExportOnChanges'.t(),
                                        defaultValue: settingsProvider
                                            .autoExportOnChanges,
                                      ),
                                    ],
                                    [
                                      GeneratedFormDropdown(
                                        'exportSettings',
                                        [
                                          MapEntry('0', 'none'.t()),
                                          MapEntry('1', 'excludeSecrets'.t()),
                                          MapEntry('2', 'all'.t()),
                                        ],
                                        label: 'includeSettings'.t(),
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
                      children: [gap12, LinearProgressIndicator(), gap12],
                    )
                  else
                    gap32,
                  _actionCards(context, importActions),
                  const Spacer(),
                  const Divider(height: 32),
                  Text(
                    'importedAppsIdDisclaimer'.t(),
                    textAlign: TextAlign.start,
                    style: const TextStyle(fontSize: 12),
                  ),
                  gap8,
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
      title: Text('importErrors'.t()),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            t(
              'importedXOfYApps',
              args: [
                (widget.urlsLength - widget.errors.length).toString(),
                widget.urlsLength.toString(),
              ],
            ),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          gap16,
          Text(
            'followingURLsHadErrors'.t(),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          ...widget.errors.map((e) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 16),
                Text(e[0]),
                Text(e[1], style: const TextStyle(fontStyle: FontStyle.italic)),
              ],
            );
          }),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(null);
          },
          child: Text(tr('ok')),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class SelectionModal extends StatefulWidget {
  SelectionModal({
    super.key,
    required this.entries,
    this.selectedByDefault = true,
    this.onlyOneSelectionAllowed = false,
    this.titlesAreLinks = true,
    this.title,
    this.deselectThese = const [],
  });

  String? title;
  Map<String, List<String>> entries;
  bool selectedByDefault;
  List<String> deselectThese;
  bool onlyOneSelectionAllowed;
  bool titlesAreLinks;

  @override
  State<SelectionModal> createState() => _SelectionModalState();
}

class _SelectionModalState extends State<SelectionModal> {
  Map<MapEntry<String, List<String>>, bool> entrySelections = {};
  String filterRegex = '';
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
    final isTV = context.read<SettingsProvider>().isTV;
    Map<MapEntry<String, List<String>>, bool> filteredEntrySelections = {};
    entrySelections.forEach((key, value) {
      var searchableText = key.value.isEmpty ? key.key : key.value[0];
      if (filterRegex.isEmpty || RegExp(filterRegex).hasMatch(searchableText)) {
        filteredEntrySelections.putIfAbsent(key, () => value);
      }
    });
    if (filterRegex.isNotEmpty && filteredEntrySelections.isEmpty) {
      entrySelections.forEach((key, value) {
        var searchableText = key.value.isEmpty ? key.key : key.value[0];
        if (filterRegex.isEmpty ||
            RegExp(
              filterRegex,
              caseSensitive: false,
            ).hasMatch(searchableText)) {
          filteredEntrySelections.putIfAbsent(key, () => value);
        }
      });
    }
    getSelectAllButton() {
      if (widget.onlyOneSelectionAllowed) {
        return SizedBox.shrink();
      }
      var noneSelected = entrySelections.values.where((v) => v == true).isEmpty;
      return noneSelected
          ? TextButton(
              style: const ButtonStyle(visualDensity: VisualDensity.compact),
              onPressed: () {
                setState(() {
                  selectAll();
                });
              },
              child: Text(tr('selectAll')),
            )
          : TextButton(
              style: const ButtonStyle(visualDensity: VisualDensity.compact),
              onPressed: () {
                setState(() {
                  selectAll(deselect: true);
                });
              },
              child: Text(tr('deselectX', args: [''])),
            );
    }

    return AlertDialog(
      scrollable: true,
      title: Text(widget.title ?? tr('pick')),
      content: Column(
        children: [
          GeneratedForm(
            items: [
              [
                GeneratedFormTextField(
                  'filter',
                  label: tr('filter'),
                  required: false,
                  additionalValidators: [
                    (value) {
                      return regExValidator(value);
                    },
                  ],
                ),
              ],
            ],
            onValueChanges: (value, valid, isBuilding) {
              if (valid && !isBuilding) {
                if (value['filter'] != null) {
                  setState(() {
                    filterRegex = value['filter'];
                  });
                }
              }
            },
          ),
          ...filteredEntrySelections.keys.map((entry) {
            selectThis(bool? value) {
              setState(() {
                value ??= false;
                if (value! && widget.onlyOneSelectionAllowed) {
                  selectOnlyOne(entry.key);
                } else {
                  entrySelections[entry] = value!;
                }
              });
            }

            var urlLink = InkWell(
              onTap: !widget.titlesAreLinks
                  ? null
                  : () {
                      launchUrlString(
                        entry.key,
                        mode: LaunchMode.externalApplication,
                      );
                    },
              child: Column(
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
                    textAlign: TextAlign.start,
                  ),
                  if (widget.titlesAreLinks)
                    Text(
                      Uri.parse(entry.key).host,
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 12,
                      ),
                    ),
                ],
              ),
            );

            var descriptionText = entry.value.length <= 1
                ? const SizedBox.shrink()
                : Text(
                    entry.value[1].length > 128
                        ? '${entry.value[1].substring(0, 128)}...'
                        : entry.value[1],
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 12,
                    ),
                  );

            var selectedEntries = entrySelections.entries
                .where((e) => e.value)
                .toList();

            var singleSelectTile = ListTile(
              title: InkWell(
                onTap: widget.titlesAreLinks
                    ? null
                    : () {
                        selectThis(!(entrySelections[entry] ?? false));
                      },
                child: urlLink,
              ),
              subtitle: entry.value.length <= 1
                  ? null
                  : InkWell(
                      onTap: () {
                        setState(() {
                          selectOnlyOne(entry.key);
                        });
                      },
                      child: descriptionText,
                    ),
              leading: Radio<String>(
                value: entry.key,
                groupValue: selectedEntries.isEmpty
                    ? null
                    : selectedEntries.first.key.key,
                onChanged: (value) {
                  if (isTV) {
                    Navigator.of(context).pop([entry.key]);
                  } else {
                    setState(() {
                      selectOnlyOne(entry.key);
                    });
                  }
                },
              ),
            );

            var multiSelectTile = Row(
              children: [
                Checkbox(
                  value: entrySelections[entry],
                  onChanged: (value) {
                    selectThis(value);
                  },
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 8),
                      InkWell(
                        onTap: widget.titlesAreLinks
                            ? null
                            : () {
                                selectThis(!(entrySelections[entry] ?? false));
                              },
                        child: urlLink,
                      ),
                      entry.value.length <= 1
                          ? const SizedBox.shrink()
                          : InkWell(
                              onTap: () {
                                selectThis(!(entrySelections[entry] ?? false));
                              },
                              child: descriptionText,
                            ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              ],
            );

            return widget.onlyOneSelectionAllowed
                ? singleSelectTile
                : multiSelectTile;
          }),
          if (isTV && !widget.onlyOneSelectionAllowed) ...[
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(tr('cancel')),
                ),
                TextButton(
                  onPressed: entrySelections.values.where((b) => b).isEmpty
                      ? null
                      : () => Navigator.of(context).pop(
                          entrySelections.entries
                              .where((entry) => entry.value)
                              .map((e) => e.key.key)
                              .toList(),
                        ),
                  child: Text(
                    tr(
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
          ],
        ],
      ),
      actions: [
        getSelectAllButton(),
        TextButton(
          autofocus: isTV,
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(tr('cancel')),
        ),
        TextButton(
          onPressed: entrySelections.values.where((b) => b).isEmpty
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
