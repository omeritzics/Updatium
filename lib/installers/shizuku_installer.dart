import 'dart:io';

import 'package:simple_localization/simple_localization.dart';
import 'package:updatium/custom_errors.dart';
import 'package:updatium/installers/installer.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:shizuku_apk_installer/shizuku_apk_installer.dart';
import 'package:updatium/services/slang_converter.dart';

/// Installs via the Shizuku/Dhizuku/Sui binder API for elevated installs with
/// no user-facing permission dialog. Supports silent installs.
class ShizukuInstaller extends Installer {
  ShizukuInstaller(super.settingsProvider);

  @override
  String get modeKey => 'shizuku';

  @override
  Future<bool> canInstallSilently(App app) async => true;

  @override
  Future<bool> checkPermission() async =>
      (await ShizukuApkInstaller().checkPermission())?.startsWith('granted') ??
      false;

  @override
  Future<void> ensurePermission() async {
    switch ((await ShizukuApkInstaller().checkPermission())) {
      case 'services_not_found':
        throw UpdatiumError(t('shizukuBinderNotFound'));
      case 'old_shizuku':
        throw UpdatiumError(t('shizukuOld'));
      case 'old_android_with_adb':
        throw UpdatiumError(t('shizukuOldAndroidWithADB'));
      case 'denied':
        throw UpdatiumError(t('cancelled'));
    }
  }

  @override
  Future<InstallResult> installApk(
    List<String> apkFilePaths, {
    required String appId,
    Map<String, dynamic> installOptions = const {},
  }) async {
    final fakeInstallSource =
        installOptions['shizukuPretendToBeGooglePlay'] == true
        ? 'com.android.vending'
        : '';
    final uris = apkFilePaths.map((p) => File(p).uri.toString()).toList();
    int? code;
    if (uris.length > 1) {
      code = await ShizukuApkInstaller().installAABSplits(
        uris,
        fakeInstallSource,
      );
    } else {
      code = await ShizukuApkInstaller().installAPK(
        uris.first,
        fakeInstallSource,
      );
    }
    return InstallResult.fromPlatformCode(code);
  }
}
