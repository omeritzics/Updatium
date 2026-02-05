import 'dart:typed_data';
import 'package:updatium/services/unified_icon_service.dart';

/// Enhanced App model with improved icon handling
class EnhancedApp {
  // Core app properties
  late String id;
  late String url;
  late String author;
  late String name;
  String? installedVersion;
  late String latestVersion;
  List<MapEntry<String, String>> apkUrls = [];
  List<MapEntry<String, String>> otherAssetUrls = [];
  late int preferredApkIndex;
  late Map<String, dynamic> additionalSettings;
  late DateTime? lastUpdateCheck;
  bool pinned = false;
  List<String> categories;
  late DateTime? releaseDate;
  late String? changeLog;
  late String? overrideSource;
  bool allowIdChange = false;

  // Enhanced icon properties
  String? remoteIconUrl;
  String? fallbackIconUrl; // Backup URL if primary fails
  IconMetadata? iconMetadata; // Size, format, etc.
  IconPriority iconPriority = IconPriority.normal;
  bool iconPreferCached = true; // Whether to prefer cached over network

  // Icon loading state (for UI optimization)
  IconLoadingState _loadingState = IconLoadingState.notStarted;
  Uint8List? _cachedIconData;
  String? _lastError;

  EnhancedApp({
    required this.id,
    required this.url,
    required this.author,
    required this.name,
    this.installedVersion,
    required this.latestVersion,
    required this.apkUrls,
    required this.preferredApkIndex,
    required this.additionalSettings,
    this.lastUpdateCheck,
    this.pinned = false,
    this.categories = const [],
    this.releaseDate,
    this.changeLog,
    this.remoteIconUrl,
    this.fallbackIconUrl,
    this.iconMetadata,
    this.iconPriority = IconPriority.normal,
    this.iconPreferCached = true,
    this.overrideSource,
    this.allowIdChange = false,
    this.otherAssetUrls = const [],
  });

  // Factory constructor from legacy App
  factory EnhancedApp.fromLegacy(App legacyApp) {
    return EnhancedApp(
      id: legacyApp.id,
      url: legacyApp.url,
      author: legacyApp.author,
      name: legacyApp.name,
      installedVersion: legacyApp.installedVersion,
      latestVersion: legacyApp.latestVersion,
      apkUrls: legacyApp.apkUrls,
      preferredApkIndex: legacyApp.preferredApkIndex,
      additionalSettings: legacyApp.additionalSettings,
      lastUpdateCheck: legacyApp.lastUpdateCheck,
      pinned: legacyApp.pinned,
      categories: legacyApp.categories,
      releaseDate: legacyApp.releaseDate,
      changeLog: legacyApp.changeLog,
      remoteIconUrl: legacyApp.remoteIconUrl,
      overrideSource: legacyApp.overrideSource,
      allowIdChange: legacyApp.allowIdChange,
      otherAssetUrls: legacyApp.otherAssetUrls,
    );
  }

  // Convert to legacy App for compatibility
  App toLegacy() {
    return App(
      id,
      url,
      author,
      name,
      installedVersion,
      latestVersion,
      apkUrls,
      preferredApkIndex,
      additionalSettings,
      lastUpdateCheck,
      pinned,
      categories: categories,
      releaseDate: releaseDate,
      changeLog: changeLog,
      remoteIconUrl: remoteIconUrl,
      overrideSource: overrideSource,
      allowIdChange: allowIdChange,
      otherAssetUrls: otherAssetUrls,
    );
  }

  // Icon-related getters
  IconLoadingState get loadingState => _loadingState;
  Uint8List? get cachedIconData => _cachedIconData;
  String? get lastError => _lastError;
  bool get hasIcon => _cachedIconData != null || remoteIconUrl != null;
  bool get isLoading => _loadingState == IconLoadingState.loading;
  bool get hasError => _loadingState == IconLoadingState.error;

  // Icon loading methods
  void setIconLoading() {
    _loadingState = IconLoadingState.loading;
    _lastError = null;
  }

