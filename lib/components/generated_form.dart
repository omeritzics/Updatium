import 'dart:math';

import 'package:hsluv/hsluv.dart';
import 'package:updatium/services/slang_converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

abstract class GeneratedFormItem {
  String key;
  String label;
  List<Widget> belowWidgets;
  dynamic defaultValue;
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
      disabled: disabled,
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
    this.initialValues,
  });

  final List<List<GeneratedFormItem>> items;
  final OnValueChanges onValueChanges;
  final Map<String, dynamic>? initialValues;

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

class _GeneratedFormState extends State<GeneratedForm> {
  final _formKey = GlobalKey<FormState>();
  Map<String, dynamic> values = {};
  final List<TextEditingController> _controllers = [];
  bool _isDisposed = false;
  int forceUpdateKeyCount = 0;

  @override
  void initState() {
    super.initState();
    _initializeValues();
  }

  @override
  void didUpdateWidget(GeneratedForm oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.key != oldWidget.key) {
      _initializeValues();
    }
  }

  void _initializeValues() {
    values = {};
    for (var row in widget.items) {
      for (var e in row) {
        values[e.key] = e.defaultValue;
      }
    }
    if (widget.initialValues != null) {
      values.addAll(widget.initialValues!);
    }
  }

  @override
  void dispose() {
    _isDisposed = true;
    for (var controller in _controllers) {
      controller.dispose();
    }
    _controllers.clear();
    super.dispose();
  }

  void someValueChanged({bool isBuilding = false, bool forceInvalid = false}) {
    bool valid = true;
    // We validate based on current values and validators
    // Note: Since we don't have access to FormFieldStates directly easily,
    // we rely on the parent or re-validation if needed.
    // For now, assume valid unless we have specific info.
    widget.onValueChanges(values, valid, isBuilding);
  }

  Widget _buildField(GeneratedFormItem formItem) {
    if (formItem is GeneratedFormTextField) {
      var ctrl = TextEditingController(
        text: values[formItem.key]?.toString() ?? '',
      );
      _controllers.add(ctrl);
      return TypeAheadField<String>(
        controller: ctrl,
        builder: (context, controller, focusNode) {
          return TextFormField(
            controller: ctrl,
            focusNode: focusNode,
            keyboardType: formItem.textInputType,
            obscureText: formItem.password,
            autocorrect: !formItem.password,
            enableSuggestions: !formItem.password,
            onChanged: (value) {
              setState(() {
                values[formItem.key] = value;
                someValueChanged();
              });
            },
            decoration: InputDecoration(
              labelText: '${formItem.label}${formItem.required ? ' *' : ''}',
              hintText: formItem.hint,
              border: const OutlineInputBorder(),
            ),
            validator: (value) {
              if (formItem.required &&
                  (value == null || value.trim().isEmpty)) {
                return '${formItem.label} ${t('requiredInBrackets')}';
              }
              for (var validator in formItem.additionalValidators) {
                String? result = validator(value);
                if (result != null) return result;
              }
              return null;
            },
          );
        },
        itemBuilder: (context, value) => ListTile(title: Text(value)),
        onSelected: (value) {
          ctrl.text = value;
          setState(() {
            values[formItem.key] = value;
            someValueChanged();
          });
        },
        suggestionsCallback: (search) =>
            formItem.autoCompleteOptions
                ?.where((t) => t.toLowerCase().contains(search.toLowerCase()))
                .toList() ??
            [],
      );
    } else if (formItem is GeneratedFormDropdown) {
      return DropdownButtonFormField<String>(
        initialValue: values[formItem.key] ?? formItem.opts?.first.key,
        isExpanded: true,
        decoration: InputDecoration(
          labelText: formItem.label,
          border: const OutlineInputBorder(),
        ),
        items: formItem.opts
            ?.map(
              (e) =>
                  DropdownMenuItem<String>(value: e.key, child: Text(e.value)),
            )
            .toList(),
        onChanged: (value) {
          if (value != null) {
            setState(() {
              values[formItem.key] = value;
              someValueChanged();
            });
          }
        },
      );
    } else if (formItem is GeneratedFormSwitch) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                formItem.label,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            Switch(
              value: values[formItem.key] == true,
              onChanged: formItem.disabled
                  ? null
                  : (value) {
                      setState(() {
                        values[formItem.key] = value;
                        someValueChanged();
                      });
                    },
            ),
          ],
        ),
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: widget.items.map((row) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              children: row.map((item) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: _buildField(item),
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
