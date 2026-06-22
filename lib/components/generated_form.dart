import 'dart:math';

import 'package:flutter/services.dart';
import 'package:hsluv/hsluv.dart';
import 'package:updatium/services/slang_converter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/components/category_chip.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

abstract class GeneratedFormItem {
  late String key;
  late String label;
  late List<Widget> belowWidgets;
  late dynamic defaultValue;
  List<dynamic> additionalValidators;
  dynamic ensureType(dynamic val);
  GeneratedFormItem clone();

  GeneratedFormItem(
    this.key, {
    this.label = 'Input',
    this.belowWidgets = const [],
    this.defaultValue,
    this.additionalValidators = const [],
  });
}

class GeneratedFormTextField extends GeneratedFormItem {
  late bool required;
  late int max;
  late String? hint;
  late bool password;
  late TextInputType? textInputType;
  late List<String>? autoCompleteOptions;

  GeneratedFormTextField(
    super.key, {
    super.label,
    super.belowWidgets,
    String super.defaultValue = '',
    List<String? Function(String? value)> super.additionalValidators = const [],
    this.required = true,
    this.max = 1,
    this.hint,
    this.password = false,
    this.textInputType,
    this.autoCompleteOptions,
  });

  @override
  String ensureType(val) {
    return val.toString();
  }

  @override
  GeneratedFormTextField clone() {
    return GeneratedFormTextField(
      key,
      label: label,
      belowWidgets: belowWidgets,
      defaultValue: defaultValue,
      additionalValidators: List.from(additionalValidators),
      required: required,
      max: max,
      hint: hint,
      password: password,
      textInputType: textInputType,
    );
  }
}

class GeneratedFormDropdown extends GeneratedFormItem {
  late List<MapEntry<String, String>>? opts;
  List<String>? disabledOptKeys;
  late bool required;
  late int max;

  GeneratedFormDropdown(
    super.key,
    this.opts, {
    super.label,
    super.belowWidgets,
    String super.defaultValue = '',
    this.disabledOptKeys,
    this.required = true,
    this.max = 1000,
    List<String? Function(String? value)> super.additionalValidators = const [],
  });

  @override
  String ensureType(val) {
    return val.toString();
  }

  @override
  GeneratedFormDropdown clone() {
    return GeneratedFormDropdown(
      key,
      opts?.map((e) => MapEntry(e.key, e.value)).toList(),
      label: label,
      belowWidgets: belowWidgets,
      defaultValue: defaultValue,
      disabledOptKeys: disabledOptKeys != null
          ? List.from(disabledOptKeys!)
          : null,
      required: required,
      max: max,
      additionalValidators: List.from(additionalValidators),
    );
  }
}

class GeneratedFormSwitch extends GeneratedFormItem {
  bool disabled = false;

  GeneratedFormSwitch(
    super.key, {
    super.label,
    super.belowWidgets,
    bool super.defaultValue = false,
    bool disabled = false,
    List<String? Function(bool value)> super.additionalValidators = const [],
  });

  @override
  bool ensureType(val) {
    return val == true || val == 'true';
  }

  @override
  GeneratedFormSwitch clone() {
    return GeneratedFormSwitch(
      key,
      label: label,
      belowWidgets: belowWidgets,
      defaultValue: defaultValue,
      disabled: false,
      additionalValidators: List.from(additionalValidators),
    );
  }
}

class GeneratedFormTagInput extends GeneratedFormItem {
  late MapEntry<String, String>? deleteConfirmationMessage;
  late bool singleSelect;
  late WrapAlignment alignment;
  late String emptyMessage;
  late bool showLabelWhenNotEmpty;
  GeneratedFormTagInput(
    super.key, {
    super.label,
    super.belowWidgets,
    Map<String, MapEntry<int, bool>> super.defaultValue = const {},
    List<String? Function(Map<String, MapEntry<int, bool>> value)>
        super.additionalValidators =
        const [],
    this.deleteConfirmationMessage,
    this.singleSelect = false,
    this.alignment = WrapAlignment.start,
    this.emptyMessage = 'Input',
    this.showLabelWhenNotEmpty = true,
  });

