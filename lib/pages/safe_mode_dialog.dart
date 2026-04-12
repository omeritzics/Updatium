import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';
import 'package:updatium/providers/settings_provider.dart';
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
              errorMessage = tr('safeModePasswordTooShort');
              setState(() {});
              return;
            }

            if (passwordController.text != confirmPasswordController.text) {
              errorMessage = tr('safeModePasswordMismatch');
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
                      content: Text(tr('safeModeEnabled')),
                      backgroundColor: Colors.green,
                    ),
                  );

                  if (!settingsProvider.safeModeHintShown) {
                    Future.delayed(const Duration(seconds: 2), () {
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(tr('safeModeEnabledHint')),
                            duration: const Duration(seconds: 5),
                            action: SnackBarAction(
                              label: tr('gotIt'),
                              onPressed: () {
                                settingsProvider.safeModeHintShown = true;
                              },
                            ),
                          ),
                        );
                      }
                    });
                  }
                }
              } else {
                errorMessage = tr('safeModePasswordError');
                setState(() {});
              }
            } catch (e) {
              errorMessage = tr('safeModePasswordError');
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
                Text(tr('safeModeEnable')),
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tr('safeModeSetupDescription'),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: tr('safeModeSetPassword'),
                    hintText: tr('safeModePasswordHint'),
                    border: const OutlineInputBorder(),
                  ),
                  enabled: !isLoading,
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: tr('safeModeConfirmPassword'),
                    hintText: tr('safeModePasswordHint'),
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
                child: Text(tr('cancel')),
              ),
              FilledButton(
                onPressed: isLoading ? null : setupPassword,
                child: isLoading
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : Text(tr('safeModeEnable')),
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

                if (context.mounted) {
                  passwordController.dispose();
                  Navigator.of(context).pop(true);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(tr('safeModeDisabled')),
                      backgroundColor: Colors.orange,
                    ),
                  );
                }
              } else {
                errorMessage = tr('safeModePasswordIncorrect');
                setState(() {});
              }
            } catch (e) {
              errorMessage = tr('safeModePasswordError');
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
                Text(tr('safeModeDisable')),
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tr('safeModeToggleDescription'),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: tr('safeModeEnterPassword'),
                    hintText: tr('safeModePasswordHint'),
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
                child: Text(tr('cancel')),
              ),
              FilledButton(
                onPressed: isLoading ? null : disableSafeMode,
                child: isLoading
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : Text(tr('safeModeDisable')),
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
            tr(
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
    const version = '26.3.0';
    const buildNumber = '26020419';

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
          Text(tr('about')),
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
                      'Version $version ($buildNumber)',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  tr('appDescription'),
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Text(
            tr('developedBy'),
            style: Theme.of(context).textTheme.titleSmall,
          ),
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
            style: TextButton.styleFrom(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.zero,
            ),
          ),
          const SizedBox(height: 16),
          Text(tr('sourceCode'), style: Theme.of(context).textTheme.titleSmall),
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
            style: TextButton.styleFrom(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.zero,
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(tr('close')),
        ),
      ],
    );
  }
}
