import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

void showSafeModeDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      final passwordController = TextEditingController();
      final confirmPasswordController = TextEditingController();
      bool isLoading = false;
      String? errorMessage;

      final settingsProvider = context.watch<SettingsProvider>();
      final passwordSet = settingsProvider.safeModePasswordSet;

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
                        settingsProvider.safeModeHintShown = true;
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

          Future<void> toggleSafeMode() async {
            isLoading = true;
            errorMessage = null;
            setState(() {});

            try {
              final settingsProvider = context.read<SettingsProvider>();
              final success = await settingsProvider.verifySafeModePassword(
                passwordController.text,
              );

              if (success) {
                final newState = !settingsProvider.safeMode;
                settingsProvider.safeMode = newState;

                if (!newState) {
                  await settingsProvider.clearSafeModePassword();
                  settingsProvider.safeModeHintShown = false;
                }

                if (context.mounted) {
                  Navigator.of(context).pop(true);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        newState
                            ? tr('safeModeEnabled')
                            : tr('safeModeDisabled'),
                      ),
                      backgroundColor: newState ? Colors.green : Colors.orange,
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
                Text(
                  passwordSet ? tr('safeModeDisable') : tr('safeModeEnable'),
                ),
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  passwordSet
                      ? tr('safeModeToggleDescription')
                      : tr('safeModeSetupDescription'),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 20),
                if (!passwordSet) ...[
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
                ] else ...[
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: tr('safeModeEnterPassword'),
                      hintText: tr('safeModePasswordHint'),
                      border: const OutlineInputBorder(),
                    ),
                    enabled: !isLoading,
                    onSubmitted: (_) => toggleSafeMode(),
                  ),
                ],
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
                onPressed: isLoading
                    ? null
                    : (passwordSet ? toggleSafeMode : setupPassword),
                child: isLoading
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : Text(
                        passwordSet
                            ? tr('safeModeDisable')
                            : tr('safeModeEnable'),
                      ),
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
  int _versionTapCount = 0;
  Timer? _tapResetTimer;

  @override
  void dispose() {
    _tapResetTimer?.cancel();
    super.dispose();
  }

  void _onVersionTapped() {
    final settingsProvider = context.read<SettingsProvider>();
    final isSafeModeEnabled = settingsProvider.safeMode;

    setState(() {
      _versionTapCount++;
    });

    _tapResetTimer?.cancel();
    _tapResetTimer = Timer(const Duration(seconds: 2), () {
      setState(() {
        _versionTapCount = 0;
      });
    });

    // Haptic feedback at milestones
    if (_versionTapCount % 25 == 0) {
      HapticFeedback.selectionClick();
    }

    // Show remaining taps when Safe Mode is enabled (only from third tap)
    if (isSafeModeEnabled && _versionTapCount >= 3) {
      final remaining = 613 - _versionTapCount;
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
    if (!isSafeModeEnabled &&
        _versionTapCount % 100 == 0 &&
        _versionTapCount > 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('$_versionTapCount...'),
          duration: const Duration(milliseconds: 500),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }

    // Success at 613 taps
    if (_versionTapCount >= 613) {
      setState(() {
        _versionTapCount = 0;
      });
      _tapResetTimer?.cancel();

      HapticFeedback.heavyImpact();
      _showSafeModeDialog();
    }
  }

  void _showSafeModeDialog() {
    showSafeModeDialog(context);
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
