import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hsluv/hsluv.dart';
import 'dart:math';

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

  Color _generateRandomLightColor() {
    final randomSeed = Random().nextInt(120);
    final goldenAngle = 180 * (3 - sqrt(5));
    final double hue = randomSeed * goldenAngle;
    final List<double> rgbValuesDbl = Hsluv.hpluvToRgb([hue, 100, 70]);
    final List<int> rgbValues = rgbValuesDbl
        .map((rgb) => (rgb * 255).toInt())
        .toList();
    return Color.fromARGB(255, rgbValues[0], rgbValues[1], rgbValues[2]);
  }

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
            _generateRandomLightColor().value,
            !(someSelected && singleSelect),
          );
          onTagsChanged(newTags);
        }
      }
    });
  }

  void _onRemovePressed(BuildContext context) {
    void remove() {
      final newTags = Map<String, MapEntry<int, bool>>.from(tags);
      newTags.removeWhere((key, value) => value.value);
      onTagsChanged(newTags);
    }

    if (deleteConfirmationMessage != null) {
      showDialog<bool>(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text(deleteConfirmationMessage!.key),
          content: Text(deleteConfirmationMessage!.value),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: Text(tr('cancel')),
            ),
            TextButton(
              onPressed: () => Navigator.pop(ctx, true),
              child: Text(tr('confirm')),
            ),
          ],
        ),
      ).then((confirmed) {
        if (confirmed == true) remove();
      });
    } else {
      remove();
    }
  }

  void _onColorPressed() {
    final newTags = Map<String, MapEntry<int, bool>>.from(tags);
    final selectedEntry = tags.entries.firstWhere((e) => e.value.value);
    int newColor = selectedEntry.value.key;
    while (newColor == selectedEntry.value.key) {
      newColor = _generateRandomLightColor().value;
    }
    newTags[selectedEntry.key] = MapEntry(newColor, true);
    onTagsChanged(newTags);
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
              return ChoiceChip(
                label: Text(entry.key),
                selected: entry.value.value,
                backgroundColor: Color(entry.value.key).withValues(alpha: 0.2),
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
              );
            }),
            if (selectedCount == 1)
              IconButton(
                onPressed: _onColorPressed,
                icon: const Icon(Icons.format_color_fill_rounded),
                tooltip: tr('color'),
              ),
            if (selectedCount > 0)
              IconButton(
                onPressed: () => _onRemovePressed(context),
                icon: const Icon(Icons.remove),
                tooltip: tr('remove'),
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
