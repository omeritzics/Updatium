import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:updatium/components/button_helpers.dart';
import 'package:updatium/components/generated_form.dart';
import 'package:updatium/generated/l10n.dart';

class GeneratedFormModal extends StatefulWidget {
  const GeneratedFormModal({
    super.key,
    required this.title,
    required this.items,
    this.initValid = false,
    this.message = '',
    this.additionalWidgets = const [],
    this.singleNullReturnButton,
    this.primaryActionColor,
  });

  final String title;
  final String message;
  final List<List<GeneratedFormItem>> items;
  final bool initValid;
  final List<Widget> additionalWidgets;
  final String? singleNullReturnButton;
  final Color? primaryActionColor;

  @override
  State<GeneratedFormModal> createState() => _GeneratedFormModalState();
}

class _GeneratedFormModalState extends State<GeneratedFormModal> {
  Map<String, dynamic> values = {};
  bool valid = false;

  @override
  void initState() {
    super.initState();
    valid = widget.initValid || widget.items.isEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: Text(widget.title),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (widget.message.isNotEmpty) Text(widget.message),
          if (widget.message.isNotEmpty) const SizedBox(height: 16),
          GeneratedForm(
            items: widget.items,
            onValueChanges: (values, valid, isBuilding) {
              if (isBuilding) {
                this.values = values;
                this.valid = valid;
              } else {
                setState(() {
                  this.values = values;
                  this.valid = valid;
                });
              }
            },
          ),
          if (widget.additionalWidgets.isNotEmpty) ...widget.additionalWidgets,
        ],
      ),
      actions: [
        AppTextButton(
          onPressed: () {
            Navigator.of(context).pop(null);
          },
          child: Text(
            widget.singleNullReturnButton == null
                ? AppLocalizations.of(context)!.cancel
                : widget.singleNullReturnButton!,
          ),
        ),
        widget.singleNullReturnButton == null
            ? AppTextButton(
                style: widget.primaryActionColor == null
                    ? null
                    : TextButton.styleFrom(
                        foregroundColor: widget.primaryActionColor,
                      ),
                onPressed: !valid
                    ? null
                    : () {
                        if (valid) {
                          HapticFeedback.selectionClick();
                          Navigator.of(context).pop(values);
                        }
                      },
                child: Text(AppLocalizations.of(context)!.continueAction),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
