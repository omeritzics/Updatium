import 'package:simple_localization/simple_localization.dart';
import 'package:flutter/material.dart';
import 'package:flex_color_picker/flex_color_picker.dart';

class CategoryEditorDialog extends StatefulWidget {
  final String? initialName;
  final Color? initialColor;
  final String title;
  final String confirmButtonText;

  const CategoryEditorDialog({
    super.key,
    this.initialName,
    this.initialColor,
    required this.title,
    required this.confirmButtonText,
  });

  @override
  State<CategoryEditorDialog> createState() => _CategoryEditorDialogState();
}

class _CategoryEditorDialogState extends State<CategoryEditorDialog> {
  late TextEditingController _nameController;
  late Color _selectedColor;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.initialName ?? '');
    _selectedColor = widget.initialColor ?? Theme.of(context).colorScheme.primary;
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _showColorPicker() async {
    final Color colorBeforeDialog = _selectedColor;
    final result = await ColorPicker(
      color: _selectedColor,
      onColorChanged: (Color color) => setState(() => _selectedColor = color),
      actionButtons: const ColorPickerActionButtons(
        okButton: true,
        closeButton: true,
        dialogActionButtons: false,
      ),
      pickersEnabled: const <ColorPickerType, bool>{
        ColorPickerType.both: false,
        ColorPickerType.primary: true,
        ColorPickerType.accent: false,
        ColorPickerType.bw: false,
        ColorPickerType.custom: true,
        ColorPickerType.wheel: true,
      },
      pickerTypeLabels: <ColorPickerType, String>{
        ColorPickerType.custom: tr('standard'),
        ColorPickerType.wheel: tr('custom'),
      },
      wheelDiameter: 192,
      wheelSquareBorderRadius: 32,
      width: 48,
      height: 48,
      borderRadius: 24,
      spacing: 8,
      runSpacing: 8,
      enableShadesSelection: false,
      showMaterialName: false,
      showColorName: false,
      copyPasteBehavior: const ColorPickerCopyPasteBehavior(
        longPressMenu: true,
      ),
    ).showPickerDialog(
      context,
      transitionBuilder: (BuildContext context, Animation<double> a1,
          Animation<double> a2, Widget widget) {
        final curvedValue = Curves.easeInCubic.transform(a1.value);
        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.diagonal3Values(curvedValue, curvedValue, 1),
          child: Opacity(opacity: curvedValue, child: widget),
        );
      },
      transitionDuration: const Duration(milliseconds: 250),
    );

    if (!result) {
      setState(() => _selectedColor = colorBeforeDialog);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      content: SizedBox(
        width: 300,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _nameController,
              autofocus: true,
              decoration: InputDecoration(labelText: tr('name')),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Text(
                    tr('selectX', args: [tr('color').toLowerCase()]),
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: _showColorPicker,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: _selectedColor,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Theme.of(context).colorScheme.outline,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(tr('cancel')),
        ),
        TextButton(
          onPressed: () => Navigator.pop(
            context,
            _CategoryResult(name: _nameController.text.trim(), color: _selectedColor),
          ),
          child: Text(widget.confirmButtonText),
        ),
      ],
    );
  }
}

class _CategoryResult {
  final String name;
  final Color color;

  _CategoryResult({required this.name, required this.color});
}

Future<_CategoryResult?> showCategoryEditorDialog(
  BuildContext context, {
  String? initialName,
  Color? initialColor,
  required String title,
  required String confirmButtonText,
}) {
  return showDialog<_CategoryResult>(
    context: context,
    builder: (context) => CategoryEditorDialog(
      initialName: initialName,
      initialColor: initialColor,
      title: title,
      confirmButtonText: confirmButtonText,
    ),
  );
}
