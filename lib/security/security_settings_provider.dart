import 'dart:async';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path/path.dart' as path;
import 'dart:convert';
import 'package:updatium/security/yara_scanner.dart';

/// Security Settings Provider
class SecuritySettingsProvider {
  static const String _keyAutoScan = 'yara_auto_scan';
  static const String _keyAutoUpdate = 'yara_auto_update';
  static const String _keyUpdateInterval = 'yara_update_interval';
  static const String _keyThreatLevel = 'yara_threat_level';
  static const String _keyQuarantineInfected = 'yara_quarantine_infected';
  static const String _keyLastUpdate = 'yara_last_update';
  static const String _keyRulesVersion = 'yara_rules_version';

  final SharedPreferences _prefs;
  late YARAConfig _config;
  late YARAScanner _scanner;

  SecuritySettingsProvider(this._prefs) {
    _config = YARAConfig(
      rulesDirectory: _getRulesDirectory(),
      updateInterval: Duration(hours: getUpdateInterval()),
      enableAutoUpdate: getAutoUpdateEnabled(),
    );
    _scanner = YARAScanner.getInstance(_config);
  }

  static Future<SecuritySettingsProvider> create() async {
    final prefs = await SharedPreferences.getInstance();
    return SecuritySettingsProvider(prefs);
  }

  /// Get the directory for YARA rules
  Future<String> _getRulesDirectory() async {
    final appDir = await getApplicationSupportDirectory();
    final rulesDir = Directory('${appDir.path}/yara_rules');
    return rulesDir.path;
  }

  // Auto Scan Settings
  bool getAutoScanEnabled() => _prefs.getBool(_keyAutoScan) ?? true;
  Future<void> setAutoScanEnabled(bool enabled) => _prefs.setBool(_keyAutoScan, enabled);

  // Auto Update Settings
  bool getAutoUpdateEnabled() => _prefs.getBool(_keyAutoUpdate) ?? true;
  Future<void> setAutoUpdateEnabled(bool enabled) => _prefs.setBool(_keyAutoUpdate, enabled);

  // Update Interval Settings
  int getUpdateInterval() => _prefs.getInt(_keyUpdateInterval) ?? 24; // hours
  Future<void> setUpdateInterval(int hours) => _prefs.setInt(_keyUpdateInterval, hours);

  // Threat Level Filter
  int getThreatLevelFilter() => _prefs.getInt(_keyThreatLevel) ?? 1;
  Future<void> setThreatLevelFilter(int level) => _prefs.setInt(_keyThreatLevel, level);

  // Quarantine Settings
  bool getQuarantineInfected() => _prefs.getBool(_keyQuarantineInfected) ?? true;
  Future<void> setQuarantineInfected(bool enabled) => _prefs.setBool(_keyQuarantineInfected, enabled);

  // Last Update Tracking
  DateTime? getLastUpdate() {
    final timestamp = _prefs.getInt(_keyLastUpdate);
    return timestamp != null ? DateTime.fromMillisecondsSinceEpoch(timestamp) : null;
  }

  Future<void> setLastUpdate(DateTime update) => _prefs.setInt(_keyLastUpdate, update.millisecondsSinceEpoch);

  // Rules Version Tracking
  String? getRulesVersion() => _prefs.getString(_keyRulesVersion);
  Future<void> setRulesVersion(String version) => _prefs.setString(_keyRulesVersion, version);

  /// Initialize the security scanner
  Future<void> initialize() async {
    await _scanner.initialize();
  }

  /// Scan an APK file
  Future<YARAScanResult> scanAPK(String apkPath) async {
    if (!getAutoScanEnabled()) {
      return YARAScanResult.error(apkPath, 'Auto-scan is disabled');
    }

    final result = await _scanner.scanFile(apkPath);
    
    // Handle quarantine if enabled
    if (result.isInfected && getQuarantineInfected()) {
      await _quarantineFile(apkPath, result);
    }

    return result;
  }

  /// Move infected file to quarantine
  Future<void> _quarantineFile(String filePath, YARAScanResult result) async {
    try {
      final quarantineDir = Directory('${_getRulesDirectory()}/quarantine');
      if (!await quarantineDir.exists()) {
        await quarantineDir.create(recursive: true);
      }

      final originalFile = File(filePath);
      final fileName = path.basename(filePath);
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final quarantinedPath = '${quarantineDir.path}/$timestamp-$fileName';

      try {
        await originalFile.rename(quarantinedPath);
      } catch (_) {
        await originalFile.copy(quarantinedPath);
        await originalFile.delete();
      }

      final reportPath = '${quarantineDir.path}/$timestamp-$fileName-report.json';
      final report = {
        'originalPath': filePath,
        'quarantinedPath': quarantinedPath,
        'scanTime': result.scanTime.toIso8601String(),
        'matches': result.matches.map((m) => m.toJson()).toList(),
      };

      await File(reportPath).writeAsString(jsonEncode(report));
      print('File quarantined: $quarantinedPath');
    } catch (e) {
      print('Error quarantining file: $e');
    }
  }

  /// Update YARA rules
  Future<void> updateRules() async {
    try {
      await _scanner.updateRules();
      await setLastUpdate(DateTime.now());
      await setRulesVersion('latest-${DateTime.now().millisecondsSinceEpoch}');
    } catch (e) {
      // Re-throw the exception so callers can handle it
      throw Exception('Failed to update YARA rules: $e');
    }
  }

  /// Get scanner instance
  YARAScanner get scanner => _scanner;

  /// Dispose resources
  void dispose() {
    // Don't dispose singleton here, let it be managed globally
  }
}
