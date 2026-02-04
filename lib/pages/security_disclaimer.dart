import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:easy_localization/easy_localization.dart';

class SecurityDisclaimerScreen extends StatefulWidget {
  const SecurityDisclaimerScreen({super.key});

  @override
  State<SecurityDisclaimerScreen> createState() => _SecurityDisclaimerScreenState();
}

class _SecurityDisclaimerScreenState extends State<SecurityDisclaimerScreen> {
  static const String _disclaimerAcceptedKey = 'security_disclaimer_accepted';

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    
    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Security Icon
                    Container(
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
                    ),
                    
                    const SizedBox(height: 32),
                    
                    // Title
                    Text(
                      tr('securityDisclaimerTitle'),
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurface,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    
                    const SizedBox(height: 24),
                    
                    // Disclaimer Content
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: colorScheme.surfaceVariant,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildDisclaimerItem(
                            context,
                            Icons.gavel,
                            tr('license'),
                            tr('licenseText'),
                          ),
                          
                          const SizedBox(height: 16),
                          
                          _buildDisclaimerItem(
                            context,
                            Icons.warning_amber,
                            tr('disclaimer'),
                            tr('disclaimerText'),
                          ),
                          
                          const SizedBox(height: 16),
                          
                          _buildDisclaimerItem(
                            context,
                            Icons.privacy_tip,
                            tr('privacy'),
                            tr('privacyText'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
              // Action Buttons
              Column(
                children: [
                  // Accept Button
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: () async {
                        HapticFeedback.lightImpact();
                        await _saveDisclaimerAccepted();
                        if (mounted) {
                          Navigator.of(context).pop(true);
                        }
                      },
                      style: FilledButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: const StadiumBorder(),
                      ),
                      child: Text(
                        tr('acceptAndContinue'),
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 12),
                  
                  // Decline Button
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        HapticFeedback.lightImpact();
                        SystemNavigator.pop();
                      },
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: const StadiumBorder(),
                      ),
                      child: Text(
                        tr('decline'),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: colorScheme.error,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDisclaimerItem(
    BuildContext context,
    IconData icon,
    String title,
    String content,
  ) {
    final colorScheme = Theme.of(context).colorScheme;
    
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 20,
          color: colorScheme.primary,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurfaceVariant,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                content,
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

  Future<void> _saveDisclaimerAccepted() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_disclaimerAcceptedKey, true);
    } catch (e) {
      // Handle error gracefully, but allow user to continue
      print('Error saving disclaimer acceptance: $e');
    }
  }

  static Future<bool> isDisclaimerAccepted() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getBool(_disclaimerAcceptedKey) ?? false;
    } catch (e) {
      print('Error checking disclaimer acceptance: $e');
      return false;
    }
  }
}
