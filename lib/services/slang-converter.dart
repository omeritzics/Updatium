import 'package:flutter/widgets.dart';
import 'package:slang/slang.dart';
import 'package:updatium/gen/strings.g.dart';

export 'package:slang/slang.dart';

/// Global translation accessor (Slang provides this as `t`)
/// Usage: t['key'] or t.keyName (for known getters)
Translations get tr => LocaleSettings.instance.translations;

/// Shorthand for the translation function using Slang's operator[]
/// Usage: t('key', args: ['value'])
@Deprecated('Use String.t extension method instead: \'key\'.t(args: [\'value\'])')
String t(String key, {List<String>? args}) {
  final translation = LocaleSettings.instance.translations[key];
  if (args != null && args.isNotEmpty && translation != null) {
    var result = translation.toString();
    // Handle {} placeholder
    if (args.isNotEmpty) {
      result = result.replaceAll('{}', args[0]);
    }
    for (int i = 0; i < args.length; i++) {
      result = result.replaceAll('{$i}', args[i]);
    }
    return result;
  }
  return translation ?? key;
}

extension SlangConverterExtension on String {
  /// Shorthand for the translation extension.
  /// Usage: 'key'.t(args: ['value'])
  String t({List<String>? args}) {
    final translation = LocaleSettings.instance.translations[this];
    if (translation == null) return this;
    
    var result = translation.toString();
    
    // Handle {} placeholder (legacy format)
    if (args != null && args.isNotEmpty) {
      result = result.replaceAll('{}', args[0]);
    }
    
    return result;
  }
}

/// Plural translation helper using Slang's generated methods
/// This provides backward compatibility with the old plural() function signature
String plural(
  String key,
  num value, {
  List<String>? args,
  Map<String, String>? namedArgs,
  String? name,
}) {
  // Get translations for context-based plurals
  final translations = LocaleSettings.instance.translations;
  
  switch (key) {
    case 'removeAppQuestion':
      return translations.removeAppQuestion(n: value);
    case 'tooManyRequestsTryAgainInMinutes':
      return translations.tooManyRequestsTryAgainInMinutes(n: value);
    case 'bgUpdateGotErrorRetryInMinutes':
      // Handle named args for error message
      if (namedArgs != null && namedArgs['error'] != null && namedArgs['count'] != null) {
        return translations.bgUpdateGotErrorRetryInMinutes(
          n: num.parse(namedArgs['count']!),
        );
      }
      return translations.bgUpdateGotErrorRetryInMinutes(n: value);
    case 'bgCheckFoundUpdatesWillNotifyIfNeeded':
      return translations.bgCheckFoundUpdatesWillNotifyIfNeeded(n: value);
    case 'apps':
      return translations.apps(n: value);
    case 'url':
      return translations.url(n: value);
    case 'minute':
      return translations.minute(n: value);
    case 'hour':
      return translations.hour(n: value);
    case 'day':
      return translations.day(n: value);
    case 'clearedNLogsBeforeXAfterY':
      if (namedArgs != null) {
        return translations.clearedNLogsBeforeXAfterY(
          n: num.parse(namedArgs['n'] ?? '0'),
        );
      }
      return translations.clearedNLogsBeforeXAfterY(n: value);
    case 'xAndNMoreUpdatesAvailable':
      if (namedArgs != null && namedArgs['app'] != null) {
        // Note: This would need the full plural method signature with app param
        return translations.xAndNMoreUpdatesAvailable(n: value);
      }
      return translations.xAndNMoreUpdatesAvailable(n: value);
    case 'xAndNMoreUpdatesInstalled':
      return translations.xAndNMoreUpdatesInstalled(n: value);
    case 'xAndNMoreUpdatesFailed':
      return translations.xAndNMoreUpdatesFailed(n: value);
    case 'xAndNMoreUpdatesPossiblyInstalled':
      return translations.xAndNMoreUpdatesPossiblyInstalled(n: value);
    case 'apk':
      return translations.apk(n: value);
    case 'certificateHash':
      return translations.certificateHash(n: value);
    case 'appRemoved':
      return translations.appRemoved(n: value);
    default:
      return value.toString();
  }
}