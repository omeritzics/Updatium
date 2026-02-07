import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;
import 'package:crypto/crypto.dart';
import 'package:path_provider/path_provider.dart';
import 'package:updatium/providers/logs_provider.dart';

/// Unified icon service that manages the entire icon-loading pipeline
///
/// Features:
/// - Memory and disk caching
/// - Request deduplication
/// - Background pre-fetching
/// - Performance monitoring
/// - Centralized error handling
/// - Smart cache management
class UnifiedIconService {
  static UnifiedIconService? _instance;
  static UnifiedIconService get instance {
    _instance ??= UnifiedIconService._();
    return _instance!;
  }

  UnifiedIconService._() {
    _initializePerformanceMonitoring();
  }

  // Cache management
  late Directory _cacheDir;
  late Duration _maxAge;
  late int _maxCacheSize;
  late int _maxMemoryCacheSize;

  // Memory cache
  final Map<String, MemoryCachedIcon> _memoryCache = {};
  final Map<String, List<Completer<Uint8List?>>> _pendingRequests = {};

  // Performance monitoring
  final Map<String, IconPerformanceMetrics> _performanceMetrics = {};
  Timer? _cleanupTimer;

  // Stream controllers
  final StreamController<IconLoadingEvent> _eventController =
      StreamController<IconLoadingEvent>.broadcast();

  Stream<IconLoadingEvent> get eventStream => _eventController.stream;

  /// Initialize the icon service
  Future<void> initialize({
    Directory? cacheDir,
    Duration maxAge = const Duration(days: 30),
    int maxCacheSize = 100 * 1024 * 1024, // 100MB
    int maxMemoryCacheSize = 50 * 1024 * 1024, // 50MB
  }) async {
    _cacheDir = cacheDir ?? await _getDefaultCacheDir();
    _maxAge = maxAge;
    _maxCacheSize = maxCacheSize;
    _maxMemoryCacheSize = maxMemoryCacheSize;

    if (!_cacheDir.existsSync()) {
      await _cacheDir.create(recursive: true);
    }

    // Start periodic cleanup
    _cleanupTimer = Timer.periodic(
      const Duration(hours: 6),
      (_) => _performCleanup(),
    );

    // Load existing cache metadata
    await _loadCacheMetadata();
  }

