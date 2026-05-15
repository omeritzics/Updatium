import 'package:simple_localization/simple_localization.dart';
export 'package:simple_localization/simple_localization.dart';

/// Shorthand for the translation function [tr].
String t(String key, {List<String>? args}) => tr(key, args: args);

extension SlangConverterExtension on String {
  /// Shorthand for the translation extension [.tr()].
  String t({List<String>? args}) => tr(this, args: args);
}
