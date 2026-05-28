import 'dart:convert';
import 'dart:io';

import 'package:updatium/services/slang_converter.dart';
import 'package:flutter/material.dart';
import 'package:m3e_buttons/m3e_buttons.dart';
import 'package:flutter/services.dart';
import 'package:updatium/main.dart';
import 'package:updatium/services/githubstars.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:provider/provider.dart';
import 'package:docman/docman.dart';

import 'package:updatium/components/generated_form.dart';
import 'package:updatium/pages/add_app.dart';


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
            title: Text(t('importFromURLList')),
            contentPadding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
            content: Form(
              key: formKey,
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  labelText: t('appURLList'),
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
                        return '${t('line')} ${i + 1}: $e';
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
                child: Text(t('cancel')),
              ),
              TextButton(
                onPressed: () {
                  if (formKey.currentState?.validate() == true) {
                    Navigator.of(ctx).pop(controller.text);
                  }
                },
                child: Text(t('continue')),
              ),
            ],
          );
        },
      ).then((value) {
        controller.dispose();
        if (value != null && value.isNotEmpty) {
          var urls = value.trim().split('\n');
          setState(() {
            importInProgress = true;
          });
          appsProvider
              .addAppsByURL(urls)
              .then((errors) {
                if (!context.mounted) return;
                if (errors.isEmpty) {
                  showMessage(
                    t(
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
                if (!context.mounted) return;
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
            if (!context.mounted) return;
            if (result != null) {
              showMessage(t('exportedTo', args: [result]), context);
            }
          })
          .catchError((e) {
            if (!context.mounted) return;
            showError(e, context);
          });
    }

    runUpdatiumImport() {
      HapticFeedback.selectionClick();
      setState(() {
        importInProgress = true;
      });
      DocMan.pick
          .files(limit: 1)
          .then((result) {
            if (!context.mounted) return;
            if (result.isNotEmpty) {
              String data = File(result.first.path).readAsStringSync();
              try {
                jsonDecode(data);
              } catch (e) {
                throw UpdatiumError(t('invalidInput'));
              }
              appsProvider.import(data).then((value) {
                if (!context.mounted) return;
                var cats = settingsProvider.categories;
                appsProvider.apps.forEach((key, value) {
                  for (var c in value.app.categories ?? []) {
                    if (!cats.containsKey(c)) {
                      cats[c] = generateRandomLightColor().toARGB32();
                    }
                  }
                });
                appsProvider.addMissingCategories(settingsProvider);
                showMessage(
                  '${t('importedX', args: [plural('apps', value.key.length).toLowerCase()])}${value.value ? ' + ${t('settings').toLowerCase()}' : ''}',
                  context,
                );
              });
            } else {
              // User canceled the picker
            }
          })
          .catchError((e) {
                if (!context.mounted) return;
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
      DocMan.pick
          .files(limit: 1)
          .then((result) {
            if (!context.mounted) return;
            if (result.isNotEmpty) {
              urlListImport(
                overrideInitValid: true,
                initValue: RegExp('https?://[^"]+')
                    .allMatches(File(result.first.path).readAsStringSync())
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
                if (!context.mounted) return;
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
                                decoration: InputDecoration(
                                  labelText: arg,
                                  border: const OutlineInputBorder(),
                                ),
                                validator: (v) => v == null || v.isEmpty
                                    ? t('requiredInBrackets')
                                    : null,
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(ctx).pop(null),
                          child: Text(t('cancel')),
                        ),
                        TextButton(
                          onPressed: () {
                            if (formKey.currentState?.validate() == true) {
                              Navigator.of(ctx).pop(
                                controllers.map((k, v) => MapEntry(k, v.text)),
                              );
                            }
                          },
                          child: Text(t('continue')),
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
              if (!context.mounted) return;
              var selectedUrls = await showDialog<List<String>?>(
                context: context,
                builder: (BuildContext ctx) {
                  return SelectionModal(entries: urlsWithDescriptions);
                },
              );
              if (selectedUrls != null) {
                var errors = await appsProvider.addAppsByURL(selectedUrls);
                if (!context.mounted) return;
                if (errors.isEmpty) {
                  showMessage(
                    t(
                      'importedX',
                      args: [plural('apps', selectedUrls.length).toLowerCase()],
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
                if (!context.mounted) return;
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
          SliverAppBar.large(pinned: true, title: Text(t('importExport'))),
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
                                  label: t('pickExportDir'),
                                  hint:
                                      'Choose a directory to export your apps and settings',
                                  excludeSemantics: true,
                                  child: M3EFilledButton.icon(
                                    onPressed:
                                        importInProgress ||
                                            appsProvider.exportInProgress
                                        ? null
                                        : () {
                                            runUpdatiumExport(pickOnly: true);
                                          },
                                    icon: const Icon(Icons.folder_open),
                                    label: Text(
                                      t('pickExportDir'),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              horizontalGap16,
                              Expanded(
                                child: Semantics(
                                  button: true,
                                  label: t('updatiumExport'),
                                  hint: snapshot.data == null
                                      ? 'Set export directory first'
                                      : 'Export all your apps and settings to file',
                                  excludeSemantics: true,
                                  child: M3EFilledButton.icon(
                                    onPressed:
                                        importInProgress ||
                                            appsProvider.exportInProgress ||
                                            snapshot.data == null
                                        ? null
                                        : runUpdatiumExport,
                                    icon: const Icon(Icons.upload_file),
                                    label: Text(
                                      t('updatiumExport'),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          gap8,
                          Row(
                            children: [
                              Expanded(
                                child: Semantics(
                                  button: true,
                                  label: t('updatiumImport'),
                                  hint:
                                      'Import apps and settings from a backup file',
                                  excludeSemantics: true,
                                  child: M3EFilledButton.icon(
                                    onPressed: importInProgress
                                        ? null
                                        : runUpdatiumImport,
                                    icon: const Icon(Icons.download),
                                    label: Text(
                                      t('updatiumImport'),
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
                                gap16,
                                GeneratedForm(
                                  items: [
                                    [
                                      GeneratedFormSwitch(
                                        'autoExportOnChanges',
                                        label: t('autoExportOnChanges'),
                                        defaultValue: settingsProvider
                                            .autoExportOnChanges,
                                      ),
                                    ],
                                    [
                                      GeneratedFormDropdown(
                                        'exportSettings',
                                        [
                                          MapEntry('0', t('none')),
                                          MapEntry('1', t('excludeSecrets')),
                                          MapEntry('2', t('all')),
                                        ],
                                        label: t('includeSettings'),
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
                    Column(
                      children: [
                        gap32,
                        Semantics(
                          button: true,
                          label: t('importFromURLList'),
                          hint:
                              'Import multiple apps by entering their URLs in a list',
                          excludeSemantics: true,
                          child: M3EFilledButton.icon(
                            onPressed: importInProgress ? null : urlListImport,
                            icon: const Icon(Icons.list_alt),
                            label: Text(t('importFromURLList')),
                          ),
                        ),
                        if (!settingsProvider.safeMode) ...[
                          gap8,
                          Semantics(
                            button: true,
                            label: t('importFromURLsInFile'),
                            hint:
                                'Import apps by reading URLs from a text file',
                            excludeSemantics: true,
                            child: M3EFilledButton.icon(
                              onPressed: importInProgress ? null : runUrlImport,
                              icon: const Icon(Icons.link),
                              label: Text(t('importFromURLsInFile')),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ...sourceProvider.massUrlSources
                      .where(
                        (source) =>
                            !(source is GitHubStars &&
                                settingsProvider.safeMode),
                      )
                      .map(
                        (source) => Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            gap8,
                            M3EFilledButton.icon(
                              onPressed: importInProgress
                                  ? null
                                  : () {
                                      runMassSourceImport(source);
                                    },
                              icon: const Icon(Icons.cloud_download),
                              label: Text(t('importX', args: [source.name])),
                            ),
                          ],
                        ),
                      ),
                  const Spacer(),
                  const Divider(height: 32),
                  Text(
                    t('importedAppsIdDisclaimer'),
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
      title: Text(t('importErrors')),
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
            t('followingURLsHadErrors'),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          ...widget.errors.map((e) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                gap16,
                Text(
                  e[0],
                  style: Theme.of(context).textTheme.titleSmall,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  e[1],
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
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
          label: Text(t('ok')),
        ),
      ],
    );
  }
}