  @override
  Map<String, MapEntry<int, bool>> ensureType(val) {
    return val is Map<String, MapEntry<int, bool>> ? val : {};
  }

  @override
  GeneratedFormTagInput clone() {
    return GeneratedFormTagInput(
      key,
      label: label,
      belowWidgets: belowWidgets,
      defaultValue: defaultValue,
      additionalValidators: List.from(additionalValidators),
      deleteConfirmationMessage: deleteConfirmationMessage,
      singleSelect: singleSelect,
      alignment: alignment,
      emptyMessage: emptyMessage,
      showLabelWhenNotEmpty: showLabelWhenNotEmpty,
    );
  }
}

typedef OnValueChanges =
    void Function(Map<String, dynamic> values, bool valid, bool isBuilding);

class GeneratedForm extends StatefulWidget {
  const GeneratedForm({
    super.key,
    required this.items,
    required this.onValueChanges,
  });

  final List<List<GeneratedFormItem>> items;
  final OnValueChanges onValueChanges;

  @override
  State<GeneratedForm> createState() => _GeneratedFormState();
}

List<List<GeneratedFormItem>> cloneFormItems(
  List<List<GeneratedFormItem>> items,
) {
  List<List<GeneratedFormItem>> clonedItems = [];
  for (var row in items) {
    List<GeneratedFormItem> clonedRow = [];
    for (var it in row) {
      clonedRow.add(it.clone());
    }
    clonedItems.add(clonedRow);
  }
  return clonedItems;
}

class GeneratedFormSubForm extends GeneratedFormItem {
  final List<List<GeneratedFormItem>> items;

  GeneratedFormSubForm(
    super.key,
    this.items, {
    super.label,
    super.belowWidgets,
    super.defaultValue = const [],
  });

  @override
  ensureType(val) {
    return val; // Not easy to validate List<Map<String, dynamic>>
  }

  @override
  GeneratedFormSubForm clone() {
    return GeneratedFormSubForm(
      key,
      cloneFormItems(items),
      label: label,
      belowWidgets: belowWidgets,
      defaultValue: defaultValue,
    );
  }
}

// Generates a color in the HSLuv (Pastel) color space
// https://pub.dev/documentation/hsluv/latest/hsluv/Hsluv/hpluvToRgb.html
Color generateRandomLightColor() {
  final randomSeed = Random().nextInt(120);
  // https://en.wikipedia.org/wiki/Golden_angle
  final goldenAngle = 180 * (3 - sqrt(5));
  // Generate next golden angle hue
  final double hue = randomSeed * goldenAngle;
  // Map from HPLuv color space to RGB, use constant saturation=100, lightness=70
  final List<double> rgbValuesDbl = Hsluv.hpluvToRgb([hue, 100, 70]);
  // Map RBG values from 0-1 to 0-255:
  final List<int> rgbValues = rgbValuesDbl
      .map((rgb) => (rgb * 255).toInt())
      .toList();
  return Color.fromARGB(255, rgbValues[0], rgbValues[1], rgbValues[2]);
}

int generateRandomNumber(
  int seed1, {
  int seed2 = 0,
  int seed3 = 0,
  max = 10000,
}) {
  int combinedSeed = seed1.hashCode ^ seed2.hashCode ^ seed3.hashCode;
  Random random = Random(combinedSeed);
  int randomNumber = random.nextInt(max);
  return randomNumber;
}

bool validateTextField(TextFormField tf) =>
    (tf.key as GlobalKey<FormFieldState>).currentState?.isValid == true;

class _TVTextFieldFocus extends StatefulWidget {
  final Widget child;
  final FocusNode textFocusNode;

  const _TVTextFieldFocus({required this.child, required this.textFocusNode});

  @override
  State<_TVTextFieldFocus> createState() => _TVTextFieldFocusState();
}

class _TVTextFieldFocusState extends State<_TVTextFieldFocus> {
  final FocusNode _outerFocus = FocusNode();
  bool _activated = false;

  @override
  void initState() {
    super.initState();
    widget.textFocusNode.addListener(_onTextFocusChange);
  }

