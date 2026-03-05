import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:updatium/components/button_helpers.dart';
import 'package:updatium/components/generated_form.dart';

/// Shows a modal dialog with a form using standard M3 AlertDialog
Future<Map<String, dynamic>?> showGeneratedFormModal({
  required BuildContext context,
  required String title,
  required List<List<GeneratedFormItem>> items,
  bool initValid = false,
  String message = '',
  List<Widget> additionalWidgets = const [],
  String? singleNullReturnButton,
  Color? primaryActionColor,
}) async {
  Map<String, dynamic> values = {};
  bool valid = initValid || items.isEmpty;

  return await showDialog<Map<String, dynamic>?>(
    context: context,
    builder: (context) => StatefulBuilder(
      builder: (context, setState) => AlertDialog(
        scrollable: true,
        title: Text(title),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (message.isNotEmpty) Text(message),
            if (message.isNotEmpty) const SizedBox(height: 16),
            GeneratedForm(
              items: items,
              onValueChanges: (newValues, newValid, isBuilding) {
                if (isBuilding) {
                  values = newValues;
                  valid = newValid;
                } else {
                  setState(() {
                    values = newValues;
                    valid = newValid;
                  });
                }
              },
            ),
            if (additionalWidgets.isNotEmpty) ...additionalWidgets,
          ],
        ),
        actions: [
          AppTextButton(
            onPressed: () {
              Navigator.of(context).pop(null);
            },
            child: Text(singleNullReturnButton ?? tr('cancel')),
          ),
          if (singleNullReturnButton == null)
            AppTextButton(
              style: primaryActionColor == null
                  ? null
                  : TextButton.styleFrom(foregroundColor: primaryActionColor),
              onPressed: !valid
                  ? null
                  : () {
                      if (valid) {
                        HapticFeedback.selectionClick();
                        Navigator.of(context).pop(values);
                      }
                    },
              child: Text(tr('continue')),
            ),
        ],
      ),
    ),
  );
}
