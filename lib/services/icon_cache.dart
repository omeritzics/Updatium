import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;
import 'package:crypto/crypto.dart';
import 'package:path_provider/path_provider.dart';
import 'package:updatium/providers/logs_provider.dart';

class IconCache {
  static IconCache? _instance;
  static IconCache get instance {
    _instance ??= IconCache._();
    return _instance!;
  }

  IconCache._();

  late Directory _cacheDir;
  late Duration _maxAge;
  late int _maxCacheSize;

  /// Initialize the icon cache
  Future<void> initialize({
    Directory? cacheDir,
    Duration maxAge = const Duration(days: 30),
    int maxCacheSize = 100 * 1024 * 1024, // 100MB
  }) async {
    _cacheDir = cacheDir ?? await _getDefaultCacheDir();
    _maxAge = maxAge;
    _maxCacheSize = maxCacheSize;

    if (!_cacheDir.existsSync()) {
      await _cacheDir.create(recursive: true);
    }

    // Clean up old cache entries on initialization
    await _cleanupOldEntries();
  }

  /// Get the default cache directory
  Future<Directory> _getDefaultCacheDir() async {
    final baseDir = await getApplicationDocumentsDirectory();
    return Directory(path.join(baseDir.path, 'icon_cache'));
  }

  /// Get icon for an app, returns cached version if available, downloads otherwise
  Future<Uint8List?> getIcon(
    String appId,
    String? remoteIconUrl, {
    bool forceRefresh = false,
    Uint8List? fallbackIcon,
  }) async {
    if (remoteIconUrl == null || remoteIconUrl.isEmpty) {
      return fallbackIcon;
    }

    try {
      final cacheKey = _generateCacheKey(appId, remoteIconUrl);
      final cachedFile = File(path.join(_cacheDir.path, '$cacheKey.cache'));

      // Check if cached version exists and is valid
      if (!forceRefresh && await _isCacheValid(cachedFile)) {
        try {
          return await cachedFile.readAsBytes();
        } catch (e) {
          LogsProvider().add('Error reading cached icon: $e');
          // Fall through to download
        }
      }

      // Download the icon
      final iconData = await _downloadIcon(remoteIconUrl);
      if (iconData != null) {
        // Save to cache
        await _saveToCache(cachedFile, iconData, remoteIconUrl);
        return iconData;
      }

      return fallbackIcon;
    } catch (e) {
      LogsProvider().add('Error getting icon for $appId: $e');
      return fallbackIcon;
    }
  }