  void _onTextFocusChange() {
    if (!widget.textFocusNode.hasFocus && _activated) {
      setState(() => _activated = false);
      _outerFocus.requestFocus();
    }
  }

  @override
  void dispose() {
    widget.textFocusNode.removeListener(_onTextFocusChange);
    _outerFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: _outerFocus,
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent &&
            (event.logicalKey == LogicalKeyboardKey.select ||
                event.logicalKey == LogicalKeyboardKey.enter)) {
          setState(() => _activated = true);
          WidgetsBinding.instance.addPostFrameCallback((_) {
            widget.textFocusNode.requestFocus();
          });
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: ListenableBuilder(
        listenable: _outerFocus,
        builder: (context, child) => Container(
          decoration: _outerFocus.hasFocus && !_activated
              ? BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(4),
                )
              : null,
          child: ExcludeFocus(excluding: !_activated, child: widget.child),
        ),
      ),
    );
  }
}

class _GeneratedFormState extends State<GeneratedForm> {
  final _formKey = GlobalKey<FormState>();
  Map<String, dynamic> values = {};
  List<List<Widget>> formInputs = [];
  List<List<Widget>> rows = [];
  String? initKey;
  int forceUpdateKeyCount = 0;
  final Map<String, TextEditingController> _controllers = {};
  final Map<String, GlobalKey<FormFieldState>> _formKeys = {};
  bool _isDisposed = false;

  void someValueChanged({bool isBuilding = false, bool forceInvalid = false}) {
    Map<String, dynamic> returnValues = values;
    var valid = true;
    for (int r = 0; r < formInputs.length; r++) {
      for (int i = 0; i < formInputs[r].length; i++) {
        var input = formInputs[r][i];
        if (input is TextFormField) {
          valid = valid && validateTextField(input);
        }
      }
    }
    if (forceInvalid) {
      valid = false;
    }
    widget.onValueChanges(returnValues, valid, isBuilding);
  }

  void initForm() {
    if (_isDisposed) return;
    initKey = widget.key.toString();
    for (var controller in _controllers.values) {
      controller.dispose();
    }
    _controllers.clear();
    _formKeys.clear();
    values.clear();
    for (var row in widget.items) {
      for (var e in row) {
        if (e is GeneratedFormSubForm) {
          var subformValues = <Map<String, dynamic>>[];
          var defaults = getDefaultValuesFromFormItems(e.items);
          if (e.defaultValue != null && e.defaultValue is List) {
            for (var v in (e.defaultValue as List)) {
              if (v is Map<String, dynamic>) {
                var fullDefaults = Map<String, dynamic>.from(defaults);
                fullDefaults.addAll(v);
                subformValues.add(fullDefaults);
              }
            }
          }
          values[e.key] = subformValues;
        } else {
          values[e.key] = e.defaultValue;
          if (e is GeneratedFormTextField) {
            _controllers[e.key] = TextEditingController(text: e.defaultValue);
            _formKeys[e.key] = GlobalKey<FormFieldState>();
          }
        }
      }
    }
    someValueChanged(isBuilding: true);
  }

