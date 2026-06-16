import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:m3e_buttons/m3e_buttons.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:updatium/services/slang_converter.dart';
import 'package:updatium/providers/logs_provider.dart';

class SecurityDisclaimerScreen extends StatefulWidget {
  static const String _disclaimerAcceptedKey = 'security_disclaimer_accepted';

  const SecurityDisclaimerScreen({super.key});

  @override
  State<SecurityDisclaimerScreen> createState() =>
      _SecurityDisclaimerScreenState();

  /// Checks if the security disclaimer has been accepted by the user
  /// Returns true if accepted, false otherwise
  static Future<bool> isDisclaimerAccepted() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getBool(_disclaimerAcceptedKey) ?? false;
    } catch (e) {
      final logsProvider = LogsProvider();
      await logsProvider.add(
        'Failed to check security disclaimer acceptance from SharedPreferences',
        level: LogLevels.error,
      );
      return false;
    }
  }
}

class _SecurityDisclaimerScreenState extends State<SecurityDisclaimerScreen> {
  final List<_DisclaimerItem> _disclaimerItems = [
    _DisclaimerItem(Icons.gavel, 'license', 'licenseText'),
    _DisclaimerItem(Icons.warning_amber, 'disclaimer', 'disclaimerText'),
    _DisclaimerItem(Icons.privacy_tip, 'privacy', 'privacyText'),
  ];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 32),
                    _buildHeader(colorScheme),
                    const SizedBox(height: 32),
                    _buildTitle(colorScheme),
                    const SizedBox(height: 24),
                    _buildContent(colorScheme),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
            _buildActions(colorScheme),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(ColorScheme colorScheme) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.security,
        size: 64,
        color: colorScheme.onPrimaryContainer,
      ),
    );
  }

  Widget _buildTitle(ColorScheme colorScheme) {
    return Text(
      t('securityDisclaimerTitle'),
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: colorScheme.onSurface,
          ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildContent(ColorScheme colorScheme) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colorScheme.surface.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: _disclaimerItems.map((item) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: _buildDisclaimerItem(item, colorScheme),
          );
        }).toList()
          ..removeLast(), // Remove padding from last item
      ),
    );
  }

  Widget _buildDisclaimerItem(_DisclaimerItem item, ColorScheme colorScheme) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(item.icon, size: 20, color: colorScheme.primary),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                t(item.titleKey),
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurfaceVariant,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                t(item.contentKey),
                style: TextStyle(
                  color: colorScheme.onSurfaceVariant,
                  fontSize: 14,
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildActions(ColorScheme colorScheme) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: double.infinity,
              child: M3EFilledButton(
                onPressed: () async {
                  HapticFeedback.lightImpact();
                  if (!mounted) return;
                  await _saveDisclaimerAccepted();
                  if (mounted) {
                    Navigator.of(context).pop(true);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    t('acceptAndContinue'),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: M3EOutlinedButton(
                onPressed: () {
                  HapticFeedback.lightImpact();
                  SystemNavigator.pop();
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    t('decline'),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: colorScheme.error,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _saveDisclaimerAccepted() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(
        SecurityDisclaimerScreen._disclaimerAcceptedKey,
        true,
      );
    } catch (e) {
      final logsProvider = LogsProvider();
      await logsProvider.add(
        'Failed to save security disclaimer acceptance to SharedPreferences',
        level: LogLevels.error,
      );
    }
  }
}

class _DisclaimerItem {
  final IconData icon;
  final String titleKey;
  final String contentKey;

  _DisclaimerItem(this.icon, this.titleKey, this.contentKey);
}