  /// Generate a unique cache key for the app and URL
  String _generateCacheKey(String appId, String remoteIconUrl) {
    final combined = '$appId:$remoteIconUrl';
    final bytes = utf8.encode(combined);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  /// Check if cached file is valid (exists and not too old)
  Future<bool> _isCacheValid(File cacheFile) async {
    if (!await cacheFile.exists()) {
      return false;
    }

    try {
      final stat = await cacheFile.stat();
      final age = DateTime.now().difference(stat.modified);
      return age < _maxAge;
    } catch (e) {
      return false;
    }
  }

  /// Download icon from URL with security validation
  Future<Uint8List?> _downloadIcon(String url) async {
    try {
      // Validate and sanitize URL
      final sanitizedUri = _validateAndSanitizeUrl(url);
      if (sanitizedUri == null) {
        LogsProvider().add('Invalid or unsafe URL rejected: $url');
        return null;
      }

      final response = await http
          .get(sanitizedUri)
          .timeout(
            const Duration(seconds: 30),
            onTimeout: () => throw TimeoutException('Icon download timeout'),
          );

      if (response.statusCode == 200 && response.bodyBytes.isNotEmpty) {
        // Validate that it's actually an image
        if (_isValidImage(response.bodyBytes)) {
          return Uint8List.fromList(response.bodyBytes);
        } else {
          LogsProvider().add('Downloaded file is not a valid image: $url');
        }
      } else {
        LogsProvider().add(
          'Failed to download icon: ${response.statusCode} for $url',
        );
      }
    } catch (e) {
      LogsProvider().add('Error downloading icon from $url: $e');
    }

    return null;
  }

  /// Validate that the downloaded bytes represent a valid image
  bool _isValidImage(Uint8List bytes) {
    if (bytes.length < 8) return false;

    // Check common image file signatures
    final signatures = [
      // PNG
      [0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A],
      // JPEG
      [0xFF, 0xD8, 0xFF],
      // WebP
      [0x52, 0x49, 0x46, 0x46], // RIFF
      // GIF
      [0x47, 0x49, 0x46, 0x38],
    ];

    for (final signature in signatures) {
      if (bytes.length >= signature.length) {
        bool matches = true;
        for (int i = 0; i < signature.length; i++) {
          if (bytes[i] != signature[i]) {
            matches = false;
            break;
          }
        }
        if (matches) return true;
      }
    }

    return false;
  }

  /// Save icon data to cache with metadata
  Future<void> _saveToCache(
    File cacheFile,
    Uint8List iconData,
    String url,
  ) async {
    try {
      await cacheFile.writeAsBytes(iconData);

      // Save metadata file
      final metadataFile = File('${cacheFile.path}.meta');
      final metadata = {
        'url': url,
        'timestamp': DateTime.now().toIso8601String(),
        'size': iconData.length,
      };
      await metadataFile.writeAsString(jsonEncode(metadata));
    } catch (e) {
      LogsProvider().add('Error saving icon to cache: $e');
    }
  }

  /// Clean up old cache entries
  Future<void> _cleanupOldEntries() async {
    try {
      if (!await _cacheDir.exists()) return;

      await for (final entity in _cacheDir.list()) {
        if (entity is File && entity.path.endsWith('.cache')) {
          final cacheFile = entity;
          if (!await _isCacheValid(cacheFile)) {
            try {
              await cacheFile.delete();
              // Also delete metadata file if it exists
              final metadataFile = File('${cacheFile.path}.meta');
              if (await metadataFile.exists()) {
                await metadataFile.delete();
              }
            } catch (e) {
              LogsProvider().add('Error deleting old cache file: $e');
            }
          }
        }
      }

      // Check total cache size and clean if necessary
      await _enforceMaxCacheSize();
    } catch (e) {
      LogsProvider().add('Error during cache cleanup: $e');
    }
  }

  /// Enforce maximum cache size by removing oldest entries
  Future<void> _enforceMaxCacheSize() async {
    try {
      int totalSize = 0;
      final cacheFiles = <Map<String, dynamic>>[];

      await for (final entity in _cacheDir.list()) {
        if (entity is File && entity.path.endsWith('.cache')) {
          final stat = await entity.stat();
          totalSize += stat.size;
          cacheFiles.add({
            'file': entity,
            'size': stat.size,
            'modified': stat.modified,
          });
        }
      }

      if (totalSize <= _maxCacheSize) return;

      // Sort by modification time (oldest first)
      cacheFiles.sort((a, b) => a['modified'].compareTo(b['modified']));

      // Remove oldest files until under the limit
      for (final fileInfo in cacheFiles) {
        if (totalSize <= _maxCacheSize) break;

        final file = fileInfo['file'] as File;
        final size = fileInfo['size'] as int;

        try {
          await file.delete();
          // Also delete metadata file
          final metadataFile = File('${file.path}.meta');
          if (await metadataFile.exists()) {
            await metadataFile.delete();
          }
          totalSize -= size;
        } catch (e) {
          LogsProvider().add(
            'Error deleting cache file during size enforcement: $e',
          );
        }
      }
    } catch (e) {
      LogsProvider().add('Error enforcing max cache size: $e');
    }
  }

  /// Clear all cached icons
  Future<void> clearCache() async {
    try {
      if (await _cacheDir.exists()) {
        await _cacheDir.delete(recursive: true);
        await _cacheDir.create(recursive: true);
      }
    } catch (e) {
      LogsProvider().add('Error clearing icon cache: $e');
    }
  }

  /// Get cache statistics
  Future<Map<String, dynamic>> getCacheStats() async {
    try {
      if (!await _cacheDir.exists()) {
        return {
          'totalFiles': 0,
          'totalSize': 0,
          'oldestEntry': null,
          'newestEntry': null,
        };
      }

      int totalFiles = 0;
      int totalSize = 0;
      DateTime? oldestEntry;
      DateTime? newestEntry;

      await for (final entity in _cacheDir.list()) {
        if (entity is File && entity.path.endsWith('.cache')) {
          final stat = await entity.stat();
          totalFiles++;
          totalSize += stat.size;

          if (oldestEntry == null || stat.modified.isBefore(oldestEntry)) {
            oldestEntry = stat.modified;
          }
          if (newestEntry == null || stat.modified.isAfter(newestEntry)) {
            newestEntry = stat.modified;
          }
        }
      }

      return {
        'totalFiles': totalFiles,
        'totalSize': totalSize,
        'oldestEntry': oldestEntry?.toIso8601String(),
        'newestEntry': newestEntry?.toIso8601String(),
      };
    } catch (e) {
      LogsProvider().add('Error getting cache stats: $e');
      return {'error': e.toString()};
    }
  }

  /// Check if an icon is cached for the given app
  Future<bool> isIconCached(String appId, String? remoteIconUrl) async {
    if (remoteIconUrl == null || remoteIconUrl.isEmpty) return false;

    try {
      final cacheKey = _generateCacheKey(appId, remoteIconUrl);
      final cachedFile = File(path.join(_cacheDir.path, '$cacheKey.cache'));
      return await _isCacheValid(cachedFile);
    } catch (e) {
      return false;
    }
  }

  /// Remove specific icon from cache
  Future<void> removeIcon(String appId, String? remoteIconUrl) async {
    if (remoteIconUrl == null || remoteIconUrl.isEmpty) return;

    try {
      final cacheKey = _generateCacheKey(appId, remoteIconUrl);
      final cachedFile = File(path.join(_cacheDir.path, '$cacheKey.cache'));

      if (await cachedFile.exists()) {
        await cachedFile.delete();
      }

      final metadataFile = File('${cachedFile.path}.meta');
      if (await metadataFile.exists()) {
        await metadataFile.delete();
      }
    } catch (e) {
      LogsProvider().add('Error removing icon from cache: $e');
    }
  }

  /// Validate and sanitize URL for security compliance
  Uri? _validateAndSanitizeUrl(String url) {
    try {
      // Parse the URL
      final uri = Uri.parse(url);
      
      // Security checks
      if (!_isUrlSafe(uri)) {
        return null;
      }
      
      // Sanitize the URL by removing potentially dangerous components
      return uri.replace(
        fragment: null, // Remove fragments
        query: _sanitizeQueryParameters(uri.query), // Sanitize query params
      );
    } catch (e) {
      LogsProvider().add('URL parsing error: $e');
      return null;
    }
  }

  /// Check if URL meets security requirements
  bool _isUrlSafe(Uri uri) {
    // Must be HTTP or HTTPS
    if (!['http', 'https'].contains(uri.scheme)) {
      return false;
    }
    
    // Must have a host
    if (uri.host.isEmpty) {
      return false;
    }
    
    // Block private/internal IP ranges
    if (_isPrivateOrInternalHost(uri.host)) {
      return false;
    }
    
    // Block localhost and loopback
    if (_isLocalhost(uri.host)) {
      return false;
    }
    
    // Block file:// and other dangerous schemes
    final dangerousSchemes = ['file', 'ftp', 'javascript', 'data', 'blob'];
    if (dangerousSchemes.contains(uri.scheme)) {
      return false;
    }
    
    // Block URLs with suspicious patterns
    if (_hasSuspiciousPatterns(uri)) {
      return false;
    }
    
    return true;
  }

  /// Check if host is private or internal IP range
  bool _isPrivateOrInternalHost(String host) {
    // IPv4 private ranges
    final ipv4Pattern = RegExp(r'^(10\.|172\.(1[6-9]|2[0-9]|3[01])\.|192\.168\.|127\.|169\.254\.|::1$)');
    if (ipv4Pattern.hasMatch(host)) {
      return true;
    }
    
    // IPv6 private ranges
    final ipv6Pattern = RegExp(r'^(fc[0-9a-f]{2}:|fe80:|::1$)');
    if (ipv6Pattern.hasMatch(host)) {
      return true;
    }
    
    // Common internal hostnames
    final internalHosts = ['localhost', 'local', 'internal', 'private', 'intranet'];
    if (internalHosts.contains(host.toLowerCase())) {
      return true;
    }
    
    return false;
  }

  /// Check if host is localhost
  bool _isLocalhost(String host) {
    final localhostPatterns = ['localhost', '127.0.0.1', '::1', '0.0.0.0'];
    return localhostPatterns.contains(host.toLowerCase());
  }

  /// Check for suspicious URL patterns
  bool _hasSuspiciousPatterns(Uri uri) {
    final url = uri.toString().toLowerCase();
    
    // Block URLs with suspicious characters or patterns
    final suspiciousPatterns = [
      r'\.\./',  // Directory traversal
      r'<script', // XSS attempts
      r'javascript:', // JavaScript protocol
      r'data:', // Data URLs
      r'file:', // File protocol
      r'ftp:', // FTP protocol
    ];
    
    for (final pattern in suspiciousPatterns) {
      if (RegExp(pattern).hasMatch(url)) {
        return true;
      }
    }
    
    return false;
  }

  /// Sanitize query parameters
  String _sanitizeQueryParameters(String query) {
    if (query.isEmpty) return '';
    
    final params = query.split('&');
    final sanitizedParams = <String>[];
    
    for (final param in params) {
      if (param.isEmpty) continue;
      
      // Skip parameters with suspicious content
      if (_hasSuspiciousPatterns(Uri.parse('http://example.com?$param'))) {
        continue;
      }
      
      // Only allow alphanumeric, hyphen, underscore, and common URL characters
      final sanitizedParam = param.replaceAll(RegExp(r'[^a-zA-Z0-9\-_=%&\.]'), '');
      if (sanitizedParam.isNotEmpty) {
        sanitizedParams.add(sanitizedParam);
      }
    }
    
    return sanitizedParams.join('&');
  }
}
