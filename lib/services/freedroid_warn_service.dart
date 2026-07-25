import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class FreeDroidWarnService {
  // Encapsulate the channel inside the class definition
  static const MethodChannel _channel = MethodChannel(
    'io.github.omeritzics.updatium/freedroid_warn',
  );

  static Future<bool> _shouldShowWarning() async {
    try {
      final result = await _channel.invokeMethod<bool>('shouldShowWarning');
      return result ?? false;
    } catch (e) {
      return false;
    }
  }

  static Future<Map<String, String>> _getWarningStrings() async {
    try {
      final result = await _channel.invokeMethod<Map<dynamic, dynamic>>(
        'getWarningStrings',
      );
      if (result != null) {
        return result.map(
          (key, value) => MapEntry(key.toString(), value.toString()),
        );
      }
      return {};
    } catch (e) {
      return {};
    }
  }

  static Future<bool> _saveWarningVersion() async {
    try {
      final result = await _channel.invokeMethod<bool>('saveWarningVersion');
      return result ?? false;
    } catch (e) {
      return false;
    }
  }

  /// Public entry point to trigger the warning dialog sequence.
  static Future<void> showWarningDialog(BuildContext context) async {
    final shouldShow = await _shouldShowWarning();
    if (!shouldShow || !context.mounted) return;

    final strings = await _getWarningStrings();
    if (strings.isEmpty || !context.mounted) return;

    // Helper to abstract external url launching logic cleanly
    Future<void> launchExternalUrl(String urlString) async {
      final uri = Uri.parse(urlString);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      }
    }

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        content: Text(strings['message'] ?? ''),
        actions: [
          TextButton(
            onPressed: () => launchExternalUrl('https://keepandroidopen.org'),
            child: Text(strings['moreInfo'] ?? 'Details'),
          ),
          TextButton(
            onPressed: () => launchExternalUrl(
              'https://github.com/woheller69/FreeDroidWarn?tab=readme-ov-file#solutions',
            ),
            child: Text(strings['solution'] ?? 'Solution'),
          ),
          TextButton(
            onPressed: () async {
              await _saveWarningVersion();
              if (context.mounted) {
                Navigator.of(context).pop();
              }
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}

// FreeDroidWarn integration
const _freedroidWarnChannel = MethodChannel(
  'io.github.omeritzics.updatium/freedroid_warn',
);

Future<bool> _shouldShowWarning() async {
  try {
    final result = await _freedroidWarnChannel.invokeMethod<bool>(
      'shouldShowWarning',
    );
    return result ?? false;
  } catch (e) {
    return false;
  }
}

Future<Map<String, String>> _getWarningStrings() async {
  try {
    final result = await _freedroidWarnChannel
        .invokeMethod<Map<dynamic, dynamic>>('getWarningStrings');
    if (result != null) {
      return result.map(
        (key, value) => MapEntry(key.toString(), value.toString()),
      );
    }
    return {};
  } catch (e) {
    return {};
  }
}

Future<bool> _saveWarningVersion() async {
  try {
    final result = await _freedroidWarnChannel.invokeMethod<bool>(
      'saveWarningVersion',
    );
    return result ?? false;
  } catch (e) {
    return false;
  }
}

Future<void> showFreeDroidWarnDialog(BuildContext context) async {
  final shouldShow = await _shouldShowWarning();
  if (!shouldShow || !context.mounted) return;

  final strings = await _getWarningStrings();
  if (strings.isEmpty || !context.mounted) return;

  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      content: Text(strings['message'] ?? ''),
      actions: [
        TextButton(
          onPressed: () async {
            final uri = Uri.parse('https://keepandroidopen.org');
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri, mode: LaunchMode.externalApplication);
            }
          },
          child: Text(strings['moreInfo'] ?? 'Details'),
        ),
        TextButton(
          onPressed: () async {
            final uri = Uri.parse(
              'https://github.com/woheller69/FreeDroidWarn?tab=readme-ov-file#solutions',
            );
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri, mode: LaunchMode.externalApplication);
            }
          },
          child: Text(
            strings['solution'] ?? 'Solution',
            style: const TextStyle(color: Colors.green),
          ),
        ),
        TextButton(
          onPressed: () async {
            await _saveWarningVersion();
            if (context.mounted) {
              Navigator.of(context).pop();
            }
          },
          child: const Text('OK'),
        ),
      ],
    ),
  );
}