  /// Get icon with comprehensive caching and deduplication
  Future<IconResult> getIcon(
    String appId,
    String? remoteIconUrl, {
    bool forceRefresh = false,
    Uint8List? fallbackIcon,
    int? maxSize,
    ImageFormat preferredFormat = ImageFormat.auto,
  }) async {
    final startTime = DateTime.now();
    final cacheKey = _generateCacheKey(appId, remoteIconUrl);

    try {
      _emitEvent(
        IconLoadingEvent(
          type: IconEventType.loading,
          appId: appId,
          url: remoteIconUrl,
        ),
      );

      // Check memory cache first
      if (!forceRefresh && _memoryCache.containsKey(cacheKey)) {
        final cached = _memoryCache[cacheKey]!;
        if (!cached.isExpired) {
          _recordPerformance(cacheKey, startTime, IconSource.memory);
          _emitEvent(
            IconLoadingEvent(
              type: IconEventType.loaded,
              appId: appId,
              url: remoteIconUrl,
              source: IconSource.memory,
            ),
          );
          return IconResult.success(cached.data, source: IconSource.memory);
        } else {
          _memoryCache.remove(cacheKey);
        }
      }

      // Check for existing request (deduplication)
      if (!forceRefresh && _pendingRequests.containsKey(cacheKey)) {
        final completer = Completer<Uint8List?>();
        _pendingRequests[cacheKey]!.add(completer);
        final result = await completer.future;

        if (result != null) {
          _recordPerformance(cacheKey, startTime, IconSource.deduplicated);
          return IconResult.success(result, source: IconSource.deduplicated);
        }
      }

      // Create new request
      final requestCompleter = Completer<Uint8List?>();
      _pendingRequests[cacheKey] = [requestCompleter];

      try {
        Uint8List? iconData;

        // Try disk cache
        if (!forceRefresh) {
          iconData = await _getFromDiskCache(cacheKey);
          if (iconData != null) {
            _addToMemoryCache(cacheKey, iconData);
            _completePendingRequests(cacheKey, iconData);
            _recordPerformance(cacheKey, startTime, IconSource.disk);
            _emitEvent(
              IconLoadingEvent(
                type: IconEventType.loaded,
                appId: appId,
                url: remoteIconUrl,
                source: IconSource.disk,
              ),
            );
            return IconResult.success(iconData, source: IconSource.disk);
          }
        }

        // Download from network
        if (remoteIconUrl != null && remoteIconUrl.isNotEmpty) {
          iconData = await _downloadIcon(
            remoteIconUrl,
            maxSize,
            preferredFormat,
          );
          if (iconData != null) {
            await _saveToCache(cacheKey, iconData, remoteIconUrl);
            _addToMemoryCache(cacheKey, iconData);
            _completePendingRequests(cacheKey, iconData);
            _recordPerformance(cacheKey, startTime, IconSource.network);
            _emitEvent(
              IconLoadingEvent(
                type: IconEventType.loaded,
                appId: appId,
                url: remoteIconUrl,
                source: IconSource.network,
              ),
            );
            return IconResult.success(iconData, source: IconSource.network);
          }
        }

        // Use fallback
        if (fallbackIcon != null) {
          _completePendingRequests(cacheKey, fallbackIcon);
          _recordPerformance(cacheKey, startTime, IconSource.fallback);
          _emitEvent(
            IconLoadingEvent(
              type: IconEventType.fallback,
              appId: appId,
              url: remoteIconUrl,
            ),
          );
          return IconResult.success(fallbackIcon, source: IconSource.fallback);
        } else {
          // No fallback available, return error
          _completePendingRequests(cacheKey, null);
          _recordPerformance(cacheKey, startTime, IconSource.fallback);
          _emitEvent(
            IconLoadingEvent(
              type: IconEventType.error,
              appId: appId,
              url: remoteIconUrl,
              error: 'No icon data available',
            ),
          );
          return IconResult.error('No icon data available');
        }
      } catch (e) {
        _completePendingRequests(cacheKey, null);
        _recordError(cacheKey, e);
        _emitEvent(
          IconLoadingEvent(
            type: IconEventType.error,
            appId: appId,
            url: remoteIconUrl,
            error: e.toString(),
          ),
        );
        return IconResult.error(e.toString());
      }
    } catch (e) {
      _recordError(cacheKey, e);
      _emitEvent(
        IconLoadingEvent(
          type: IconEventType.error,
          appId: appId,
          url: remoteIconUrl,
          error: e.toString(),
        ),
      );
      return IconResult.error(e.toString());
    }
  }

  /// Pre-fetch multiple icons efficiently
  Future<BatchIconResult> prefetchIcons(List<IconRequest> requests) async {
    final startTime = DateTime.now();
    final results = <String, IconResult>{};
    int successCount = 0;
    int errorCount = 0;

    _emitEvent(
      IconLoadingEvent(
        type: IconEventType.batchStarted,
        count: requests.length,
      ),
    );

    // Process in batches to avoid overwhelming the system
    const batchSize = 5;
    for (int i = 0; i < requests.length; i += batchSize) {
      final batch = requests.skip(i).take(batchSize).toList();

      final futures = batch.map((request) async {
        final result = await getIcon(
          request.appId,
          request.remoteIconUrl,
          forceRefresh: request.forceRefresh,
          fallbackIcon: request.fallbackIcon,
          maxSize: request.maxSize,
          preferredFormat: request.preferredFormat,
        );

        results[request.appId] = result;
        if (result.isSuccess) {
          successCount++;
        } else {
          errorCount++;
        }
      });

      await Future.wait(futures);

      // Small delay between batches
      if (i + batchSize < requests.length) {
        await Future.delayed(const Duration(milliseconds: 50));
      }
    }

    _emitEvent(
      IconLoadingEvent(
        type: IconEventType.batchCompleted,
        count: requests.length,
        successCount: successCount,
        errorCount: errorCount,
        duration: DateTime.now().difference(startTime),
      ),
    );

    return BatchIconResult(
      results: results,
      successCount: successCount,
      errorCount: errorCount,
      totalCount: requests.length,
      duration: DateTime.now().difference(startTime),
    );
  }

