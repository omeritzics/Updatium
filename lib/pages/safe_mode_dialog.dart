import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:m3e_buttons/m3e_buttons.dart';
import 'package:flutter/services.dart';
import 'package:progress_indicator_m3e/progress_indicator_m3e.dart';
import 'package:updatium/services/slang-converter.dart';
import 'package:provider/provider.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/services/device_admin_service.dart';
import 'package:url_launcher/url_launcher_string.dart';

void showSafeModeEnableDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      final passwordController = TextEditingController();
      final confirmPasswordController = TextEditingController();
      bool isLoading = false;
      String? errorMessage;

      return StatefulBuilder(
        builder: (context, setState) {
          Future<void> setupPassword() async {
            if (passwordController.text.length < 8) {
              errorMessage = t('safeModePasswordTooShort');
              setState(() {});
              return;
            }

            if (passwordController.text != confirmPasswordController.text) {
              errorMessage = t('safeModePasswordMismatch');
              setState(() {});
              return;
            }

            isLoading = true;
            errorMessage = null;
            setState(() {});

            try {
              final settingsProvider = context.read<SettingsProvider>();
              final success = await settingsProvider.setSafeModePassword(
                passwordController.text,
              );

              if (success) {
                settingsProvider.safeMode = true;
                if (context.mounted) {
                  Navigator.of(context).pop(true);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(t('safeModeEnabled')),
                      backgroundColor: Colors.green,
                    ),
                  );

                  Future.delayed(const Duration(seconds: 2), () {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(t('safeModeEnabledHint')),
                          duration: const Duration(seconds: 5),
                          action: SnackBarAction(
                            label: t('gotIt'),
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
                errorMessage = t('safeModePasswordError');
                setState(() {});
              }
            } catch (e) {
              errorMessage = t('safeModePasswordError');
              setState(() {});
            } finally {
              isLoading = false;
              setState(() {});
            }
          }

          return AlertDialog(
            title: Row(
              children: [
                Icon(
                  Icons.lock_rounded,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 12),
                Text(t('safeModeEnable')),
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  t('safeModeSetupDescription'),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 12),
                Text(
                  t('safeModeDisableHint'),
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: t('safeModeSetPassword'),
                    hintText: t('safeModePasswordHint'),
                    border: const OutlineInputBorder(),
                  ),
                  enabled: !isLoading,
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: t('safeModeConfirmPassword'),
                    hintText: t('safeModePasswordHint'),
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
                onPressed: isLoading
                    ? null
                    : () {
                        passwordController.dispose();
                        confirmPasswordController.dispose();
                        Navigator.of(context).pop();
                      },
                child: Text(t('cancel')),
              ),
              M3EFilledButton(
                onPressed: isLoading ? null : setupPassword,
                child: isLoading
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicatorM3E(),
                      )
                    : Text(t('safeModeEnable')),
              ),
            ],
          );
        },
      );
    },
  );
}

void showSafeModeDisableDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      final passwordController = TextEditingController();
      bool isLoading = false;
      String? errorMessage;

      return StatefulBuilder(
        builder: (context, setState) {
          Future<void> disableSafeMode() async {
            isLoading = true;
            errorMessage = null;
            setState(() {});

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

                if (context.mounted) {
                  passwordController.dispose();
                  Navigator.of(context).pop(true);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(t('safeModeDisabled')),
                      backgroundColor: Colors.orange,
                    ),
                  );
                }
              } else {
                errorMessage = t('safeModePasswordIncorrect');
                setState(() {});
              }
            } catch (e) {
              errorMessage = t('safeModePasswordError');
              setState(() {});
            } finally {
              isLoading = false;
              setState(() {});
            }
          }

          return AlertDialog(
            title: Row(
              children: [
                Icon(
                  Icons.lock_rounded,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 12),
                Text(t('safeModeDisable')),
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  t('safeModeToggleDescription'),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: t('safeModeEnterPassword'),
                    hintText: t('safeModePasswordHint'),
                    border: const OutlineInputBorder(),
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
                onPressed: isLoading
                    ? null
                    : () {
                        passwordController.dispose();
                        Navigator.of(context).pop();
                      },
                child: Text(t('cancel')),
              ),
              M3EFilledButton(
                onPressed: isLoading ? null : disableSafeMode,
                child: isLoading
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicatorM3E(),
                      )
                    : Text(t('safeModeDisable')),
              ),
            ],
          );
        },
      );
    },
  );
}

