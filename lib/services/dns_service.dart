import 'package:dns_client/dns_client.dart';
import 'package:updatium/providers/settings_provider.dart';

/// Supported DNS service providers
enum DNSProvider { system, cloudflare, quad9, opendns, mullvad }

/// Service for DNS resolution operations using dns_client package
class DNSService {
  static final DNSService _instance = DNSService._internal();
  factory DNSService() => _instance;
  DNSService._internal();

  DnsOverHttps? _dnsOverHttps;
  DnsOverHttpsWire? _dnsOverHttpsWire;
  DNSProvider _currentProvider = DNSProvider.system;

  /// Get the display name for a DNS provider
  static String getProviderName(DNSProvider provider) {
    switch (provider) {
      case DNSProvider.system:
        return 'System Default';
      case DNSProvider.cloudflare:
        return 'Cloudflare DNS';
      case DNSProvider.quad9:
        return 'Quad9 DNS';
      case DNSProvider.opendns:
        return 'OpenDNS';
      case DNSProvider.mullvad:
        return 'Mullvad DNS';
    }
  }

  /// Initialize or reinitialize the DNS client with the given provider
  void initialize({DNSProvider? provider}) {
    final targetProvider = provider ?? DNSProvider.system;

    // Reinitialize if provider changed or not yet initialized
    if (_currentProvider != targetProvider ||
        (_dnsOverHttps == null && _dnsOverHttpsWire == null)) {
      _currentProvider = targetProvider;

      // Close existing clients
      _dnsOverHttps?.close();
      _dnsOverHttpsWire?.close();
      _dnsOverHttps = null;
      _dnsOverHttpsWire = null;

      switch (targetProvider) {
        case DNSProvider.system:
          // System default - use Google's constructor as base
          _dnsOverHttps = DnsOverHttps.google();
        case DNSProvider.cloudflare:
          _dnsOverHttps = DnsOverHttps.cloudflare();
        case DNSProvider.quad9:
          _dnsOverHttpsWire = DnsOverHttpsWire.quad9();
        case DNSProvider.opendns:
          _dnsOverHttpsWire = DnsOverHttpsWire.opendns();
        case DNSProvider.mullvad:
          _dnsOverHttps = DnsOverHttps('https://dns.mullvad.net/dns-query');
      }
    }
  }

  /// Initialize from settings provider
  void initializeFromSettings(SettingsProvider settings) {
    final provider = settings.dnsServiceProvider;
    initialize(provider: _mapSettingsProvider(provider));
  }

  /// Map DNSServiceProvider from settings to DNSProvider
  DNSProvider _mapSettingsProvider(DNSServiceProvider provider) {
    switch (provider) {
      case DNSServiceProvider.system:
        return DNSProvider.system;
      case DNSServiceProvider.cloudflare:
        return DNSProvider.cloudflare;
      case DNSServiceProvider.quad9:
        return DNSProvider.quad9;
      case DNSServiceProvider.opendns:
        return DNSProvider.opendns;
      case DNSServiceProvider.mullvad:
        return DNSProvider.mullvad;
    }
  }

  /// Ensure the DNS client is initialized
  void _ensureInitialized() {
    if (_dnsOverHttps == null && _dnsOverHttpsWire == null) {
      initialize();
    }
  }

  /// Get the currently active DNS provider
  DNSProvider get currentProvider => _currentProvider;

  /// Get the appropriate client for the current provider
  dynamic get _client => _dnsOverHttpsWire ?? _dnsOverHttps;

  /// Resolve A records (IPv4 addresses) for a hostname
  ///
  /// Returns a list of IPv4 addresses as strings, or empty list if resolution fails
  Future<List<String>> resolveA(String hostname) async {
    _ensureInitialized();
    try {
      final addresses = await _client.lookup(hostname);
      return addresses.map((a) => a.address).toList();
    } catch (e) {
      return [];
    }
  }

  /// Resolve AAAA records (IPv6 addresses) for a hostname
  ///
  /// Returns a list of IPv6 addresses as strings, or empty list if resolution fails
  Future<List<String>> resolveAAAA(String hostname) async {
    _ensureInitialized();
    try {
      final records = await _client.lookupDataByRRType(hostname, RRType.AAAA);
      return records;
    } catch (e) {
      return [];
    }
  }

