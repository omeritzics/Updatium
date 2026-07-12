import 'package:flutter_test/flutter_test.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/services/dns_service.dart';
import 'test_utils.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('DNSService Tests', () {
    test('initializeFromSettings updates current provider', () {
      final dnsService = DNSService();
      final settings = MockSettingsProvider();

      // Test Cloudflare DNS
      settings.dnsServiceProvider = DNSServiceProvider.cloudflare;
      dnsService.initializeFromSettings(settings);
      expect(dnsService.currentProvider, equals(DNSProvider.cloudflare));

      // Test Quad9 DNS
      settings.dnsServiceProvider = DNSServiceProvider.quad9;
      dnsService.initializeFromSettings(settings);
      expect(dnsService.currentProvider, equals(DNSProvider.quad9));

      // Test System DNS
      settings.dnsServiceProvider = DNSServiceProvider.system;
      dnsService.initializeFromSettings(settings);
      expect(dnsService.currentProvider, equals(DNSProvider.system));
    });

    test('getProviderName returns correct name', () {
      expect(
        DNSService.getProviderName(DNSProvider.system),
        equals('System Default'),
      );
      expect(
        DNSService.getProviderName(DNSProvider.cloudflare),
        equals('Cloudflare DNS'),
      );
      expect(
        DNSService.getProviderName(DNSProvider.quad9),
        equals('Quad9 DNS'),
      );
      expect(
        DNSService.getProviderName(DNSProvider.opendns),
        equals('OpenDNS'),
      );
      expect(
        DNSService.getProviderName(DNSProvider.mullvad),
        equals('Mullvad DNS'),
      );
    });
  });
}
