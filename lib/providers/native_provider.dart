import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart';

class NativeFeatures {
  static bool _systemFontLoaded = false;

  static Future<ByteData> _readFileBytes(String path) async {
    var bytes = await File(path).readAsBytes();
    return ByteData.view(bytes.buffer);
  }

  static Future loadSystemFont() async {
    if (_systemFontLoaded) return;
    var fontLoader = FontLoader('SystemFont');
    // AndroidSystemFont functionality removed
    _systemFontLoaded = true;
  }
}
