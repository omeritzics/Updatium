import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:updatium/custom_errors.dart';
import 'package:updatium/pages/add_app.dart';
import 'package:updatium/providers/logs_provider.dart';
import 'package:updatium/services/slang_converter.dart';
import 'package:flutter/material.dart';
import 'package:m3e_buttons/m3e_buttons.dart';
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

class ImportFromURLListPage extends StatefulWidget {
  const ImportFromURLListPage({super.key});

  @override
  State<ImportFromURLListPage> createState() => _ImportFromURLListPageState();
}

class _ImportFromURLListPageState extends State<ImportFromURLListPage> {
  late ImportFromURLListController _controller;

  @override
  void initState() {
    super.initState();
    final sp = context.read<SourceProvider>();
    _controller = ImportFromURLListController(sourceProvider: sp);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _import() {
    final urls = _controller.getURLs();
    if (urls.isEmpty) return;
    final appsProvider = context.read<AppsProvider>();
    _controller.setImporting(true);
    appsProvider
        .addAppsByURL(urls)
        .then((errors) {
          if (!mounted) return;
          _controller.setImporting(false);
          if (errors.isEmpty) {
            showMessage(
              tr(
                'importedX',
                args: [plural('apps', urls.length).toLowerCase()],
              ),
              context,
            );
            Navigator.of(context).pop();
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
          if (mounted) {
            _controller.setImporting(false);
            showError(e, context);
          }
        });
  }

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
              TextButton(
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
            for (var c in valueApp.app.categories ?? []) {
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
          await urlListImport(
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
                        TextButton(
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

    Widget actionTile({
      required IconData icon,
      required String label,
      Widget? trailing,
      required VoidCallback? onTap,
    }) {
      return ListTile(
        leading: Icon(icon),
        title: Text(label),
        trailing: trailing,
        onTap: onTap,
        enabled: onTap != null,
      );
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar.large(pinned: true, title: Text('importExport'.t())),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 12,
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
                                  label: 'pickExportDir'.t(),
                                  hint:
                                      'Choose a directory to export your apps and settings',
                                  excludeSemantics: true,
                                  child: M3EFilledButton.tonalIcon(
                                    onPressed:
                                        importInProgress ||
                                            appsProvider.exportInProgress
                                        ? null
                                        : () {
                                            runUpdatiumExport(pickOnly: true);
                                          },
                                    icon: const Icon(Icons.folder_open),
                                    label: Text(
                                      'pickExportDir'.t(),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              horizontalGap16,
                              Expanded(
                                child: Semantics(
                                  button: true,
                                  label: 'updatiumExport'.t(),
                                  hint: snapshot.data == null
                                      ? 'Set export directory first'
                                      : 'Export all your apps and settings to file',
                                  excludeSemantics: true,
                                  child: M3EFilledButton.tonalIcon(
                                    onPressed:
                                        importInProgress ||
                                            appsProvider.exportInProgress ||
                                            snapshot.data == null
                                        ? null
                                        : runUpdatiumExport,
                                    icon: const Icon(Icons.upload_file),
                                    label: Text(
                                      'updatiumExport'.t(),
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
                                  label: 'updatiumImport'.t(),
                                  hint:
                                      'Import apps and settings from a backup file',
                                  excludeSemantics: true,
                                  child: M3EFilledButton.tonalIcon(
                                    onPressed: importInProgress
                                        ? null
                                        : runUpdatiumImport,
                                    icon: const Icon(Icons.download),
                                    label: Text(
                                      'updatiumImport'.t(),
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
                                        label: 'autoExportOnChanges'.t(),
                                        value: settingsProvider
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
                                        value: settingsProvider
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
                          label: 'importFromURLList'.t(),
                          hint:
                              'Import multiple apps by entering their URLs in a list',
                          excludeSemantics: true,
                          child: M3EFilledButton.tonalIcon(
                            onPressed: importInProgress ? null : urlListImport,
                            icon: const Icon(Icons.list_alt),
                            label: Text('importFromURLList'.t()),
                          ),
                        ),
                        if (!settingsProvider.safeMode) ...[
                          gap8,
                          Semantics(
                            button: true,
                            label: 'importFromURLsInFile'.t(),
                            hint:
                                'Import apps by reading URLs from a text file',
                            excludeSemantics: true,
                            child: M3EFilledButton.tonalIcon(
                              onPressed: importInProgress ? null : runUrlImport,
                              icon: const Icon(Icons.link),
                              label: Text('importFromURLsInFile'.t()),
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
                            M3EFilledButton.tonalIcon(
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
                    'importedAppsIdDisclaimer'.t(),
                    textAlign: TextAlign.start,
                    style: const TextStyle(fontSize: 12),
                  ),
                  gap8,
                ],
              ),
              ...context.read<SourceProvider>().massUrlSources.map(
                (source) => ActionListTile(
                  icon: Icons.cloud_download_outlined,
                  label: t('importX', args: [source.name]),
                  onTap: importInProgress
                      ? null
                      : () => runMassSourceImport(source),
                ),
              ),
            ];
            return <Widget>[
              for (var i = 0; i < tiles.length; i++)
                ConnectedCard(
                  isFirst: i == 0,
                  isLast: i == tiles.length - 1,
                  child: tiles[i],
                ),
            ];
          }(),
        ),
      ],
    );
  }
}

/// The app-export controls (export dir picker, export action, auto-export and
/// settings-inclusion options). Embedded in the Settings page.
class ExportSection extends StatefulWidget {
  const ExportSection({super.key});

  @override
  State<ExportSection> createState() => _ExportSectionState();
}

class _ExportSectionState extends State<ExportSection> {
  Future<Uri?>? _exportDirFuture;
  String? _lastExportDirKey;

  @override
  Widget build(BuildContext context) {
    final appsProvider = context.read<AppsProvider>();
    final settingsProvider = context.watch<SettingsProvider>();

    final exportDirKey = settingsProvider.prefs?.getString('exportDir');
    if (_exportDirFuture == null || exportDirKey != _lastExportDirKey) {
      _lastExportDirKey = exportDirKey;
      _exportDirFuture = settingsProvider.getExportDir();
    }

    Future<void> runUpdatiumExport({bool pickOnly = false}) async {
      settingsProvider.selectionClick();
      unawaited(
        appsProvider
            .export(
              pickOnly:
                  pickOnly || (await settingsProvider.getExportDir()) == null,
              sp: settingsProvider,
            )
            .then((String? result) {
              if (result != null) {
                if (!context.mounted) return;
                showMessage(t('exportedTo', args: [result]), context);
              }
            })
            .catchError((e) {
              if (!context.mounted) return;
              showError(e, context);
            }),
      );
    }

    return FutureBuilder(
      future: _exportDirFuture,
      builder: (context, snapshot) {
        final items = <Widget>[
          ConnectedCard(
            isFirst: true,
            isLast: false,
            child: ActionListTile(
              icon: Icons.folder_open_outlined,
              label: t('pickExportDir'),
              trailing: snapshot.data != null
                  ? Icon(
                      Icons.check_circle,
                      color: Theme.of(context).colorScheme.primary,
                    )
                  : null,
              onTap: () => runUpdatiumExport(pickOnly: true),
            ),
          ),
          ConnectedCard(
            isFirst: false,
            isLast: snapshot.data == null,
            child: ActionListTile(
              icon: Icons.upload_outlined,
              label: t('updatiumExport'),
              onTap: snapshot.data == null ? null : runUpdatiumExport,
            ),
          ),
        ];
        if (snapshot.data != null) {
          items.addAll([
            ConnectedCard(
              isFirst: false,
              isLast: false,
              child: ToggleTile(
                label: t('autoExportOnChanges'),
                value: settingsProvider.autoExportOnChanges,
                onChanged: (value) =>
                    settingsProvider.autoExportOnChanges = value,
              ),
            ),
            ConnectedCard(
              isFirst: false,
              isLast: true,
              child: DropdownMenu<String>(
                expandedInsets: EdgeInsets.zero,
                label: Text(t('includeSettings')),
                initialSelection:
                    settingsProvider.exportSettings.toString(),
                dropdownMenuEntries: [
                  DropdownMenuEntry(
                      value: '0', label: t('none')),
                  DropdownMenuEntry(
                      value: '1', label: t('excludeSecrets')),
                  DropdownMenuEntry(
                      value: '2', label: t('all')),
                ],
                onSelected: (value) {
                  if (value != null) {
                    settingsProvider.exportSettings =
                        int.tryParse(value) ?? 1;
                  }
                },
              ),
            ),
          ]);
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 3,
          children: items,
        );
      },
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
          label: Text('ok'.t()),
        ),
      ],
    );
  }
}

void _showImportError(dynamic e, BuildContext context) {
  if (e is PlatformException || e is MissingPluginException) {
    showError(UpdatiumError(t('noFilePickerAvailable')), context);
  } else {
    showError(e, context);
  }
}

class ImportFromURLListController extends ChangeNotifier {
  final TextEditingController urlController = TextEditingController();
  bool isImporting = false;

  final SourceProvider sourceProvider;

  ImportFromURLListController({SourceProvider? sourceProvider})
    : sourceProvider = sourceProvider ?? SourceProvider();

  void showImportError(dynamic e, BuildContext context) =>
      _showImportError(e, context);

  Future<void> importFromFile(BuildContext context) async {
    try {
      final result = await FilePicker.pickFiles();
      if (result != null && result.files.isNotEmpty) {
        final path = result.files.single.path;
        if (path == null) return;
        final urls = RegExp(r'https?://[^\s"]+')
            .allMatches(await File(path).readAsString())
            .map((e) => e.input.substring(e.start, e.end))
            .toSet()
            .toList()
            .where((url) {
              try {
                sourceProvider.getSource(url);
                return true;
              } catch (e) {
                unawaited(
                  LogsProvider().add(
                    'URL parse error in filter: $e',
                    level: LogLevel.error,
                  ),
                );
                return false;
              }
            })
            .join('\n');
        urlController.text = urls;
        notifyListeners();
      }
    } catch (e) {
      if (context.mounted) {
        showImportError(e, context);
      }
    }
  }

  String? validate(String? value) {
    if (value != null && value.isNotEmpty) {
      final lines = value.trim().split('\n');
      for (int i = 0; i < lines.length; i++) {
        try {
          sourceProvider.getSource(lines[i]);
        } catch (e) {
          return '${t('line')} ${i + 1}: $e';
        }
      }
    }
    return null;
  }

  List<String> getURLs() {
    return urlController.text
        .trim()
        .split('\n')
        .where((l) => l.isNotEmpty)
        .toList();
  }

  void setImporting(bool v) {
    isImporting = v;
    notifyListeners();
  }

  @override
  void dispose() {
    urlController.dispose();
    super.dispose();
  }
}
