import 'package:updatium/providers/settings_provider.dart';

class MockSettingsProvider extends SettingsProvider {
  final Map<String, dynamic> _mockPrefs = {};

  @override
  bool get safeMode => _mockPrefs['safeMode'] ?? false;
  @override
  set safeMode(bool val) {
    _mockPrefs['safeMode'] = val;
    notifyListeners();
  }

  @override
  String? get safeModePassword => _mockPrefs['safeModePassword'] as String?;
  
  @override
  Future<bool> setSafeModePassword(String password) async {
    _mockPrefs['safeModePassword'] = password; // In real app it's hashed
    notifyListeners();
    return true;
  }

  @override
  Future<bool> verifySafeModePassword(String password) async {
    return password == _mockPrefs['safeModePassword'];
  }

  @override
  Future<bool> clearSafeModePassword() async {
    _mockPrefs.remove('safeModePassword');
    notifyListeners();
    return true;
  }

  @override
  bool get safeModePasswordSet => _mockPrefs.containsKey('safeModePassword');

  @override
  DNSServiceProvider get dnsServiceProvider {
    return _mockPrefs['dnsServiceProvider'] ?? DNSServiceProvider.system;
  }

  @override
  set dnsServiceProvider(DNSServiceProvider provider) {
    _mockPrefs['dnsServiceProvider'] = provider;
    notifyListeners();
  }
}
