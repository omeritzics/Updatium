import 'package:updatium/providers/source_provider.dart';

String lowerCaseIfEnglish(String str) => isEnglish() ? str.toLowerCase() : str;

String lowerCaseUnlessLang(
  String str,
  String lang,
  dynamic currentLanguageCode,
) => currentLanguageCode == lang ? str : str.toLowerCase();
