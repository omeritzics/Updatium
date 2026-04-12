import 'dart:async';

class NativeFeatures {
  static bool _systemFontLoaded = false;

  static Future loadSystemFont() async {
    if (_systemFontLoaded) return;
    // AndroidSystemFont functionality removed
    _systemFontLoaded = true;
  }
}
