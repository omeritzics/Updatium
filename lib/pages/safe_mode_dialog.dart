import 'dart:async';
import 'package:flutter/material.dart';
import 'package:m3e_buttons/m3e_buttons.dart';
import 'package:provider/provider.dart';

import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/services/device_admin_service.dart';
import 'package:updatium/services/slang_converter.dart';

Future<bool?> showSafeModeEnableDialog(BuildContext context) =>
    showDialog<bool>(
      context: context,
      builder: (_) => const SafeModeEnableDialog(),
    );

Future<bool?> showSafeModeDisableDialog(BuildContext context) =>
    showDialog<bool>(
      context: context,
      builder: (_) => const SafeModeDisableDialog(),
    );

// ---------------------------------------------------------------------------
// Shared widgets
// ---------------------------------------------------------------------------

class _DialogTitle extends StatelessWidget {
  const _DialogTitle(this.text);
  final String text;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      Icon(Icons.lock_rounded, color: Theme.of(context).colorScheme.primary),
      const SizedBox(width: 12),
      Flexible(child: Text(text)),
    ],
  );
}

class _PasswordField extends StatelessWidget {
  const _PasswordField({
    required this.controller,
    required this.label,
    required this.enabled,
    this.outlined = false,
    this.onSubmitted,
  });

  final TextEditingController controller;
  final String label;
  final bool enabled;
  final bool outlined;
  final VoidCallback? onSubmitted;

  @override
  Widget build(BuildContext context) => TextField(
    controller: controller,
    obscureText: true,
    enabled: enabled,
    onSubmitted: onSubmitted == null ? null : (_) => onSubmitted!(),
    decoration: InputDecoration(
      labelText: label,
      hintText: 'safeModePasswordHint'.t(),
      border: outlined ? const OutlineInputBorder() : null,
    ),
  );
}

class _ErrorText extends StatelessWidget {
  const _ErrorText(this.message);
  final String? message;

  @override
  Widget build(BuildContext context) {
    if (message == null) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Text(
        message!,
        style: TextStyle(
          color: Theme.of(context).colorScheme.error,
          fontSize: 14,
        ),
      ),
    );
  }
}

class _DialogActions extends StatelessWidget {
  const _DialogActions({
    required this.isLoading,
    required this.label,
    required this.onConfirm,
  });

  final bool isLoading;
  final String label;
  final VoidCallback onConfirm;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      TextButton(
        onPressed: isLoading ? null : () => Navigator.of(context).pop(),
        child: Text('cancel'.t()),
      ),
      const SizedBox(width: 8),
      M3EFilledButton(
        onPressed: isLoading ? null : onConfirm,
        child: isLoading
            ? const SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : Text(label),
      ),
    ],
  );
}

// ---------------------------------------------------------------------------
// Enable dialog
// ---------------------------------------------------------------------------

class SafeModeEnableDialog extends StatefulWidget {
  const SafeModeEnableDialog({super.key});

  @override
  State<SafeModeEnableDialog> createState() => _SafeModeEnableDialogState();
}

class _SafeModeEnableDialogState extends State<SafeModeEnableDialog> {
  static const _minPasswordLength = 8;

  final _password = TextEditingController();
  final _confirm = TextEditingController();
  bool _isLoading = false;
  String? _error;

  @override
  void dispose() {
    _password.dispose();
    _confirm.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (_password.text.length < _minPasswordLength) {
      setState(() => _error = 'safeModePasswordTooShort'.t());
      return;
    }
    if (_password.text != _confirm.text) {
      setState(() => _error = 'safeModePasswordMismatch'.t());
      return;
    }

    setState(() {
      _isLoading = true;
      _error = null;
    });

    // Capture everything needed after the dialog is popped.
    final settings = context.read<SettingsProvider>();
    final messenger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);
    final enabledText = 'safeModeEnabled'.t();
    final hintText = 'safeModeEnabledHint'.t();
    final gotItText = 'gotIt'.t();

    try {
      final success = await settings.setSafeModePassword(_password.text);
      if (!success) {
        if (mounted) setState(() => _error = 'safeModePasswordError'.t());
        return;
      }

      settings.safeMode = true;
      navigator.pop(true);
      messenger.showSnackBar(
        SnackBar(content: Text(enabledText), backgroundColor: Colors.green),
      );

      // Works even though this dialog is already disposed.
      Future.delayed(const Duration(seconds: 2), () {
        messenger.showSnackBar(
          SnackBar(
            content: Text(hintText),
            duration: const Duration(seconds: 5),
            action: SnackBarAction(
              label: gotItText,
              onPressed: () => settings.safeModeHintShown = true,
            ),
          ),
        );
      });
    } catch (_) {
      if (mounted) setState(() => _error = 'safeModePasswordError'.t());
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AlertDialog(
      title: _DialogTitle('safeModeEnable'.t()),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('safeModeDescription'.t(), style: theme.textTheme.bodyMedium),
            const SizedBox(height: 12),
            Text(
              'safeModeSetupHint'.t(),
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 20),
            _PasswordField(
              controller: _password,
              label: 'safeModeSetPassword'.t(),
              enabled: !_isLoading,
              outlined: true,
            ),
            const SizedBox(height: 16),
            _PasswordField(
              controller: _confirm,
              label: 'safeModeConfirmPassword'.t(),
              enabled: !_isLoading,
              outlined: true,
              onSubmitted: _submit,
            ),
            _ErrorText(_error),
          ],
        ),
      ),
      actions: [
        _DialogActions(
          isLoading: _isLoading,
          label: 'safeModeEnable'.t(),
          onConfirm: _submit,
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Disable dialog
// ---------------------------------------------------------------------------

class SafeModeDisableDialog extends StatefulWidget {
  const SafeModeDisableDialog({super.key});

  @override
  State<SafeModeDisableDialog> createState() => _SafeModeDisableDialogState();
}

class _SafeModeDisableDialogState extends State<SafeModeDisableDialog> {
  final _password = TextEditingController();
  bool _isLoading = false;
  String? _error;

  @override
  void dispose() {
    _password.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    final settings = context.read<SettingsProvider>();
    final messenger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);
    final disabledText = 'safeModeDisabled'.t();

    try {
      final success = await settings.verifySafeModePassword(_password.text);
      if (!success) {
        if (mounted) setState(() => _error = 'safeModePasswordIncorrect'.t());
        return;
      }

      settings.safeMode = false;
      await settings.clearSafeModePassword();
      settings.safeModeHintShown = false;
      settings.safeModeTapCount = 0;

      // Uninstall protection depends on Safe Mode.
      await DeviceAdminService.disableUninstallProtection();
      settings.preventUninstallation = false;

      navigator.pop(true);
      messenger.showSnackBar(
        SnackBar(content: Text(disabledText), backgroundColor: Colors.orange),
      );
    } catch (_) {
      if (mounted) setState(() => _error = 'safeModePasswordError'.t());
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
    title: _DialogTitle('safeModeDisable'.t()),
    content: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'safeModeToggleDescription'.t(),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 20),
          _PasswordField(
            controller: _password,
            label: 'safeModeEnterPassword'.t(),
            enabled: !_isLoading,
            onSubmitted: _submit,
          ),
          _ErrorText(_error),
        ],
      ),
    ),
    actions: [
      _DialogActions(
        isLoading: _isLoading,
        label: 'safeModeDisable'.t(),
        onConfirm: _submit,
      ),
    ],
  );
}