  void setIconLoaded(Uint8List iconData) {
    _cachedIconData = iconData;
    _loadingState = IconLoadingState.loaded;
    _lastError = null;
  }

  void setIconError(String error) {
    _loadingState = IconLoadingState.error;
    _lastError = error;
  }

  void resetIconState() {
    _loadingState = IconLoadingState.notStarted;
    _cachedIconData = null;
    _lastError = null;
  }

  // Get the best available icon URL
  String? get bestIconUrl {
    if (remoteIconUrl?.isNotEmpty == true) return remoteIconUrl;
    return fallbackIconUrl?.isNotEmpty == true ? fallbackIconUrl : null;
  }

  // Check if icon should be pre-fetched
  bool get shouldPrefetch {
    return hasIcon &&
        iconPriority != IconPriority.low &&
        (pinned || installedVersion != null);
  }

  // Get icon priority score for pre-fetching
  double get prefetchScore {
    double score = 0.0;

    // Priority based on app importance
    switch (iconPriority) {
      case IconPriority.high:
        score += 100;
        break;
      case IconPriority.normal:
        score += 50;
        break;
      case IconPriority.low:
        score += 10;
        break;
    }

    // Bonus for pinned apps
    if (pinned) score += 30;

    // Bonus for installed apps
    if (installedVersion != null) score += 20;

    // Bonus for recently updated apps
    if (lastUpdateCheck != null) {
      final daysSinceUpdate = DateTime.now()
          .difference(lastUpdateCheck!)
          .inDays;
      if (daysSinceUpdate < 7) {
        score += 15;
      } else if (daysSinceUpdate < 30)
        score += 10;
    }

    return score;
  }

  // Update icon metadata
  void updateIconMetadata({
    int? width,
    int? height,
    int? size,
    String? format,
  }) {
    iconMetadata = IconMetadata(
      width: width,
      height: height,
      size: size,
      format: format,
      lastUpdated: DateTime.now(),
    );
  }

  // Create a copy with updated properties
  EnhancedApp copyWith({
    String? id,
    String? url,
    String? author,
    String? name,
    String? installedVersion,
    String? latestVersion,
    List<MapEntry<String, String>>? apkUrls,
    int? preferredApkIndex,
    Map<String, dynamic>? additionalSettings,
    DateTime? lastUpdateCheck,
    bool? pinned,
    List<String>? categories,
    DateTime? releaseDate,
    String? changeLog,
    String? remoteIconUrl,
    String? fallbackIconUrl,
    IconMetadata? iconMetadata,
    IconPriority? iconPriority,
    bool? iconPreferCached,
    String? overrideSource,
    bool? allowIdChange,
    List<MapEntry<String, String>>? otherAssetUrls,
  }) {
    return EnhancedApp(
      id: id ?? this.id,
      url: url ?? this.url,
      author: author ?? this.author,
      name: name ?? this.name,
      installedVersion: installedVersion ?? this.installedVersion,
      latestVersion: latestVersion ?? this.latestVersion,
      apkUrls: apkUrls ?? this.apkUrls,
      preferredApkIndex: preferredApkIndex ?? this.preferredApkIndex,
      additionalSettings: additionalSettings ?? this.additionalSettings,
      lastUpdateCheck: lastUpdateCheck ?? this.lastUpdateCheck,
      pinned: pinned ?? this.pinned,
      categories: categories ?? this.categories,
      releaseDate: releaseDate ?? this.releaseDate,
      changeLog: changeLog ?? this.changeLog,
      remoteIconUrl: remoteIconUrl ?? this.remoteIconUrl,
      fallbackIconUrl: fallbackIconUrl ?? this.fallbackIconUrl,
      iconMetadata: iconMetadata ?? this.iconMetadata,
      iconPriority: iconPriority ?? this.iconPriority,
      iconPreferCached: iconPreferCached ?? this.iconPreferCached,
      overrideSource: overrideSource ?? this.overrideSource,
      allowIdChange: allowIdChange ?? this.allowIdChange,
      otherAssetUrls: otherAssetUrls ?? this.otherAssetUrls,
    );
  }

