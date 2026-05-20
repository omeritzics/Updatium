import 'package:simple_localization/simple_localization.dart' as sl;
export 'package:simple_localization/simple_localization.dart' hide plural;

/// Shorthand for the translation function [tr].
String t(String key, {List<String>? args}) => sl.tr(key, args: args);

extension SlangConverterExtension on String {
  /// Shorthand for the translation extension [.tr()].
  String t({List<String>? args}) => sl.tr(this, args: args);
}

/// Shorthand and unified bridge for plural translations.
String plural(
  String key,
  num value, {
  List<String>? args,
  Map<String, String>? namedArgs,
  String? name,
}) {
  final newNamedArgs = namedArgs != null
      ? Map<String, String>.from(namedArgs)
      : <String, String>{};

  // Expose standard count names for Slang compatibility
  newNamedArgs['count'] = value.toString();
  newNamedArgs['n'] = value.toString();

  // Smart translation: Map positional args to named parameters based on the key
  if (args != null && args.isNotEmpty) {
    if (key.startsWith('xAndNMoreUpdates')) {
      // First arg is the app name, second is the remaining count
      newNamedArgs['app'] = args[0];
      newNamedArgs['count'] = args.length > 1 ? args[1] : value.toString();
    } else if (key == 'bgUpdateGotErrorRetryInMinutes') {
      // First arg is the error string, second is the retry count
      newNamedArgs['error'] = args[0];
      newNamedArgs['count'] = args.length > 1 ? args[1] : value.toString();
    } else if (key == 'clearedNLogsBeforeXAfterY') {
      newNamedArgs['n'] = args[0];
      if (args.length > 1) newNamedArgs['before'] = args[1];
      if (args.length > 2) newNamedArgs['after'] = args[2];
    } else {
      // General fallbacks
      newNamedArgs['app'] = args[0];
      newNamedArgs['error'] = args[0];
      newNamedArgs['param'] = args[0];
      for (int i = 0; i < args.length; i++) {
        newNamedArgs['param$i'] = args[i];
      }
    }
  }

  // default placeholder name to 'count' unless specified (like 'n' in logs_provider.dart)
  final resolvedName = name ?? 'count';

  return sl.plural(
    key,
    value,
    args: args,
    namedArgs: newNamedArgs,
    name: resolvedName,
  );
}