class AboutDialogWithSafeMode extends StatefulWidget {
  const AboutDialogWithSafeMode({super.key});

  @override
  State<AboutDialogWithSafeMode> createState() =>
      _AboutDialogWithSafeModeState();
}

class _AboutDialogWithSafeModeState extends State<AboutDialogWithSafeMode> {
  Timer? _tapResetTimer;

  @override
  void dispose() {
    _tapResetTimer?.cancel();
    super.dispose();
  }

  void _onVersionTapped() {
    final settingsProvider = context.read<SettingsProvider>();
    final isSafeModeEnabled = settingsProvider.safeMode;
    final tapCount = settingsProvider.safeModeTapCount;

    settingsProvider.safeModeTapCount = tapCount + 1;

    _tapResetTimer?.cancel();
    _tapResetTimer = Timer(const Duration(hours: 1), () {
      settingsProvider.safeModeTapCount = 0;
    });

    // Haptic feedback at milestones
    if ((tapCount + 1) % 25 == 0) {
      HapticFeedback.selectionClick();
    }

    // Show remaining taps when Safe Mode is enabled (only from third tap)
    if (isSafeModeEnabled && (tapCount + 1) >= 3) {
      final remaining = 613 - (tapCount + 1);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            t(
              'safeModeTapsRemaining',
            ).replaceAll('{count}', remaining.toString()),
          ),
          duration: const Duration(milliseconds: 800),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }

    // Visual feedback at 100-tap intervals when Safe Mode is disabled
    if (!isSafeModeEnabled && (tapCount + 1) % 100 == 0 && (tapCount + 1) > 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${tapCount + 1}...'),
          duration: const Duration(milliseconds: 500),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }

    // Success at 613 taps
    if ((tapCount + 1) >= 613) {
      settingsProvider.safeModeTapCount = 0;
      _tapResetTimer?.cancel();

      HapticFeedback.heavyImpact();
      _showSafeModeDialog();
    }
  }

  void _showSafeModeDialog() {
    showSafeModeDisableDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    final pubspecFile = File('pubspec.yaml');
    final pubspec = Pubspec.parse(pubspecFile.readAsStringSync());
    final versionString = pubspec.version?.toString() ?? '';
    final parts = versionString.split('+');
    final version = parts[0];
    final buildNumber = parts.length > 1 ? parts[1] : '';

    return AlertDialog(
      scrollable: true,
      title: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            child: Icon(
              Icons.info_rounded,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
              size: 28,
            ),
          ),
          const SizedBox(width: 16),
          Text(t('about')),
        ],
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
            ),
            child: Column(
              children: [
                Image.asset('assets/graphics/icon.png', width: 80, height: 80),
                const SizedBox(height: 16),
                Text(
                  'Updatium',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                GestureDetector(
                  onTap: _onVersionTapped,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 8,
                    ),
                    child: Text(
                      '${t('version')} $version ($buildNumber)',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  t('appDescription'),
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Text(t('developedBy'), style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          TextButton.icon(
            onPressed: () {
              launchUrlString(
                'https://github.com/omeritzics',
                mode: LaunchMode.externalApplication,
              );
            },
            icon: const Icon(Icons.link_rounded, size: 18),
            label: Text('Omer I.S. (@omeritzics)'),
          ),
          const SizedBox(height: 16),
          Text(t('sourceCode'), style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          TextButton.icon(
            onPressed: () {
              launchUrlString(
                'https://github.com/omeritzics/Updatium',
                mode: LaunchMode.externalApplication,
              );
            },
            icon: const Icon(Icons.link_rounded, size: 18),
            label: Text('GitHub'),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(t('close')),
        ),
      ],
    );
  }
}
