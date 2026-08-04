import 'dart:async';
import 'package:flutter/material.dart';
import 'package:m3e_buttons/m3e_buttons.dart';

import 'package:updatium/services/slang_converter.dart';
import 'package:provider/provider.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/services/device_admin_service.dart';

void showSafeModeEnableDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => const SafeModeEnableDialog(),
  );
}

class SafeModeEnableDialog extends StatefulWidget {
  const SafeModeEnableDialog({super.key});

  @override
  State<SafeModeEnableDialog> createState() => _SafeModeEnableDialogState();
}

class _SafeModeEnableDialogState extends State<SafeModeEnableDialog> {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool isLoading = false;
  String? errorMessage;

  Future<void> setupPassword() async {
    if (passwordController.text.length < 8) {
      setState(() {
        errorMessage = 'safeModePasswordTooShort'.t();
      });
      return;
    }

    if (passwordController.text != confirmPasswordController.text) {
      setState(() {
        errorMessage = 'safeModePasswordMismatch'.t();
      });
      return;
    }

    setState(() {
      isLoading = true;
      errorMessage = null;
    });

    try {
      final settingsProvider = context.read<SettingsProvider>();
      final success = await settingsProvider.setSafeModePassword(
        passwordController.text,
      );

      if (success) {
        settingsProvider.safeMode = true;
        if (mounted) {
          Navigator.of(context).pop(true);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('safeModeEnabled'.t()),
              backgroundColor: Colors.green,
            ),
          );

          Future.delayed(const Duration(seconds: 2), () {
            if (mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('safeModeEnabledHint'.t()),
                  duration: const Duration(seconds: 5),
                  action: SnackBarAction(
                    label: 'gotIt'.t(),
                    onPressed: () {
                      settingsProvider.safeModeHintShown = true;
                    },
                  ),
                ),
              );
            }
          });
        }
      } else {
        setState(() {
          errorMessage = 'safeModePasswordError'.t();
        });
      }
    } catch (e) {
      setState(() {
        errorMessage = 'safeModePasswordError'.t();
      });
    } finally {
      if (mounted) {
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Icon(
            Icons.lock_rounded,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(width: 12),
          Text('safeModeEnable'.t()),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'safeModeDescription'.t(),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 12),
          Text(
            'safeModeSetupHint'.t(),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'safeModeSetPassword'.t(),
              hintText: 'safeModePasswordHint'.t(),
              border: const OutlineInputBorder(),
            ),
            enabled: !isLoading,
          ),
          const SizedBox(height: 16),
          TextField(
            controller: confirmPasswordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'safeModeConfirmPassword'.t(),
              hintText: 'safeModePasswordHint'.t(),
              border: const OutlineInputBorder(),
            ),
            enabled: !isLoading,
          ),
          if (errorMessage != null) ...[
            const SizedBox(height: 12),
            Text(
              errorMessage!,
              style: TextStyle(
                color: Theme.of(context).colorScheme.error,
                fontSize: 14,
              ),
            ),
          ],
        ],
      ),
      actions: [
        TextButton(
          onPressed: isLoading ? null : () => Navigator.of(context).pop(),
          child: Text('cancel'.t()),
        ),
        M3EFilledButton(
          onPressed: isLoading ? null : setupPassword,
          child: isLoading
              ? const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(),
                )
              : Text('safeModeEnable'.t()),
        ),
      ],
    );
  }
}

void showSafeModeDisableDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => const SafeModeDisableDialog(),
  );
}

class SafeModeDisableDialog extends StatefulWidget {
  const SafeModeDisableDialog({super.key});

  @override
  State<SafeModeDisableDialog> createState() => _SafeModeDisableDialogState();
}

class _SafeModeDisableDialogState extends State<SafeModeDisableDialog> {
  final passwordController = TextEditingController();
  bool isLoading = false;
  String? errorMessage;

  Future<void> disableSafeMode() async {
    setState(() {
      isLoading = true;
      errorMessage = null;
    });

    try {
      final settingsProvider = context.read<SettingsProvider>();
      final success = await settingsProvider.verifySafeModePassword(
        passwordController.text,
      );

      if (success) {
        settingsProvider.safeMode = false;
        await settingsProvider.clearSafeModePassword();
        settingsProvider.safeModeHintShown = false;
        settingsProvider.safeModeTapCount = 0;

        // Disable uninstall protection when Safe Mode is disabled
        await DeviceAdminService.disableUninstallProtection();
        settingsProvider.preventUninstallation = false;

        if (mounted) {
          Navigator.of(context).pop(true);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('safeModeDisabled'.t()),
              backgroundColor: Colors.orange,
            ),
          );
        }
      } else {
        setState(() {
          errorMessage = 'safeModePasswordIncorrect'.t();
        });
      }
    } catch (e) {
      setState(() {
        errorMessage = 'safeModePasswordError'.t();
      });
    } finally {
      if (mounted) {
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Icon(
            Icons.lock_rounded,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(width: 12),
          Text('safeModeDisable'.t()),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'safeModeToggleDescription'.t(),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 20),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'safeModeEnterPassword'.t(),
              hintText: 'safeModePasswordHint'.t(),
            ),
            enabled: !isLoading,
            onSubmitted: (_) => disableSafeMode(),
          ),
          if (errorMessage != null) ...[
            const SizedBox(height: 12),
            Text(
              errorMessage!,
              style: TextStyle(
                color: Theme.of(context).colorScheme.error,
                fontSize: 14,
              ),
            ),
          ],
        ],
      ),
      actions: [
        TextButton(
          onPressed: isLoading ? null : () => Navigator.of(context).pop(),
          child: Text('cancel'.t()),
        ),
        M3EFilledButton(
          onPressed: isLoading ? null : disableSafeMode,
          child: isLoading
              ? const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(),
                )
              : Text('safeModeDisable'.t()),
        ),
      ],
    );
  }
}
