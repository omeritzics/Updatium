import 'package:simple_localization/simple_localization.dart';
import 'package:flutter/material.dart';
import 'package:flex_color_picker/flex_color_picker.dart';

class TagEditor extends StatelessWidget {
  final Map<String, MapEntry<int, bool>> tags;
  final String label;
  final bool singleSelect;
  final WrapAlignment alignment;
  final bool showLabelWhenNotEmpty;
  final Function(Map<String, MapEntry<int, bool>>) onTagsChanged;
  final MapEntry<String, String>? deleteConfirmationMessage;
  final bool showCheckIcon;
  final bool showAddButton;

  const TagEditor({
    super.key,
    required this.tags,
    required this.onTagsChanged,
    this.label = '',
    this.singleSelect = false,
    this.alignment = WrapAlignment.start,
    this.showLabelWhenNotEmpty = true,
    this.deleteConfirmationMessage,
    this.showCheckIcon = true,
    this.showAddButton = true,
  });

  void _onAddPressed(BuildContext context) {
    String labelText = '';
    showDialog<String?>(
      context: context,
      builder: (BuildContext ctx) {
        return AlertDialog(
          title: Text(label),
          content: TextField(
            autofocus: true,
            decoration: InputDecoration(labelText: tr('label')),
            onChanged: (value) => labelText = value,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: Text(tr('cancel')),
            ),
            TextButton(
              onPressed: () => Navigator.pop(ctx, labelText),
              child: Text(tr('add')),
            ),
          ],
        );
      },
    ).then((value) {
      if (value != null && value.trim().isNotEmpty) {
        final newTags = Map<String, MapEntry<int, bool>>.from(tags);
        if (!newTags.containsKey(value)) {
          bool someSelected = newTags.values.any((e) => e.value);
          newTags[value] = MapEntry(
            Theme.of(context).colorScheme.primary.toARGB32(),
            !(someSelected && singleSelect),
          );
          onTagsChanged(newTags);
        }
      }
    });
  }

  void _onColorPressed(BuildContext context) {
    final newTags = Map<String, MapEntry<int, bool>>.from(tags);
    final selectedEntry = tags.entries.firstWhere((e) => e.value.value);
    Color currentColor = Color(selectedEntry.value.key);

    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return AlertDialog(
          title: Text(tr('selectX', args: [tr('color').toLowerCase()])),
          content: SizedBox(
            width: 300,
            height: 400,
            child: ColorPicker(
              color: currentColor,
              onColorChanged: (Color color) {
                currentColor = color;
              },
              actionButtons: const ColorPickerActionButtons(
                okButton: true,
                closeButton: true,
                dialogActionButtons: false,
              ),
              pickersEnabled: const <ColorPickerType, bool>{
                ColorPickerType.both: false,
                ColorPickerType.primary: false,
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
              showMaterialName: true,
              showColorName: true,
              copyPasteBehavior: const ColorPickerCopyPasteBehavior(
                longPressMenu: true,
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: Text(tr('cancel')),
            ),
            TextButton(
              onPressed: () {
                newTags[selectedEntry.key] = MapEntry(
                  currentColor.toARGB32(),
                  true,
                );
                onTagsChanged(newTags);
                Navigator.pop(ctx);
              },
              child: Text(tr('ok')),
            ),
          ],
        );
      },
    );
  }

  void _onCategoryPressed(
    BuildContext context,
    String categoryName,
    int categoryColor,
  ) {
    final newTags = Map<String, MapEntry<int, bool>>.from(tags);
    String newName = categoryName;
    Color currentColor = Color(categoryColor);

    Future<bool> colorPickerDialog() async {
      return ColorPicker(
        color: currentColor,
        onColorChanged: (Color color) => currentColor = color,
        actionButtons: const ColorPickerActionButtons(
          okButton: true,
          closeButton: true,
          dialogActionButtons: false,
        ),
        pickersEnabled: const <ColorPickerType, bool>{
          ColorPickerType.both: false,
          ColorPickerType.primary: false,
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
        transitionBuilder:
            (
              BuildContext context,
              Animation<double> a1,
              Animation<double> a2,
              Widget widget,
            ) {
              final curvedValue =
                  Curves.easeInOutBack.transform(a1.value) - 1.0;
              return Transform(
                alignment: Alignment.center,
                transform: Matrix4.diagonal3Values(curvedValue, curvedValue, 1),
                child: Opacity(opacity: curvedValue, child: widget),
              );
            },
        transitionDuration: const Duration(milliseconds: 250),
      );
    }

    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return AlertDialog(
          title: Text(tr('editCategory')),
          content: SizedBox(
            width: 300,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: tr('name'),
                    hintText: categoryName,
                  ),
                  onChanged: (value) => newName = value,
                ),
                const SizedBox(height: 16),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    tr('selectX', args: [tr('color').toLowerCase()]),
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  trailing: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: currentColor,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Theme.of(context).colorScheme.outline,
                        width: 1,
                      ),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () async {
                        final Color colorBeforeDialog = currentColor;
                        if (!(await colorPickerDialog())) {
                          currentColor = colorBeforeDialog;
                        }
                      },
                      child: Icon(
                        Icons.palette,
                        color: currentColor.computeLuminance() > 0.5
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: Text(tr('cancel')),
            ),
            TextButton(
              onPressed: () {
                if (newName.trim().isNotEmpty && newName != categoryName) {
                  // Category name changed - remove old entry and add new one
                  final isSelected = newTags[categoryName]?.value ?? false;
                  newTags.remove(categoryName);
                  newTags[newName.trim()] = MapEntry(
                    currentColor.toARGB32(),
                    isSelected,
                  );
                } else if (newName.trim().isNotEmpty) {
                  // Only color changed
                  newTags[categoryName] = MapEntry(
                    currentColor.toARGB32(),
                    true,
                  );
                }
                onTagsChanged(newTags);
                Navigator.pop(ctx);
              },
              child: Text(tr('save')),
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext confirmCtx) {
                    return AlertDialog(
                      title: Text(tr('deleteCategory')),
                      content: Text(tr('categoryDeleteWarning')),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(confirmCtx),
                          child: Text(tr('cancel')),
                        ),
                        TextButton(
                          onPressed: () {
                            final newTags =
                                Map<String, MapEntry<int, bool>>.from(tags);
                            newTags.remove(categoryName);
                            onTagsChanged(newTags);
                            Navigator.pop(confirmCtx);
                            Navigator.pop(ctx);
                          },
                          child: Text(tr('delete')),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text(
                tr('delete'),
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedCount = tags.values.where((e) => e.value).length;

    return Column(
      crossAxisAlignment: alignment == WrapAlignment.center
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.stretch,
      children: [
        if (tags.isNotEmpty && showLabelWhenNotEmpty) ...[
          Text(label, style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 8),
        ],
        Wrap(
          alignment: alignment,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 8,
          runSpacing: 4,
          children: [
            ...tags.entries.map((entry) {
              return GestureDetector(
                onTap: () {
                  _onCategoryPressed(context, entry.key, entry.value.key);
                },
                child: InputChip(
                  label: Text(entry.key),
                  selected: showCheckIcon ? entry.value.value : false,
                  backgroundColor: Color(
                    entry.value.key,
                  ).withValues(alpha: 0.2),
                  selectedColor: Color(entry.value.key),
                  onSelected: null,
                ),
              );
            }),
            if (selectedCount == 1)
              IconButton(
                onPressed: () => _onColorPressed(context),
                icon: const Icon(Icons.format_color_fill_rounded),
                tooltip: tr('color'),
              ),
            if (showAddButton)
              if (tags.isEmpty)
                TextButton.icon(
                  onPressed: () => _onAddPressed(context),
                  icon: const Icon(Icons.add),
                  label: Text(label),
                )
              else
                IconButton(
                  onPressed: () => _onAddPressed(context),
                  icon: const Icon(Icons.add),
                  tooltip: tr('add'),
                ),
          ],
        ),
      ],
    );
  }
}
