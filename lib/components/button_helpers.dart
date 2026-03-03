import 'package:flutter/material.dart';

/// Official TextButton with consistent styling for the app
/// Uses Flutter's built-in TextButton with Material Design styling
class AppTextButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  final bool enabled;

  const AppTextButton({
    super.key,
    required this.child,
    this.onPressed,
    this.style,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: enabled ? onPressed : null,
      style: style ??
          TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
      child: child,
    );
  }
}

/// Official TextButton with icon using Flutter's built-in TextButton.icon
class AppTextButtonWithIcon extends StatelessWidget {
  final Widget icon;
  final Widget label;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  final bool enabled;

  const AppTextButtonWithIcon({
    super.key,
    required this.icon,
    required this.label,
    this.onPressed,
    this.style,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: enabled ? onPressed : null,
      style: style ??
          TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
      icon: icon,
      label: label,
    );
  }
}

/// Helper function for backward compatibility - use AppTextButton widget instead
@Deprecated('Use AppTextButton widget instead')
TextButton appTextButton({
  Key? key,
  required Widget child,
  VoidCallback? onPressed,
  ButtonStyle? style,
  bool enabled = true,
}) {
  return TextButton(
    key: key,
    onPressed: enabled ? onPressed : null,
    style: style ??
        TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
    child: child,
  );
}

/// Helper function for backward compatibility - use AppTextButtonWithIcon widget instead
@Deprecated('Use AppTextButtonWithIcon widget instead')
TextButton appTextButtonWithIcon({
  Key? key,
  required Widget icon,
  required Widget label,
  VoidCallback? onPressed,
  ButtonStyle? style,
  bool enabled = true,
}) {
  return TextButton.icon(
    key: key,
    onPressed: enabled ? onPressed : null,
    style: style ??
        TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
    icon: icon,
    label: label,
  );
}
