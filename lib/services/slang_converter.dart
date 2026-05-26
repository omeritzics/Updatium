import 'package:simple_localization/simple_localization.dart' as sl;
export 'package:simple_localization/simple_localization.dart' hide plural;

/// Shorthand for the translation function [tr].
/// 
/// Supports both positional arguments and named arguments.
/// Positional arguments are mapped to placeholders in the translation string
/// using the format `{}`, `{1}`, `{2}`, etc.
/// 
/// Example:
/// ```dart
/// t('invalidURLForSource', args: ['GitHub'])
/// // Translation: "Not a valid GitHub app URL"
/// ```
String t(String key, {List<String>? args, Map<String, String>? namedArgs}) {
  final combinedArgs = <String, String>{};
  
  // Add named args if provided
  if (namedArgs != null) {
    combinedArgs.addAll(namedArgs);
  }
  
  // Map positional args to numbered placeholders
  if (args != null) {
    for (int i = 0; i < args.length; i++) {
      combinedArgs[i.toString()] = args[i];
    }
  }
  
  return sl.tr(key, namedArgs: combinedArgs);
}

extension SlangConverterExtension on String {
  /// Shorthand for the translation extension [.tr()].
  /// 
  /// Supports both positional arguments and named arguments.
  /// 
  /// Example:
  /// ```dart
  /// 'invalidURLForSource'.t(args: ['GitHub'])
  /// ```
  String t({List<String>? args, Map<String, String>? namedArgs}) {
    final combinedArgs = <String, String>{};
    
    if (namedArgs != null) {
      combinedArgs.addAll(namedArgs);
    }
    
    if (args != null) {
      for (int i = 0; i < args.length; i++) {
        combinedArgs[i.toString()] = args[i];
      }
    }
    
    return sl.tr(this, namedArgs: combinedArgs);
  }
}

/// Shorthand and unified bridge for plural translations.
/// 
/// Handles pluralization with support for both positional and named arguments.
/// The [value] parameter is used to determine the plural form.
/// 
/// Standard plural parameter names:
/// - `count` or `n`: The count value (automatically added)
/// 
/// Additional parameters can be passed via [args] (positional) or [namedArgs].
/// Positional args are mapped to `param0`, `param1`, `param2`, etc.
/// 
/// The [name] parameter specifies which placeholder name to use for the count
/// in the translation file (defaults to 'count').
/// 
/// Example:
/// ```dart
/// plural('apps', 5)
/// // Translation: "5 Apps"
/// 
/// plural('xAndNMoreUpdatesAvailable', 3, 
///   namedArgs: {'app': 'Firefox'})
/// // Translation: "Firefox and 3 more apps have updates."
/// 
/// plural('clearedNLogsBeforeXAfterY', 10,
///   namedArgs: {'n': '10', 'before': '2024-01-01', 'after': '2024-01-02'})
/// // Translation: "Cleared 10 logs (before = 2024-01-01, after = 2024-01-02)"
/// ```
String plural(
  String key,
  num value, {
  List<String>? args,
  Map<String, String>? namedArgs,
  String? name,
}) {
  final combinedArgs = namedArgs != null
      ? Map<String, String>.from(namedArgs)
      : <String, String>{};

  // Expose standard count names for Slang compatibility
  combinedArgs['count'] = value.toString();
  combinedArgs['n'] = value.toString();

  // Map positional args to numbered parameters
  if (args != null) {
    for (int i = 0; i < args.length; i++) {
      combinedArgs['param$i'] = args[i];
    }
  }

  // Default placeholder name to 'count' unless specified
  final resolvedName = name ?? 'count';

  return sl.plural(
    key,
    value,
    namedArgs: combinedArgs,
    name: resolvedName,
  );
}
