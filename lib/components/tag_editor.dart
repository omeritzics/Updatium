import 'package:easy_localization/easy_localization.dart';
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

  const TagEditor({
    super.key,
    required this.tags,
    required this.onTagsChanged,
    this.label = '',
    this.singleSelect = false,
    this.alignment = WrapAlignment.start,
    this.showLabelWhenNotEmpty = true,
    this.deleteConfirmationMessage,
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
                Text(
                  tr('selectX', args: [tr('color').toLowerCase()]),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 200,
                  child: ColorPicker(
                    color: currentColor,
                    onColorChanged: (Color color) {
                      currentColor = color;
                    },
                    actionButtons: const ColorPickerActionButtons(
                      okButton: false,
                      closeButton: false,
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
                    wheelDiameter: 150,
                    wheelSquareBorderRadius: 24,
                    width: 40,
                    height: 40,
                    borderRadius: 20,
                    spacing: 6,
                    runSpacing: 6,
                    enableShadesSelection: false,
                    showMaterialName: false,
                    showColorName: false,
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
                  selected: entry.value.value,
                  backgroundColor: Color(
                    entry.value.key,
                  ).withValues(alpha: 0.2),
                  selectedColor: Color(entry.value.key),
                  onSelected: (selected) {
                    final newTags = Map<String, MapEntry<int, bool>>.from(tags);
                    if (singleSelect && selected) {
                      newTags.updateAll(
                        (k, v) => MapEntry(v.key, k == entry.key),
                      );
                    } else {
                      newTags[entry.key] = MapEntry(entry.value.key, selected);
                    }
                    onTagsChanged(newTags);
                  },
                  deleteIcon: const Icon(Icons.close, size: 18),
                  onDeleted: () {
                    final newTags = Map<String, MapEntry<int, bool>>.from(tags);
                    newTags.remove(entry.key);
                    onTagsChanged(newTags);
                  },
                ),
              );
            }),
            if (selectedCount == 1)
              IconButton(
                onPressed: () => _onColorPressed(context),
                icon: const Icon(Icons.format_color_fill_rounded),
                tooltip: tr('color'),
              ),
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