  /// Get cache statistics
  Future<IconCacheStats> getCacheStats() async {
    int diskSize = 0;
    int diskFiles = 0;
    DateTime? oldestFile;
    DateTime? newestFile;

    if (await _cacheDir.exists()) {
      await for (final entity in _cacheDir.list()) {
        if (entity is File && entity.path.endsWith('.cache')) {
          final stat = await entity.stat();
          diskSize += stat.size;
          diskFiles++;

          if (oldestFile == null || stat.modified.isBefore(oldestFile)) {
            oldestFile = stat.modified;
          }
          if (newestFile == null || stat.modified.isAfter(newestFile)) {
            newestFile = stat.modified;
          }
        }
      }
    }

    return IconCacheStats(
      memoryCacheSize: _memoryCache.values.fold(
        0,
        (sum, icon) => sum + icon.data.length,
      ),
      memoryCacheCount: _memoryCache.length,
      diskCacheSize: diskSize,
      diskCacheCount: diskFiles,
      oldestEntry: oldestFile,
      newestEntry: newestFile,
      pendingRequests: _pendingRequests.length,
    );
  }

  /// Clear all caches
  Future<void> clearCache({
    bool clearMemory = true,
    bool clearDisk = true,
  }) async {
    if (clearMemory) {
      _memoryCache.clear();
    }

    if (clearDisk && await _cacheDir.exists()) {
      await _cacheDir.delete(recursive: true);
      await _cacheDir.create(recursive: true);
    }

    _emitEvent(
      IconLoadingEvent(
        type: IconEventType.cacheCleared,
        memoryCleared: clearMemory,
        diskCleared: clearDisk,
      ),
    );
  }

  /// Get performance metrics
  Map<String, IconPerformanceMetrics> getPerformanceMetrics() {
    return Map.from(_performanceMetrics);
  }

  // Private methods

  Future<Directory> _getDefaultCacheDir() async {
    final baseDir = await getApplicationDocumentsDirectory();
    return Directory(path.join(baseDir.path, 'unified_icon_cache'));
  }

  String _generateCacheKey(String appId, String? remoteIconUrl) {
    if (remoteIconUrl == null || remoteIconUrl.isEmpty) {
      return 'app_$appId';
    }
    final combined = '$appId:$remoteIconUrl';
    final bytes = utf8.encode(combined);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  Future<Uint8List?> _getFromDiskCache(String cacheKey) async {
    try {
      final cachedFile = File(path.join(_cacheDir.path, '$cacheKey.cache'));
      if (!await cachedFile.exists()) return null;

      final stat = await cachedFile.stat();
      final age = DateTime.now().difference(stat.modified);
      if (age > _maxAge) {
        await cachedFile.delete();
        return null;
      }

      return await cachedFile.readAsBytes();
    } catch (e) {
      LogsProvider().add('Error reading from disk cache: $e');
      return null;
    }
  }

  Future<Uint8List?> _downloadIcon(
    String url,
    int? maxSize,
    ImageFormat preferredFormat,
  ) async {
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

      if (response.statusCode != 200 || response.bodyBytes.isEmpty) {
        return null;
      }

      Uint8List iconData = response.bodyBytes;

      // Validate image
      if (!_isValidImage(iconData)) {
        LogsProvider().add('Downloaded file is not a valid image: $url');
        return null;
      }

      // Resize if needed
      if (maxSize != null) {
        iconData = await _resizeImage(iconData, maxSize);
      }

      return iconData;
    } catch (e) {
      LogsProvider().add('Error downloading icon from $url: $e');
      return null;
    }
  }

