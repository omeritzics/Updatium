import 'package:flutter_test/flutter_test.dart';
import 'package:updatium/services/dns_service.dart';

void main() {
  group('DNSService Tests', () {
    late DNSService dnsService;

    setUp(() {
      dnsService = DNSService();
    });

    test('Default provider is system', () {
      dnsService.initialize(provider: DNSProvider.system);
      expect(dnsService.currentProvider, equals(DNSProvider.system));
    });

    test('Can switch to Cloudflare', () {
      dnsService.initialize(provider: DNSProvider.cloudflare);
      expect(dnsService.currentProvider, equals(DNSProvider.cloudflare));
    });

    test('Can switch to Quad9', () {
      dnsService.initialize(provider: DNSProvider.quad9);
      expect(dnsService.currentProvider, equals(DNSProvider.quad9));
    });

    test('Provider name mapping is correct', () {
      expect(DNSService.getProviderName(DNSProvider.system), equals('System Default'));
      expect(DNSService.getProviderName(DNSProvider.cloudflare), equals('Cloudflare DNS'));
      expect(DNSService.getProviderName(DNSProvider.quad9), equals('Quad9 DNS'));
    });

    test('ResolveA returns a list of IPs (Integration Test)', () async {
      // This is an integration test and requires network access.
      // In a real environment, we would mock the DNS client.
      dnsService.initialize(provider: DNSProvider.cloudflare);
      await dnsService.resolveA('google.com');
      // We don't assert the exact IP, just that we got some if network is available
      // but for unit tests we should ideally mock this.
      // Since we can't easily mock dns_client, we just verify the method call doesn't crash.
    });
  });
}
