import 'package:simple_localization/simple_localization.dart';
import 'package:flutter/material.dart';

class TagEditor extends StatelessWidget {
  final Set<String> selectedTags;
  final List<String> allTags;
  final String label;
  final bool singleSelect;
  final WrapAlignment alignment;
  final bool showLabelWhenNotEmpty;
  final Function(Set<String>) onTagsChanged;
  final bool showAddButton;

  const TagEditor({
    super.key,
    required this.selectedTags,
    required this.allTags,
    required this.onTagsChanged,
    this.label = '',
    this.singleSelect = false,
    this.alignment = WrapAlignment.start,
    this.showLabelWhenNotEmpty = true,
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
        final newAllTags = List<String>.from(allTags);
        if (!newAllTags.contains(value)) {
          newAllTags.add(value);
          final newSelected = Set<String>.from(selectedTags);
          if (!singleSelect || newSelected.isEmpty) {
            newSelected.add(value);
          }
          onTagsChanged(newSelected);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment == WrapAlignment.center
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.stretch,
      children: [
        if (allTags.isNotEmpty && showLabelWhenNotEmpty) ...[
          Text(label, style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 8),
        ],
        Wrap(
          alignment: alignment,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 8,
          runSpacing: 4,
          children: [
            ...allTags.map((tag) {
              return ChoiceChip(
                label: Text(tag),
                selected: selectedTags.contains(tag),
                onSelected: (selected) {
                  final newSelected = Set<String>.from(selectedTags);
                  if (singleSelect) {
                    newSelected.clear();
                    if (selected) {
                      newSelected.add(tag);
                    }
                  } else {
                    if (selected) {
                      newSelected.add(tag);
                    } else {
                      newSelected.remove(tag);
                    }
                  }
                  onTagsChanged(newSelected);
                },
              );
            }),
            if (showAddButton)
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
