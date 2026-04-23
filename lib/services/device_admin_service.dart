import 'package:flutter/services.dart';

class DeviceAdminService {
  static const MethodChannel _channel = MethodChannel(
    'io.github.omeritzics.updatium/device_admin',
  );

  static Future<bool> isDeviceAdminEnabled() async {
    try {
      final bool result = await _channel.invokeMethod('isDeviceAdminEnabled');
      return result;
    } catch (e) {
      return false;
    }
  }

  static Future<void> requestDeviceAdmin() async {
    try {
      await _channel.invokeMethod('requestDeviceAdmin');
    } catch (e) {
      rethrow;
    }
  }

  static Future<bool> isUninstallProtectionEnabled() async {
    try {
      final bool result = await _channel.invokeMethod(
        'isUninstallProtectionEnabled',
      );
      return result;
    } catch (e) {
      return false;
    }
  }

  static Future<bool> enableUninstallProtection() async {
    try {
      final bool result = await _channel.invokeMethod(
        'enableUninstallProtection',
      );
      return result;
    } catch (e) {
      return false;
    }
  }

  static Future<bool> disableUninstallProtection() async {
    try {
      final bool result = await _channel.invokeMethod(
        'disableUninstallProtection',
      );
      return result;
    } catch (e) {
      return false;
    }
  }
}
