import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:updatium/generated/app_localizations.dart';

/// Service to handle the one-time GitHub star prompt dialog
class GitHubStarPrompt {
  static const String _firstLaunchDateKey = 'first_launch_date';
  static const String _hasShownStarPromptKey = 'has_shown_star_prompt';
  static const String _githubUrl = 'https://github.com/omeritzics/Updatium';
  static const int _daysUntilPrompt = 7;

  /// Initialize the star prompt service and show dialog if conditions are met
  static Future<void> initializeAndCheck(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();

    // Set first launch date if not already set
    if (!prefs.containsKey(_firstLaunchDateKey)) {
      await prefs.setInt(
        _firstLaunchDateKey,
        DateTime.now().millisecondsSinceEpoch,
      );
    }

    // Check if prompt should be shown
    if (prefs.getBool(_hasShownStarPromptKey) != true) {
      final firstLaunchDate = prefs.getInt(_firstLaunchDateKey);
      if (firstLaunchDate != null) {
        final firstLaunch = DateTime.fromMillisecondsSinceEpoch(
          firstLaunchDate,
        );
        final now = DateTime.now();
        final daysSinceFirstLaunch = now.difference(firstLaunch).inDays;

        if (daysSinceFirstLaunch >= _daysUntilPrompt) {
          // Show the dialog after a short delay to ensure UI is ready
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _showStarPromptDialog(context);
          });
        }
      }
    }
  }

  /// Show the GitHub star prompt dialog
  static void _showStarPromptDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enjoying Updatium?'),
          content: Text('Updatium is a voluntary, open-source community project developed in my free time. If you\'d like to support the project, please consider starring it on GitHub to help us reach more users and contributors. You won\'t be nudged about this again. Thank you in advance! :)'),
          actions: [
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop();
                await _markPromptAsShown();
              },
              child: Text('Don\'t show again'),
            ),
            FilledButton(
              onPressed: () async {
                Navigator.of(context).pop();
                await _launchGitHub();
                await _markPromptAsShown();
              },
              child: Text('Star on GitHub'),
            ),
          ],
        );
      },
    );
  }

  /// Launch the GitHub URL in the default browser
  static Future<void> _launchGitHub() async {
    final uri = Uri.parse(_githubUrl);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  /// Mark the prompt as shown to prevent future displays
  static Future<void> _markPromptAsShown() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_hasShownStarPromptKey, true);
  }

  /// Reset all stored data (for testing purposes)
  static Future<void> reset() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_firstLaunchDateKey);
    await prefs.remove(_hasShownStarPromptKey);
  }
}
