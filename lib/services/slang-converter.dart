import 'package:simple_localization/simple_localization.dart' as sl;
export 'package:simple_localization/simple_localization.dart' hide plural;

/// Parameter mapping by key for complex plural keys.
const Map<String, List<String>> _pluralParamMappings = {
  'bgUpdateGotErrorRetryInMinutes': ['error', 'count'],
  'clearedNLogsBeforeXAfterY': ['n', 'before', 'after'],
};

/// 1. Internal global function to avoid naming collisions with the extension
String _globalTranslate(
  String key, {
  List<String>? args,
  Map<String, dynamic>? namedArgs,
}) {
  if (args != null && args.isNotEmpty) {
    return sl.tr(key, args: args);
  }

  if (namedArgs != null && namedArgs.isNotEmpty) {
    final positionalValues = namedArgs.values.map((v) => v.toString()).toList();
    return sl.tr(key, args: positionalValues);
  }

  return sl.tr(key);
}

/// 2. Public global shorthand function
String t(String key, {List<String>? args, Map<String, dynamic>? namedArgs}) =>
    _globalTranslate(key, args: args, namedArgs: namedArgs);

/// 3. Extension method updated to safely call the internal global function
extension SlangConverterExtension on String {
  String t({List<String>? args, Map<String, dynamic>? namedArgs}) =>
      _globalTranslate(this, args: args, namedArgs: namedArgs);
}

/// Plural function remains safe and unchanged
String plural(
  String key,
  num value, {
  List<String>? args,
  Map<String, dynamic>? namedArgs,
  String? name,
}) {
  final newNamedArgs = <String, dynamic>{
    'count': value,
    'n': value,
    ...?namedArgs,
  };

  if (args != null && args.isNotEmpty) {
    if (_pluralParamMappings.containsKey(key)) {
      final paramNames = _pluralParamMappings[key]!;
      for (int i = 0; i < args.length; i++) {
        if (i < paramNames.length) {
          newNamedArgs[paramNames[i]] = args[i];
        }
      }
    } else if (key.startsWith('xAndNMoreUpdates')) {
      newNamedArgs['app'] = args[0];
      if (args.length > 1) {
        newNamedArgs['count'] = args[1];
      }
    } else {
      newNamedArgs['app'] = args[0];
      newNamedArgs['error'] = args[0];
      newNamedArgs['param'] = args[0];

      for (int i = 0; i < args.length; i++) {
        newNamedArgs['param$i'] = args[i];
      }
    }
  }

  final resolvedName = name ?? 'count';
  final finalNamedArgs = newNamedArgs.map((k, v) => MapEntry(k, v.toString()));

  return sl.plural(
    key,
    value,
    args: args,
    namedArgs: finalNamedArgs,
    name: resolvedName,
  );
}

/// Locale Management Bridge
void setAppLocale(String localeCode) {
  // Ready for later use.
}
