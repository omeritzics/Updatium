import 'dart:async';
import 'dart:io';
import 'package:android_system_font/android_system_font.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class NativeFeatures {
  static bool _systemFontLoaded = false;

  static Future<ByteData> _readFileBytes(String path) async {
    var bytes = await File(path).readAsBytes();
    return ByteData.view(bytes.buffer);
  }

  static Future loadSystemFont() async {
    if (_systemFontLoaded) return;
    // Only attempt on Android platform
    if (!Platform.isAndroid) {
      _systemFontLoaded = true;
      return;
    }
    try {
      var fontLoader = FontLoader('SystemFont');
      var fontFilePath = await AndroidSystemFont().getFilePath();
      if (fontFilePath != null) {
        fontLoader.addFont(_readFileBytes(fontFilePath));
        await fontLoader.load();
      }
      _systemFontLoaded = true;
    } catch (e) {
      // System font loading failed - app will use default font
      debugPrint('Could not load system font: $e');
      _systemFontLoaded = true;
    }
  }
}