  @override
  String toString() {
    return 'EnhancedApp(id: $id, name: $name, hasIcon: $hasIcon, loadingState: $_loadingState)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is EnhancedApp && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}

/// Icon metadata for enhanced tracking
class IconMetadata {
  final int? width;
  final int? height;
  final int? size;
  final String? format;
  final DateTime lastUpdated;

  IconMetadata({
    this.width,
    this.height,
    this.size,
    this.format,
    required this.lastUpdated,
  });

  Map<String, dynamic> toJson() {
    return {
      'width': width,
      'height': height,
      'size': size,
      'format': format,
      'lastUpdated': lastUpdated.toIso8601String(),
    };
  }

  factory IconMetadata.fromJson(Map<String, dynamic> json) {
    return IconMetadata(
      width: json['width'],
      height: json['height'],
      size: json['size'],
      format: json['format'],
      lastUpdated: DateTime.parse(json['lastUpdated']),
    );
  }
}

/// Icon loading states for UI optimization
enum IconLoadingState { notStarted, loading, loaded, error }

/// Icon priority for pre-fetching
enum IconPriority {
  low, // Background apps, rarely used
  normal, // Regular apps
  high, // Pinned, frequently used apps
}

/// Icon request configuration for fine-tuned loading
class IconRequestConfig {
  final int? maxSize;
  final ImageFormat preferredFormat;
  final bool enableMemoryCache;
  final bool enableDiskCache;
  final Duration timeout;
  final int retryCount;
  final bool forceRefresh;

  const IconRequestConfig({
    this.maxSize,
    this.preferredFormat = ImageFormat.auto,
    this.enableMemoryCache = true,
    this.enableDiskCache = true,
    this.timeout = const Duration(seconds: 30),
    this.retryCount = 3,
    this.forceRefresh = false,
  });

  static const IconRequestConfig fast = IconRequestConfig(
    timeout: Duration(seconds: 10),
    retryCount: 1,
    maxSize: 128,
  );

  static const IconRequestConfig highQuality = IconRequestConfig(
    maxSize: 512,
    retryCount: 5,
    timeout: Duration(seconds: 60),
  );
}

/// Legacy App compatibility shim
// This would be the existing App class from source_provider.dart
// We're extending it here for compatibility
class App {
  late String id;
  late String url;
  late String author;
  late String name;
  String? installedVersion;
  late String latestVersion;
  List<MapEntry<String, String>> apkUrls = [];
  List<MapEntry<String, String>> otherAssetUrls = [];
  late int preferredApkIndex;
  late Map<String, dynamic> additionalSettings;
  late DateTime? lastUpdateCheck;
  bool pinned = false;
  List<String> categories;
  late DateTime? releaseDate;
  late String? changeLog;
  late String? remoteIconUrl;
  late String? overrideSource;
  bool allowIdChange = false;

  App(
    this.id,
    this.url,
    this.author,
    this.name,
    this.installedVersion,
    this.latestVersion,
    this.apkUrls,
    this.preferredApkIndex,
    this.additionalSettings,
    this.lastUpdateCheck,
    this.pinned, {
    this.categories = const [],
    this.releaseDate,
    this.changeLog,
    this.remoteIconUrl,
    this.overrideSource,
    this.allowIdChange = false,
    this.otherAssetUrls = const [],
  });

  String? get overrideName =>
      additionalSettings['appName']?.toString().trim().isNotEmpty == true
      ? additionalSettings['appName']
      : null;

  String get finalName {
    return overrideName ?? name;
  }

  String? get overrideAuthor =>
      additionalSettings['appAuthor']?.toString().trim().isNotEmpty == true
      ? additionalSettings['appAuthor']
      : null;

  String get finalAuthor {
    return overrideAuthor ?? author;
  }
}
