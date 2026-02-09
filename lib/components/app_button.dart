import 'package:flutter/material.dart';

/// A custom text button widget that provides consistent styling across the app
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

  /// Creates an AppTextButton with an icon
  factory AppTextButton.icon({
    Key? key,
    required Widget icon,
    required Widget label,
    VoidCallback? onPressed,
    ButtonStyle? style,
    bool enabled = true,
  }) {
    return AppTextButton(
      key: key,
      onPressed: onPressed,
      style: style,
      enabled: enabled,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [icon, const SizedBox(width: 8), label],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: enabled ? onPressed : null,
      style: style ?? Theme.of(context).textButtonTheme.style,
      child: child,
    );
  }
}