  /// Resolve TXT records for a hostname
  ///
  /// Returns a list of TXT record strings, or empty list if resolution fails
  Future<List<String>> resolveTXT(String hostname) async {
    _ensureInitialized();
    try {
      final records = await _client.lookupDataByRRType(hostname, RRType.TXT);
      return records;
    } catch (e) {
      return [];
    }
  }

  /// Resolve MX records for a hostname
  ///
  /// Returns a list of MX records with priority and target, or empty list if resolution fails
  Future<List<MXRecord>> resolveMX(String hostname) async {
    _ensureInitialized();
    try {
      final dnsRecord = await _client.lookupHttpsByRRType(hostname, RRType.MX);
      return dnsRecord.answer?.map((a) {
            // Parse MX record data (format: "priority target")
            final parts = a.data.split(' ');
            if (parts.length >= 2) {
              final priority = int.tryParse(parts[0]) ?? 0;
              final target = parts[1];
              return MXRecord(priority: priority, target: target);
            }
            return MXRecord(priority: 0, target: a.data);
          }).toList() ??
          [];
    } catch (e) {
      return [];
    }
  }

  /// Check if a domain name resolves to any IP address (IPv4 or IPv6)
  ///
  /// Returns true if the domain resolves successfully
  Future<bool> canResolve(String hostname) async {
    _ensureInitialized();
    try {
      final ipv4 = await _client.lookup(hostname);
      if (ipv4.isNotEmpty) return true;

      final ipv6 = await _client.lookupDataByRRType(hostname, RRType.AAAA);
      return ipv6.isNotEmpty;
    } catch (e) {
      return false;
    }
  }

  /// Get the first available IP address for a hostname
  ///
  /// Tries IPv4 first, then IPv6. Returns null if resolution fails.
  Future<String?> resolveFirst(String hostname) async {
    _ensureInitialized();
    try {
      final ipv4 = await _client.lookup(hostname);
      if (ipv4.isNotEmpty) return ipv4.first.address;

      final ipv6 = await _client.lookupDataByRRType(hostname, RRType.AAAA);
      if (ipv6.isNotEmpty) return ipv6.first;

      return null;
    } catch (e) {
      return null;
    }
  }

  /// Resolve all IP addresses for a hostname (both IPv4 and IPv6)
  ///
  /// Returns a [DNSResolutionResult] containing all resolved addresses
  Future<DNSResolutionResult> resolveAll(String hostname) async {
    _ensureInitialized();
    try {
      final ipv4 = await _client.lookup(hostname);
      final ipv6 = await _client.lookupDataByRRType(hostname, RRType.AAAA);

      return DNSResolutionResult(
        hostname: hostname,
        ipv4Addresses: ipv4.map((a) => a.address).toList(),
        ipv6Addresses: ipv6,
      );
    } catch (e) {
      return DNSResolutionResult(
        hostname: hostname,
        ipv4Addresses: [],
        ipv6Addresses: [],
      );
    }
  }
}

/// Represents an MX record with priority and target hostname
class MXRecord {
  final int priority;
  final String target;

  MXRecord({required this.priority, required this.target});

  @override
  String toString() => '$priority $target';
}

/// Result of a DNS resolution for all record types
class DNSResolutionResult {
  final String hostname;
  final List<String> ipv4Addresses;
  final List<String> ipv6Addresses;

  DNSResolutionResult({
    required this.hostname,
    required this.ipv4Addresses,
    required this.ipv6Addresses,
  });

  bool get hasAddresses => ipv4Addresses.isNotEmpty || ipv6Addresses.isNotEmpty;

  List<String> get allAddresses => [...ipv4Addresses, ...ipv6Addresses];

  @override
  String toString() {
    return 'DNSResolutionResult{hostname: $hostname, '
        'ipv4: ${ipv4Addresses.length}, ipv6: ${ipv6Addresses.length}}';
  }
}

/// Extension methods for app sources to use DNS resolution
extension DNSAppSourceExtension on DNSService {
  /// Attempt to resolve a URL's hostname and return alternative URL with IP
  ///
  /// This can be useful for apps that need to bypass DNS issues
  Future<Uri?> resolveUriHost(Uri uri) async {
    final ip = await resolveFirst(uri.host);
    if (ip == null) return null;

    return uri.replace(host: ip);
  }

  /// Check if the hostname in a URL can be resolved
  Future<bool> canResolveUri(Uri uri) async {
    return canResolve(uri.host);
  }
}
