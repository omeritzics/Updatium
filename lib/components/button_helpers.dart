import 'package:flutter/material.dart';

/// Helper function to create consistent styled TextButton across the app
/// Replaces the custom AppTextButton component
TextButton createAppTextButton({
  Key? key,
  required Widget child,
  VoidCallback? onPressed,
  ButtonStyle? style,
  bool enabled = true,
}) {
  return TextButton(
    key: key,
    onPressed: enabled ? onPressed : null,
    style:
        style ??
        TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
    child: child,
  );
}

/// Helper function to create TextButton with icon
TextButton createAppTextButtonWithIcon({
  Key? key,
  required Widget icon,
  required Widget label,
  VoidCallback? onPressed,
  ButtonStyle? style,
  bool enabled = true,
}) {
  return TextButton(
    key: key,
    onPressed: enabled ? onPressed : null,
    style:
        style ??
        TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [icon, const SizedBox(width: 8), label],
    ),
  );
}