  bool _isValidImage(Uint8List bytes) {
    if (bytes.length < 8) return false;

    final signatures = [
      [0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A], // PNG
      [0xFF, 0xD8, 0xFF], // JPEG
      [0x52, 0x49, 0x46, 0x46], // WebP
      [0x47, 0x49, 0x46, 0x38], // GIF
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

  Future<Uint8List> _resizeImage(Uint8List originalBytes, int maxSize) async {
    // This is a simplified implementation
    // In a real app, you'd use image processing library
    return originalBytes;
  }

  Future<void> _saveToCache(
    String cacheKey,
    Uint8List iconData,
    String url,
  ) async {
    try {
      final cachedFile = File(path.join(_cacheDir.path, '$cacheKey.cache'));
      await cachedFile.writeAsBytes(iconData);

      // Save metadata
      final metadataFile = File(path.join(_cacheDir.path, '$cacheKey.meta'));
      final metadata = {
        'url': url,
        'timestamp': DateTime.now().toIso8601String(),
        'size': iconData.length,
      };
      await metadataFile.writeAsString(jsonEncode(metadata));
    } catch (e) {
      LogsProvider().add('Error saving to cache: $e');
    }
  }

  void _addToMemoryCache(String cacheKey, Uint8List iconData) {
    // Remove oldest entries if memory cache is full
    while (_getMemoryCacheSize() > _maxMemoryCacheSize &&
        _memoryCache.isNotEmpty) {
      final oldestKey = _memoryCache.keys.first;
      _memoryCache.remove(oldestKey);
    }

    _memoryCache[cacheKey] = MemoryCachedIcon(
      data: iconData,
      timestamp: DateTime.now(),
    );
  }

  int _getMemoryCacheSize() {
    return _memoryCache.values.fold(0, (sum, icon) => sum + icon.data.length);
  }

  void _completePendingRequests(String cacheKey, Uint8List? result) {
    final requests = _pendingRequests.remove(cacheKey) ?? [];
    for (final completer in requests) {
      completer.complete(result);
    }
  }

  void _recordPerformance(
    String cacheKey,
    DateTime startTime,
    IconSource source,
  ) {
    final duration = DateTime.now().difference(startTime);
    _performanceMetrics[cacheKey] = IconPerformanceMetrics(
      loadTime: duration,
      source: source,
      timestamp: DateTime.now(),
    );
  }

  void _recordError(String cacheKey, dynamic error) {
    final metrics = _performanceMetrics[cacheKey];
    if (metrics != null) {
      _performanceMetrics[cacheKey] = metrics.copyWith(
        lastError: error.toString(),
        errorCount: metrics.errorCount + 1,
      );
    }
  }

  void _emitEvent(IconLoadingEvent event) {
    if (!_eventController.isClosed) {
      _eventController.add(event);
    }
  }

  void _initializePerformanceMonitoring() {
    // Initialize performance tracking
  }

  Future<void> _loadCacheMetadata() async {
    // Load existing cache metadata for optimization
  }

  Future<void> _performCleanup() async {
    // Remove expired entries and enforce size limits
    await _cleanupMemoryCache();
    await _cleanupDiskCache();
  }

  Future<void> _cleanupMemoryCache() async {
    final now = DateTime.now();
    final expiredKeys = <String>[];

    for (final entry in _memoryCache.entries) {
      if (now.difference(entry.value.timestamp) > _maxAge) {
        expiredKeys.add(entry.key);
      }
    }

    for (final key in expiredKeys) {
      _memoryCache.remove(key);
    }
  }

  Future<void> _cleanupDiskCache() async {
    if (!await _cacheDir.exists()) return;

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

    // Remove expired files
    final now = DateTime.now();
    for (final fileInfo in cacheFiles) {
      final file = fileInfo['file'] as File;
      final modified = fileInfo['modified'] as DateTime;

      if (now.difference(modified) > _maxAge) {
        try {
          await file.delete();
          final metaFile = File('${file.path}.meta');
          if (await metaFile.exists()) await metaFile.delete();
        } catch (e) {
          LogsProvider().add('Error deleting expired cache file: $e');
        }
      }
    }

    // Enforce size limit
    if (totalSize > _maxCacheSize) {
      cacheFiles.sort((a, b) => a['modified'].compareTo(b['modified']));

      int currentSize = totalSize;
      for (final fileInfo in cacheFiles) {
        if (currentSize <= _maxCacheSize) break;

        final file = fileInfo['file'] as File;
        final size = fileInfo['size'] as int;

        try {
          await file.delete();
          final metaFile = File('${file.path}.meta');
          if (await metaFile.exists()) await metaFile.delete();
          currentSize -= size;
        } catch (e) {
          LogsProvider().add('Error deleting cache file during cleanup: $e');
        }
      }
    }
  }

  void dispose() {
    _cleanupTimer?.cancel();
    _eventController.close();
    _memoryCache.clear();
    _pendingRequests.clear();
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

// Supporting classes

class IconRequest {
  final String appId;
  final String? remoteIconUrl;
  final bool forceRefresh;
  final Uint8List? fallbackIcon;
  final int? maxSize;
  final ImageFormat preferredFormat;

  IconRequest({
    required this.appId,
    this.remoteIconUrl,
    this.forceRefresh = false,
    this.fallbackIcon,
    this.maxSize,
    this.preferredFormat = ImageFormat.auto,
  });
}

class IconResult {
  final Uint8List? data;
  final String? error;
  final IconSource source;
  final bool isSuccess;

  IconResult.success(this.data, {required this.source})
    : error = null,
      isSuccess = data != null;

  IconResult.error(this.error)
    : data = null,
      source = IconSource.fallback,
      isSuccess = false;
}

class BatchIconResult {
  final Map<String, IconResult> results;
  final int successCount;
  final int errorCount;
  final int totalCount;
  final Duration duration;

  BatchIconResult({
    required this.results,
    required this.successCount,
    required this.errorCount,
    required this.totalCount,
    required this.duration,
  });

  double get successRate => totalCount > 0 ? successCount / totalCount : 0.0;
}

class IconCacheStats {
  final int memoryCacheSize;
  final int memoryCacheCount;
  final int diskCacheSize;
  final int diskCacheCount;
  final DateTime? oldestEntry;
  final DateTime? newestEntry;
  final int pendingRequests;

  IconCacheStats({
    required this.memoryCacheSize,
    required this.memoryCacheCount,
    required this.diskCacheSize,
    required this.diskCacheCount,
    this.oldestEntry,
    this.newestEntry,
    required this.pendingRequests,
  });
}

class MemoryCachedIcon {
  final Uint8List data;
  final DateTime timestamp;

  MemoryCachedIcon({required this.data, required this.timestamp});

  bool get isExpired {
    return DateTime.now().difference(timestamp) > const Duration(days: 1);
  }
}

class IconPerformanceMetrics {
  final Duration loadTime;
  final IconSource source;
  final DateTime timestamp;
  final String? lastError;
  final int errorCount;

  IconPerformanceMetrics({
    required this.loadTime,
    required this.source,
    required this.timestamp,
    this.lastError,
    this.errorCount = 0,
  });

  IconPerformanceMetrics copyWith({
    Duration? loadTime,
    IconSource? source,
    DateTime? timestamp,
    String? lastError,
    int? errorCount,
  }) {
    return IconPerformanceMetrics(
      loadTime: loadTime ?? this.loadTime,
      source: source ?? this.source,
      timestamp: timestamp ?? this.timestamp,
      lastError: lastError ?? this.lastError,
      errorCount: errorCount ?? this.errorCount,
    );
  }
}

class IconLoadingEvent {
  final IconEventType type;
  final String? appId;
  final String? url;
  final IconSource? source;
  final String? error;
  final int? count;
  final int? successCount;
  final int? errorCount;
  final Duration? duration;
  final bool? memoryCleared;
  final bool? diskCleared;

  IconLoadingEvent({
    required this.type,
    this.appId,
    this.url,
    this.source,
    this.error,
    this.count,
    this.successCount,
    this.errorCount,
    this.duration,
    this.memoryCleared,
    this.diskCleared,
  });
}

enum IconEventType {
  loading,
  loaded,
  error,
  fallback,
  batchStarted,
  batchCompleted,
  cacheCleared,
}

enum IconSource { memory, disk, network, fallback, deduplicated }

enum ImageFormat { auto, png, jpeg, webp }