  List<List<Widget>> _buildFormInputs(BuildContext context) {
    return widget.items.asMap().entries.map((row) {
      return row.value.asMap().entries.map((e) {
        var formItem = e.value;
        String fieldKey = formItem.key;

        if (formItem is GeneratedFormTextField) {
          var ctrl = _controllers[fieldKey]!;
          var formFieldKey = _formKeys[fieldKey]!;
          return TypeAheadField<String>(
            controller: ctrl,
            builder: (context, controller, focusNode) {
              final textField = TextFormField(
                controller: ctrl,
                focusNode: focusNode,
                keyboardType: formItem.textInputType,
                obscureText: formItem.password,
                autocorrect: !formItem.password,
                enableSuggestions: !formItem.password,
                key: formFieldKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: (value) {
                  setState(() {
                    values[fieldKey] = value;
                    someValueChanged();
                  });
                },
                decoration: InputDecoration(
                  labelText:
                      '${formItem.label}${formItem.required ? ' *' : ''}',
                  hintText: formItem.hint,
                ),
                minLines: formItem.max <= 1 ? null : formItem.max,
                maxLines: formItem.max <= 1 ? 1 : formItem.max,
                validator: (value) {
                  if (formItem.required &&
                      (value == null || value.trim().isEmpty)) {
                    return '${formItem.label} ${'requiredInBrackets'.t()}';
                  }
                  for (var validator in formItem.additionalValidators) {
                    String? result = validator(value);
                    if (result != null) return result;
                  }
                  return null;
                },
              );
              if (context.read<SettingsProvider>().isTV) {
                return _TVTextFieldFocus(
                  textFocusNode: focusNode,
                  child: textField,
                );
              }
              return textField;
            },
            itemBuilder: (context, value) {
              return ListTile(
                title: Text(
                  value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              );
            },
            onSelected: (value) {
              ctrl.text = value;
              setState(() {
                values[fieldKey] = value;
                someValueChanged();
              });
            },
            suggestionsCallback: (search) {
              return formItem.autoCompleteOptions
                  ?.where((t) => t.toLowerCase().contains(search.toLowerCase()))
                  .toList();
            },
            hideOnEmpty: true,
          );
        } else if (formItem is GeneratedFormDropdown) {
          if (formItem.opts!.isEmpty) {
            return Text('dropdownNoOptsError'.t());
          }
          return DropdownButtonFormField<String>(
            initialValue: values[fieldKey] ?? formItem.opts?.first.key,
            isExpanded: true,
            decoration: InputDecoration(
              labelText: fieldKey == 'appSourceURL'
                  ? '${formItem.label}${formItem.required ? ' *' : ''}'
                  : formItem.label,
            ),
            items: formItem.opts?.map((e2) {
              var enabled = formItem.disabledOptKeys?.contains(e2.key) != true;
              return DropdownMenuItem<String>(
                value: e2.key,
                enabled: enabled,
                child: Opacity(
                  opacity: enabled ? 1 : 0.5,
                  child: Directionality(
                    textDirection: Directionality.of(context),
                    child: Text(e2.value),
                  ),
                ),
              );
            }).toList(),
            selectedItemBuilder: (context) {
              return formItem.opts!.map((e2) {
                const displayLimit = 50;
                var displayText = e2.value.length > displayLimit
                    ? '${e2.value.substring(0, displayLimit)}...'
                    : e2.value;
                return Directionality(
                  textDirection: Directionality.of(context),
                  child: Text(displayText),
                );
              }).toList();
            },
            onChanged: (value) {
              if (value != null) {
                setState(() {
                  values[fieldKey] = value;
                  someValueChanged();
                });
              }
            },
            validator: (value) {
              if (formItem.required &&
                  (value == null || value.trim().isEmpty)) {
                return '${formItem.label} ${'requiredInBrackets'.t()}';
              }
              if (value != null && value.length > formItem.max) {
                return '${formItem.label} must be at most ${formItem.max} characters';
              }
              for (var validator in formItem.additionalValidators) {
                String? result = validator(value);
                if (result != null) return result;
              }
              return null;
            },
          );
        } else if (formItem is GeneratedFormSwitch) {
          return SwitchListTile.adaptive(
            contentPadding: EdgeInsets.zero,
            title: Text(
              formItem.label,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            value: values[fieldKey] == true,
            onChanged: formItem.disabled
                ? null
                : (value) {
                    setState(() {
                      values[fieldKey] = value;
                      someValueChanged();
                    });
                  },
          );
        } else if (formItem is GeneratedFormTagInput) {
          return _buildTagInputWidget(context, formItem, fieldKey);
        } else if (formItem is GeneratedFormSubForm) {
          List<Widget> subformColumn = [];
          var compact =
              formItem.items.length == 1 && formItem.items[0].length == 1;
          var subformValues = values[fieldKey] as List<dynamic>;
          for (int i = 0; i < subformValues.length; i++) {
            var internalFormKey = ValueKey(
              generateRandomNumber(
                subformValues.length,
                seed2: i,
                seed3: forceUpdateKeyCount,
              ),
            );
            subformColumn.add(
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!compact) const SizedBox(height: 16),
                  if (!compact)
                    Text(
                      '${formItem.label} (${i + 1})',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  GeneratedForm(
                    key: internalFormKey,
                    items: cloneFormItems(formItem.items)
                        .map(
                          (x) => x.map((y) {
                            y.defaultValue = subformValues[i]?[y.key];
                            y.key = '${y.key.toString()},$internalFormKey';
                            return y;
                          }).toList(),
                        )
                        .toList(),
                    onValueChanges: (subVals, valid, isBuilding) {
                      var cleanedVals = subVals.map(
                        (k, v) => MapEntry(k.split(',')[0], v),
                      );
                      if (valid) {
                        (values[fieldKey] as List<dynamic>)[i] = cleanedVals;
                      }
                      someValueChanged(
                        isBuilding: isBuilding,
                        forceInvalid: !valid,
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton.icon(
                        style: TextButton.styleFrom(
                          foregroundColor: Theme.of(context).colorScheme.error,
                        ),
                        onPressed: () {
                          var temp = List.from(subformValues);
                          temp.removeAt(i);
                          values[fieldKey] = temp;
                          forceUpdateKeyCount++;
                          someValueChanged();
                        },
                        label: Text('${formItem.label} (${i + 1})'),
                        icon: const Icon(Icons.delete),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
          subformColumn.add(
            Padding(
              padding: const EdgeInsets.only(bottom: 0, top: 8),
              child: Row(
                children: [
                  Expanded(
                    child: FilledButton.icon(
                      onPressed: () {
                        (values[fieldKey] as List<dynamic>).add(
                          getDefaultValuesFromFormItems(formItem.items),
                        );
                        forceUpdateKeyCount++;
                        someValueChanged();
                      },
                      icon: const Icon(Icons.add),
                      label: Text(formItem.label),
                    ),
                  ),
                ],
              ),
            ),
          );
          return Column(children: subformColumn);
        } else {
          return const SizedBox.shrink();
        }
      }).toList();
    }).toList();
  }

  Widget _buildTagInputWidget(
    BuildContext context,
    GeneratedFormTagInput formItem,
    String fieldKey,
  ) {
    void onAddPressed() {
      showDialog<Map<String, dynamic>?>(
        context: context,
        builder: (BuildContext ctx) {
          Map<String, dynamic> localValues = {};
          return AlertDialog(
            title: Text(formItem.label),
            content: GeneratedForm(
              items: [
                [GeneratedFormTextField('label', label: 'label'.t())],
              ],
              onValueChanges: (vals, valid, isBuilding) {
                localValues = vals;
              },
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(null),
                child: Text('cancel'.t()),
              ),
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(localValues),
                child: Text('ok'.t()),
              ),
            ],
          );
        },
      ).then((value) {
        String? label = value?['label'];
        if (label != null) {
          setState(() {
            var temp = values[fieldKey] as Map<String, MapEntry<int, bool>>?;
            temp ??= {};
            if (temp[label] == null) {
              var singleSelect = formItem.singleSelect;
              var someSelected = temp.entries
                  .where((element) => element.value.value)
                  .isNotEmpty;
              temp[label] = MapEntry(
                generateRandomLightColor().toARGB32(),
                !(someSelected && singleSelect),
              );
              values[fieldKey] = temp;
              someValueChanged();
            }
          });
        }
      });
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if ((values[fieldKey] as Map<String, MapEntry<int, bool>>?)
                    ?.isNotEmpty ==
                true &&
            formItem.showLabelWhenNotEmpty)
          Column(
            crossAxisAlignment: formItem.alignment == WrapAlignment.center
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.stretch,
            children: [Text(formItem.label), const SizedBox(height: 8)],
          ),
        Wrap(
          alignment: formItem.alignment,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            ...(values[fieldKey] as Map<String, MapEntry<int, bool>>?)?.entries
                    .map((e2) {
                      final settingsProvider = Provider.of<SettingsProvider>(
                        context,
                      );
                      final categoryColor = Color(
                        settingsProvider.categories[e2.key] ??
                            Theme.of(context).colorScheme.primary.toARGB32(),
                      );
                      return CategoryChip(
                        label: e2.key,
                        selected: e2.value.value,
                        categoryColor: categoryColor,
                        showCheckmark: true,
                        onSelected: (value) {
                          setState(() {
                            (values[fieldKey]
                                as Map<String, MapEntry<int, bool>>)[e2
                                .key] = MapEntry(
                              (values[fieldKey]
                                      as Map<String, MapEntry<int, bool>>)[e2
                                      .key]!
                                  .key,
                              value,
                            );
                            if (formItem.singleSelect && value == true) {
                              for (var key
                                  in (values[fieldKey]
                                          as Map<String, MapEntry<int, bool>>)
                                      .keys) {
                                if (key != e2.key) {
                                  (values[fieldKey]
                                      as Map<
                                        String,
                                        MapEntry<int, bool>
                                      >)[key] = MapEntry(
                                    (values[fieldKey]
                                            as Map<
                                              String,
                                              MapEntry<int, bool>
                                            >)[key]!
                                        .key,
                                    false,
                                  );
                                }
                              }
                            }
                            someValueChanged();
                          });
                        },
                      );
                    }) ??
                [const SizedBox.shrink()],
            (values[fieldKey] as Map<String, MapEntry<int, bool>>?)?.values
                        .where((e) => e.value)
                        .length ==
                    1
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          var temp =
                              values[fieldKey]
                                  as Map<String, MapEntry<int, bool>>;
                          final oldEntry = temp.entries.firstWhere(
                            (entry) => entry.value.value,
                          );
                          int newColor = oldEntry.value.key;
                          while (oldEntry.value.key == newColor) {
                            newColor = generateRandomLightColor().toARGB32();
                          }
                          temp.update(
                            oldEntry.key,
                            (old) => MapEntry(newColor, old.value),
                          );
                          values[fieldKey] = temp;
                          someValueChanged();
                        });
                      },
                      icon: const Icon(Icons.format_color_fill_rounded),
                      visualDensity: VisualDensity.compact,
                      tooltip: 'color'.t(),
                    ),
                  )
                : const SizedBox.shrink(),
            (values[fieldKey] as Map<String, MapEntry<int, bool>>?)?.values
                        .where((e) => e.value)
                        .isNotEmpty ==
                    true
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: IconButton(
                      onPressed: () {
                        fn() {
                          setState(() {
                            var temp =
                                values[fieldKey]
                                    as Map<String, MapEntry<int, bool>>;
                            temp.removeWhere((key, value) => value.value);
                            values[fieldKey] = temp;
                            someValueChanged();
                          });
                        }

                        if (formItem.deleteConfirmationMessage != null) {
                          var message = formItem.deleteConfirmationMessage!;
                          showDialog<bool>(
                            context: context,
                            builder: (BuildContext ctx) {
                              return AlertDialog(
                                title: Text(message.key),
                                content: Text(message.value),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(ctx).pop(false),
                                    child: Text('cancel'.t()),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(ctx).pop(true),
                                    child: Text('ok'.t()),
                                  ),
                                ],
                              );
                            },
                          ).then((confirmed) {
                            if (confirmed == true) fn();
                          });
                        } else {
                          fn();
                        }
                      },
                      icon: const Icon(Icons.remove),
                      visualDensity: VisualDensity.compact,
                      tooltip: 'remove'.t(),
                    ),
                  )
                : const SizedBox.shrink(),
            (values[fieldKey] as Map<String, MapEntry<int, bool>>?)?.isEmpty ==
                    true
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: TextButton.icon(
                      onPressed: onAddPressed,
                      icon: const Icon(Icons.add),
                      label: Text(formItem.label),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: IconButton(
                      onPressed: onAddPressed,
                      icon: const Icon(Icons.add),
                      visualDensity: VisualDensity.compact,
                      tooltip: 'add'.t(),
                    ),
                  ),
          ],
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    initForm();
  }

  @override
  void dispose() {
    _isDisposed = true;
    for (var controller in _controllers.values) {
      controller.dispose();
    }
    _controllers.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.key.toString() != initKey) {
      initForm();
    }

    formInputs = _buildFormInputs(context);

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: formInputs.map((row) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: row.map((input) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: input,
                  ),
                );
              }).toList(),
            ),
          );
        }).toList(),
      ),
    );
  }
}
