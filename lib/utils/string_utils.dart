import 'package:updatium/providers/settings_provider.dart';

String capitalizeFirst(String s) =>
    s.isEmpty ? s : s[0].toUpperCase() + s.substring(1);

bool isUpdatiumVariant(String id) =>
    id == updatiumId ||
    id == '$updatiumId.fdroid' ||
    id == '$updatiumId.debug';

/// Builds a regex alternation pattern from a list of hostname strings,
/// escaping dots.
String getSourceRegex(List<String> hosts) {
  return '(${hosts.join('|').replaceAll('.', '\\.')})';
}
