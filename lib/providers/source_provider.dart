// Defines App sources and provides functions used to interact with them
// AppSource is an abstract class with a concrete implementation for each source

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:typed_data';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:html/dom.dart' as dom;
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:updatium/app_sources/apkcombo.dart';
import 'package:updatium/app_sources/apkmirror.dart';
import 'package:updatium/app_sources/apkpure.dart';
import 'package:updatium/app_sources/bitbucket.dart';
import 'package:updatium/app_sources/openapk.dart';
import 'package:updatium/app_sources/aptoide.dart';
import 'package:updatium/app_sources/codeberg.dart';
import 'package:updatium/app_sources/directAPKLink.dart';
import 'package:updatium/app_sources/fdroid.dart';
import 'package:updatium/app_sources/fdroidrepo.dart';
import 'package:updatium/app_sources/gitea.dart';
import 'package:updatium/app_sources/github.dart';
import 'package:updatium/app_sources/gitlab.dart';
import 'package:updatium/app_sources/huaweiappgallery.dart';
import 'package:updatium/app_sources/izzyondroid.dart';
import 'package:updatium/app_sources/html.dart';
import 'package:updatium/app_sources/jenkins.dart';
import 'package:updatium/app_sources/neutroncode.dart';
import 'package:updatium/app_sources/rustore.dart';
import 'package:updatium/app_sources/signal.dart';
import 'package:updatium/app_sources/sourceforge.dart';
import 'package:updatium/app_sources/sourcehut.dart';
import 'package:updatium/app_sources/telegramapp.dart';
import 'package:updatium/app_sources/tencent.dart';
import 'package:updatium/app_sources/whatsapp.dart';
import 'package:updatium/app_sources/uptodown.dart';
import 'package:updatium/app_sources/vivoappstore.dart';
import 'package:updatium/app_sources/vlc.dart';
import 'package:updatium/pages/edit_page.dart';
import 'package:updatium/components/generated_form.dart';
import 'package:updatium/services/githubstars.dart';
import 'package:updatium/providers/logs_provider.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:android_package_installer/android_package_installer.dart';
import 'package:updatium/services/slang_converter.dart';

import 'source_provider.dart';

/// Cache entry for ETag-based conditional requests
class _ETagCacheEntry {
  final String etag;
  final Response response;
  final DateTime cachedAt;

  _ETagCacheEntry(this.etag, this.response, this.cachedAt);

  bool get isExpired =>
      DateTime.now().difference(cachedAt) > const Duration(minutes: 5);
}

/// Simple in-memory cache for API responses with ETag support
class _ETagResponseCache {
  final Map<String, _ETagCacheEntry> _cache = {};

  String _cacheKey(String url, Map<String, dynamic>? additionalSettings) {
    // Include relevant settings that might affect the response
    final settingsHash = additionalSettings?.toString().hashCode ?? 0;
    return '$url:${settingsHash.toString()}';
  }

  String? getETag(String url, Map<String, dynamic>? additionalSettings) {
    final key = _cacheKey(url, additionalSettings);
    final entry = _cache[key];
    if (entry == null || entry.isExpired) {
      _cache.remove(key);
      return null;
    }
    return entry.etag;
  }

  Response? getCachedResponse(
    String url,
    Map<String, dynamic>? additionalSettings,
  ) {
    final key = _cacheKey(url, additionalSettings);
    final entry = _cache[key];
    if (entry == null || entry.isExpired) {
      _cache.remove(key);
      return null;
    }
    return entry.response;
  }

  void store(
    String url,
    Map<String, dynamic>? additionalSettings,
    String etag,
    Response response,
  ) {
    final key = _cacheKey(url, additionalSettings);
    _cache[key] = _ETagCacheEntry(etag, response, DateTime.now());
  }

  void clear() {
    _cache.clear();
  }
}

// Global ETag cache instance
final _etagCache = _ETagResponseCache();

class AppNames {
  late String author;
  late String name;

  AppNames(this.author, this.name);
}

class APKDetails {
  late String version;
  late List<MapEntry<String, String>> apkUrls;
  late AppNames names;
  late DateTime? releaseDate;
  late String? changeLog;
  late String? remoteIconUrl;
  bool? reproducible;
  late List<MapEntry<String, String>> allAssetUrls;

  APKDetails(
    this.version,
    this.apkUrls,
    this.names, {
    this.releaseDate,
    this.changeLog,
    this.remoteIconUrl,
    this.reproducible,
    this.allAssetUrls = const [],
  });
}

// Centralized supported APK file extensions
const List<String> supportedApkExtensions = ['.apk', '.xapk'];

// Check if a filename has a supported APK extension (case-insensitive)
bool hasSupportedApkExtension(String filename) {
  var lower = filename.toLowerCase();
  return supportedApkExtensions.any((ext) => lower.endsWith(ext));
}

// Check if a filename ends with a specific extension (case-insensitive)
bool endsWithExtension(String filename, String extension) {
  return filename.toLowerCase().endsWith(extension.toLowerCase());
}

List<List<String>> stringMapListTo2DList(
  List<MapEntry<String, String>> mapList,
) => mapList.map((e) => [e.key, e.value]).toList();

List<MapEntry<String, String>> assumed2DlistToStringMapList(
  List<dynamic> arr,
) => arr.map((e) => MapEntry(e[0] as String, e[1] as String)).toList();

// App JSON schema has changed multiple times over the many versions of Updatium
// This function takes an App JSON and modifies it if needed to conform to the latest (current) version
Map<String, dynamic> appJSONCompatibilityModifiers(Map<String, dynamic> json) {
  var sourceProvider = SourceProvider();

  // Check if overrideSource points to a removed source and clear it if needed
  if (json['overrideSource'] != null &&
      !sourceProvider.sourceExists(json['overrideSource'])) {
    json['overrideSource'] = null;
  }

  var source = sourceProvider.getSource(
    json['url'],
    overrideSource: json['overrideSource'],
  );

  var formItems = source.combinedAppSpecificSettingFormItems.reduce(
    (value, element) => [...value, ...element],
  );
  Map<String, dynamic> additionalSettings = getDefaultValuesFromFormItems([
    formItems,
  ]);
  Map<String, dynamic> originalAdditionalSettings = {};
  if (json['additionalSettings'] != null) {
    originalAdditionalSettings = Map<String, dynamic>.from(
      jsonDecode(json['additionalSettings']),
    );
    additionalSettings.addEntries(originalAdditionalSettings.entries);
  }
  // If needed, migrate old-style additionalData to newer-style additionalSettings (V1)
  if (json['additionalData'] != null) {
    List<String> temp = List<String>.from(jsonDecode(json['additionalData']));
    temp.asMap().forEach((i, value) {
      if (i < formItems.length) {
        if (formItems[i] is GeneratedFormSwitch) {
          additionalSettings[formItems[i].key] = value == 'true';
        } else {
          additionalSettings[formItems[i].key] = value;
        }
      }
    });
    additionalSettings['trackOnly'] =
        json['trackOnly'] == 'true' || json['trackOnly'] == true;
    additionalSettings['noVersionDetection'] =
        json['noVersionDetection'] == 'true' || json['trackOnly'] == true;
  }
  // Convert bool style version detection options to dropdown style
  if (additionalSettings['noVersionDetection'] == true) {
    additionalSettings['versionDetection'] = 'noVersionDetection';
    if (additionalSettings['releaseDateAsVersion'] == true) {
      additionalSettings['versionDetection'] = 'releaseDateAsVersion';
      additionalSettings.remove('releaseDateAsVersion');
    }
    if (additionalSettings['noVersionDetection'] != null) {
      additionalSettings.remove('noVersionDetection');
    }
    if (additionalSettings['releaseDateAsVersion'] != null) {
      additionalSettings.remove('releaseDateAsVersion');
    }
  }
  // Convert dropdown style version detection options back into bool style
  if (additionalSettings['versionDetection'] == 'standardVersionDetection') {
    additionalSettings['versionDetection'] = true;
  } else if (additionalSettings['versionDetection'] == 'noVersionDetection') {
    additionalSettings['versionDetection'] = false;
  } else if (additionalSettings['versionDetection'] == 'releaseDateAsVersion') {
    additionalSettings['versionDetection'] = false;
    additionalSettings['releaseDateAsVersion'] = true;
  }
  // Convert bool style pseudo version method to dropdown style
  if (originalAdditionalSettings['supportFixedAPKURL'] == true) {
    additionalSettings['defaultPseudoVersioningMethod'] = 'partialAPKHash';
  } else if (originalAdditionalSettings['supportFixedAPKURL'] == false) {
    additionalSettings['defaultPseudoVersioningMethod'] = 'APKLinkHash';
  }
  // Ensure additionalSettings are correctly typed
  for (var item in formItems) {
    if (additionalSettings[item.key] != null) {
      additionalSettings[item.key] = item.ensureType(
        additionalSettings[item.key],
      );
    }
  }
  int preferredApkIndex = json['preferredApkIndex'] == null
      ? 0
      : json['preferredApkIndex'] as int;
  if (preferredApkIndex < 0) {
    preferredApkIndex = 0;
  }
  json['preferredApkIndex'] = preferredApkIndex;
  // apkUrls can either be old list or new named list apkUrls
  List<MapEntry<String, String>> apkUrls = [];
  if (json['apkUrls'] != null) {
    var apkUrlJson = jsonDecode(json['apkUrls']);
    try {
      apkUrls = getApkUrlsFromUrls(List<String>.from(apkUrlJson));
    } catch (e) {
      apkUrls = assumed2DlistToStringMapList(List<dynamic>.from(apkUrlJson));
      apkUrls = List<dynamic>.from(
        apkUrlJson,
      ).map((e) => MapEntry(e[0] as String, e[1] as String)).toList();
    }
    json['apkUrls'] = jsonEncode(stringMapListTo2DList(apkUrls));
  }
  // Arch based APK filter option should be disabled if it previously did not exist
  if (additionalSettings['autoApkFilterByArch'] == null) {
    additionalSettings['autoApkFilterByArch'] = false;
  }
  // GitHub "don't sort" option to new dropdown format
  if (additionalSettings['dontSortReleasesList'] == true) {
    additionalSettings['sortMethodChoice'] = 'none';
  }
  if (source.runtimeType == HTML().runtimeType) {
    // HTML key rename
    if (originalAdditionalSettings['sortByFileNamesNotLinks'] != null) {
      additionalSettings['sortByLastLinkSegment'] =
          originalAdditionalSettings['sortByFileNamesNotLinks'];
    }
    // HTML single 'intermediate link' should be converted to multi-support version
    if (originalAdditionalSettings['intermediateLinkRegex'] != null &&
        additionalSettings['intermediateLinkRegex']?.isNotEmpty != true) {
      additionalSettings['intermediateLink'] = [
        {
          'customLinkFilterRegex':
              originalAdditionalSettings['intermediateLinkRegex'],
          'filterByLinkText':
              originalAdditionalSettings['intermediateLinkByText'],
        },
      ];
    }
    if ((additionalSettings['intermediateLink']?.length ?? 0) > 0) {
      additionalSettings['intermediateLink'] =
          additionalSettings['intermediateLink'].where((e) {
            return e['customLinkFilterRegex']?.isNotEmpty == true;
          }).toList();
    }
    // Steam source apps should be converted to HTML (#1244)
    var legacySteamSourceApps = ['steam', 'steam-chat-app'];
    if (legacySteamSourceApps.contains(additionalSettings['app'] ?? '')) {
      json['url'] = '${json['url']}/mobile';
      var replacementAdditionalSettings = getDefaultValuesFromFormItems(
        HTML().combinedAppSpecificSettingFormItems,
      );
      for (var s in replacementAdditionalSettings.keys) {
        if (additionalSettings.containsKey(s)) {
          replacementAdditionalSettings[s] = additionalSettings[s];
        }
      }
      replacementAdditionalSettings['customLinkFilterRegex'] =
          '/${additionalSettings['app']}-(([0-9]+\\.?){1,})\\.apk';
      replacementAdditionalSettings['versionExtractionRegEx'] =
          replacementAdditionalSettings['customLinkFilterRegex'];
      replacementAdditionalSettings['matchGroupToUse'] = '\$1';
      additionalSettings = replacementAdditionalSettings;
    }
    // Signal apps from before it was removed should be converted to HTML (#1928)
    if (json['url'] == 'https://signal.org' &&
        json['id'] == 'org.thoughtcrime.securesms' &&
        json['appAuthor'] == 'Signal' &&
        json['name'] == 'Signal' &&
        json['overrideSource'] == null &&
        additionalSettings['trackOnly'] == false &&
        additionalSettings['versionExtractionRegEx'] == '' &&
        json['lastUpdateCheck'] != null) {
      json['url'] = 'https://updates.signal.org/android/latest.json';
      var replacementAdditionalSettings = getDefaultValuesFromFormItems(
        HTML().combinedAppSpecificSettingFormItems,
      );
      replacementAdditionalSettings['versionExtractionRegEx'] =
          '\\d+.\\d+.\\d+';
      additionalSettings = replacementAdditionalSettings;
    }
    // WhatsApp from before it was removed should be converted to HTML (#1943)
    if (json['url'] == 'https://whatsapp.com' &&
        json['id'] == 'com.whatsapp' &&
        json['appAuthor'] == 'Meta' &&
        json['name'] == 'WhatsApp' &&
        json['overrideSource'] == null &&
        additionalSettings['trackOnly'] == false &&
        additionalSettings['versionExtractionRegEx'] == '' &&
        json['lastUpdateCheck'] != null) {
      json['url'] = 'https://whatsapp.com/android';
      var replacementAdditionalSettings = getDefaultValuesFromFormItems(
        HTML().combinedAppSpecificSettingFormItems,
      );
      replacementAdditionalSettings['refreshBeforeDownload'] = true;
      additionalSettings = replacementAdditionalSettings;
    }
    // VLC from before it was removed should be converted to HTML (#1943)
    if (json['url'] == 'https://videolan.org' &&
        json['id'] == 'org.videolan.vlc' &&
        json['appAuthor'] == 'VideoLAN' &&
        json['name'] == 'VLC' &&
        json['overrideSource'] == null &&
        additionalSettings['trackOnly'] == false &&
        additionalSettings['versionExtractionRegEx'] == '' &&
        json['lastUpdateCheck'] != null) {
      json['url'] = 'https://www.videolan.org/vlc/download-android.html';
      var replacementAdditionalSettings = getDefaultValuesFromFormItems(
        HTML().combinedAppSpecificSettingFormItems,
      );
      replacementAdditionalSettings['refreshBeforeDownload'] = true;
      replacementAdditionalSettings['intermediateLink'] =
          <Map<String, dynamic>>[
            {
              'customLinkFilterRegex': 'APK',
              'filterByLinkText': true,
              'skipSort': false,
              'reverseSort': false,
              'sortByLastLinkSegment': false,
            },
            {
              'customLinkFilterRegex': 'arm64-v8a\\.apk\$',
              'filterByLinkText': false,
              'skipSort': false,
              'reverseSort': false,
              'sortByLastLinkSegment': false,
            },
          ];
      replacementAdditionalSettings['versionExtractionRegEx'] =
          '/vlc-android/([^/]+)/';
      replacementAdditionalSettings['matchGroupToUse'] = "1";
      additionalSettings = replacementAdditionalSettings;
    }
  }
  json['additionalSettings'] = jsonEncode(additionalSettings);
  // F-Droid no longer needs cloudflare exception since override can be used - migrate apps appropriately
  // This allows us to reverse the changes made for issue #418 (support cloudflare.f-droid)
  // While not causing problems for existing apps from that source that were added in a previous version
  var overrideSourceWasUndefined = !json.keys.contains('overrideSource');
  if ((json['url'] as String).startsWith('https://cloudflare.f-droid.org')) {
    json['overrideSource'] = FDroid().runtimeType.toString();
  } else if (overrideSourceWasUndefined) {
    // Similar to above, but for third-party F-Droid repos
    RegExpMatch? match = RegExp(
      '^https?://.+/fdroid/([^/]+(/|\\?)|[^/]+\$)',
    ).firstMatch(json['url'] as String);
    if (match != null) {
      json['overrideSource'] = FDroidRepo().runtimeType.toString();
    }
  }
  return json;
}

class App {
  late String id;
  late String url;
  late String author;
  late String name;
  String? installedVersion;
  late String latestVersion;
  bool? reproducible;
  List<MapEntry<String, String>> apkUrls = []; // Key is name, value is URL
  List<MapEntry<String, String>> otherAssetUrls = [];
  late int preferredApkIndex;
  late Map<String, dynamic> additionalSettings;
  late DateTime? lastUpdateCheck;
  bool pinned = false;
  List<String>? categories;
  late DateTime? releaseDate;
  late String? changeLog;
  late String? remoteIconUrl;
  late String? overrideSource;
  bool allowIdChange = false;
  String? pendingRepoRenameUrl;
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
    this.reproducible,
    this.overrideSource,
    this.allowIdChange = false,
    this.otherAssetUrls = const [],
    this.pendingRepoRenameUrl,
  });

  @override
  String toString() {
    return 'ID: $id URL: $url INSTALLED: $installedVersion LATEST: $latestVersion APK: $apkUrls PREFERREDAPK: $preferredApkIndex ADDITIONALSETTINGS: ${additionalSettings.toString()} LASTCHECK: ${lastUpdateCheck.toString()} PINNED $pinned';
  }

  bool get hasPendingRepoRename =>
      pendingRepoRenameUrl != null && pendingRepoRenameUrl!.isNotEmpty;

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

  App deepCopy() => App(
    id,
    url,
    author,
    name,
    installedVersion,
    latestVersion,
    apkUrls,
    preferredApkIndex,
    Map.from(additionalSettings),
    lastUpdateCheck,
    pinned,
    reproducible: reproducible,
    categories: categories,
    changeLog: changeLog,
    remoteIconUrl: remoteIconUrl,
    releaseDate: releaseDate,
    overrideSource: overrideSource,
    allowIdChange: allowIdChange,
    otherAssetUrls: otherAssetUrls,
    pendingRepoRenameUrl: pendingRepoRenameUrl,
  );

  factory App.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> originalJSON = Map.from(json);
    try {
      json = appJSONCompatibilityModifiers(json);
    } catch (e) {
      json = originalJSON;
      LogsProvider().add(
        'Error running JSON compat modifiers: ${e.toString()}: ${originalJSON.toString()}',
      );
    }
    return App(
      json['id'] as String,
      json['url'] as String,
      json['appAuthor'] as String,
      json['name'] as String,
      json['installedVersion'] == null
          ? null
          : json['installedVersion'] as String,
      (json['latestVersion'] ?? 'unknown'.t()) as String,
      assumed2DlistToStringMapList(
        jsonDecode((json['apkUrls'] ?? '[["placeholder", "placeholder"]]')),
      ),
      (json['preferredApkIndex'] ?? -1) as int,
      jsonDecode(json['additionalSettings']) as Map<String, dynamic>,
      json['lastUpdateCheck'] == null
          ? null
          : DateTime.fromMicrosecondsSinceEpoch(json['lastUpdateCheck']),
      json['pinned'] ?? false,
      reproducible: json['reproducible'],
      categories: json['categories'] != null
          ? (json['categories'] as List<dynamic>)
                .map((e) => e.toString())
                .toList()
          : json['category'] != null
          ? [json['category'] as String]
          : [],
      releaseDate: json['releaseDate'] == null
          ? null
          : DateTime.fromMicrosecondsSinceEpoch(json['releaseDate']),
      changeLog: json['changeLog'] == null ? null : json['changeLog'] as String,
      remoteIconUrl: json['remoteIconUrl'] == null
          ? null
          : json['remoteIconUrl'] as String,
      overrideSource: json['overrideSource'],
      allowIdChange: json['allowIdChange'] ?? false,
      otherAssetUrls: assumed2DlistToStringMapList(
        jsonDecode((json['otherAssetUrls'] ?? '[]')),
      ),
      pendingRepoRenameUrl: json['pendingRepoRenameUrl'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'url': url,
    'appAuthor': author,
    'name': name,
    'installedVersion': installedVersion,
    'latestVersion': latestVersion,
    'reproducible': reproducible,
    'apkUrls': jsonEncode(stringMapListTo2DList(apkUrls)),
    'otherAssetUrls': jsonEncode(stringMapListTo2DList(otherAssetUrls)),
    'preferredApkIndex': preferredApkIndex,
    'additionalSettings': jsonEncode(additionalSettings),
    'lastUpdateCheck': lastUpdateCheck?.microsecondsSinceEpoch,
    'pinned': pinned,
    'categories': categories,
    'releaseDate': releaseDate?.microsecondsSinceEpoch,
    'changeLog': changeLog,
    'remoteIconUrl': remoteIconUrl,
    'overrideSource': overrideSource,
    'allowIdChange': allowIdChange,
    'pendingRepoRenameUrl': pendingRepoRenameUrl,
  };
}

// Ensure the input is starts with HTTPS and has no WWW
String preStandardizeUrl(String url) {
  var firstDotIndex = url.indexOf('.');
  if (!(firstDotIndex >= 0 && firstDotIndex != url.length - 1)) {
    throw UnsupportedURLError();
  }
  if (url.toLowerCase().indexOf('http://') != 0 &&
      url.toLowerCase().indexOf('https://') != 0) {
    url = 'https://$url';
  }
  var uri = Uri.tryParse(url);
  var trailingSlash =
      ((uri?.path.endsWith('/') ?? false) ||
          ((uri?.path.isEmpty ?? false) && url.endsWith('/'))) &&
      (uri?.queryParameters.isEmpty ?? false);

  url =
      url
          .split('/')
          .where((e) => e.isNotEmpty)
          .join('/')
          .replaceFirst(':/', '://') +
      (trailingSlash ? '/' : '');
  return url;
}

String noAPKFound = 'noAPKFound'.t();

List<String> getLinksFromParsedHTML(
  dom.Document dom,
  RegExp hrefPattern,
  String prependToLinks,
) => dom
    .querySelectorAll('a')
    .where((element) {
      if (element.attributes['href'] == null) return false;
      return hrefPattern.hasMatch(element.attributes['href']!);
    })
    .map((e) => '$prependToLinks${e.attributes['href']!}')
    .toList();

Map<String, dynamic> getDefaultValuesFromFormItems(
  List<List<GeneratedFormItem>> items,
) {
  return Map.fromEntries(
    items
        .map((row) => row.map((el) => MapEntry(el.key, el.defaultValue ?? '')))
        .reduce((value, element) => [...value, ...element]),
  );
}

List<MapEntry<String, String>> getApkUrlsFromUrls(List<String> urls) =>
    urls.map((e) {
      var segments = e.split('/').where((el) => el.trim().isNotEmpty);
      var apkSegs = segments.where(hasSupportedApkExtension);
      return MapEntry(apkSegs.isNotEmpty ? apkSegs.last : segments.last, e);
    }).toList();

Future<List<MapEntry<String, String>>> filterApksByArch(
  List<MapEntry<String, String>> apkUrls,
) async {
  if (apkUrls.length > 1) {
    var abis = (await DeviceInfoPlugin().androidInfo).supportedAbis;
    for (var abi in abis) {
      // More precise matching: look for ABI as a separate component in filename
      // Matches patterns like: arm64-v8a, _arm64-v8a, -arm64-v8a, arm64-v8a.apk
      var suffix = '';
      if (abi.toLowerCase() == 'x86') {
        suffix = r'(?!_?64)';
      } else if (abi.toLowerCase() == 'armeabi') {
        suffix = r'(?!-?v7a)';
      }
      var abiPattern = RegExp(
        r'(^|[-_\.])' + RegExp.escape(abi) + suffix + r'($|[-_\.])',
        caseSensitive: false,
      );
      var urls2 = apkUrls
          .where((element) => abiPattern.hasMatch(element.key))
          .toList();
      if (urls2.isNotEmpty && urls2.length < apkUrls.length) {
        apkUrls = urls2;
        break;
      }
    }
  }
  return apkUrls;
}

List<MapEntry<String, String>> preferApkOverXapk(
  List<MapEntry<String, String>> apkUrls,
) {
  if (apkUrls.length > 1) {
    var apks = apkUrls
        .where((e) => e.key.toLowerCase().endsWith('.apk'))
        .toList();
    var xapks = apkUrls
        .where((e) => e.key.toLowerCase().endsWith('.xapk'))
        .toList();
    var others = apkUrls
        .where(
          (e) =>
              !e.key.toLowerCase().endsWith('.apk') &&
              !e.key.toLowerCase().endsWith('.xapk'),
        )
        .toList();
    return [...apks, ...xapks, ...others];
  }
  return apkUrls;
}

String getSourceRegex(List<String> hosts) {
  return '(${hosts.join('|').replaceAll('.', '\\.')})';
}

HttpClient createHttpClient(bool insecure) {
  final client = HttpClient();
  if (insecure) {
    client.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
  }
  return client;
}

Future<MapEntry<Uri, MapEntry<HttpClient, HttpClientResponse>>>
sourceRequestStreamResponse(
  String method,
  String url,
  Map<String, String>? requestHeaders,
  Map<String, dynamic> additionalSettings, {
  bool followRedirects = true,
  Object? postBody,
}) async {
  var currentUrl = Uri.parse(url);
  var redirectCount = 0;
  const maxRedirects = 10;
  List<Cookie> cookies = [];
  while (redirectCount < maxRedirects) {
    var httpClient = createHttpClient(
      additionalSettings['allowInsecure'] == true,
    );
    var request = await httpClient.openUrl(method, currentUrl);
    if (requestHeaders != null) {
      requestHeaders.forEach((key, value) {
        request.headers.set(key, value);
      });
    }
    request.cookies.addAll(cookies);
    request.followRedirects = false;
    if (postBody != null) {
      request.headers.contentType = ContentType.json;
      request.write(jsonEncode(postBody));
    }
    final response = await request.close();

    if (followRedirects &&
        (response.statusCode >= 300 && response.statusCode <= 399)) {
      final location = response.headers.value(HttpHeaders.locationHeader);
      if (location != null) {
        currentUrl = Uri.parse(ensureAbsoluteUrl(location, currentUrl));
        redirectCount++;
        cookies = response.cookies;
        httpClient.close();
        continue;
      }
    }

    return MapEntry(currentUrl, MapEntry(httpClient, response));
  }
  throw UpdatiumError('Too many redirects ($maxRedirects)');
}

Future<Response> httpClientResponseStreamToFinalResponse(
  HttpClient httpClient,
  String method,
  String url,
  HttpClientResponse response,
) async {
  final bytes = (await response.fold<BytesBuilder>(
    BytesBuilder(),
    (b, d) => b..add(d),
  )).toBytes();

  final headers = <String, String>{};
  response.headers.forEach((name, values) {
    headers[name] = values.join(', ');
  });

  httpClient.close();

  return http.Response.bytes(
    bytes,
    response.statusCode,
    headers: headers,
    request: http.Request(method, Uri.parse(url)),
  );
}

abstract class AppSource {
  List<String> hosts = [];
  bool hostChanged = false;
  bool hostIdenticalDespiteAnyChange = false;
  late String name;
  bool changeLogIfAnyIsMarkDown = true;
  bool appIdInferIsOptional = false;
  bool allowSubDomains = false;
  bool naiveStandardVersionDetection = false;
  bool allowOverride = true;
  bool neverAutoSelect = false;
  bool showReleaseDateAsVersionToggle = false;
  bool versionDetectionDisallowed = false;
  List<String> excludeCommonSettingKeys = [];
  bool urlsAlwaysHaveExtension = false;
  bool allowIncludeZips = false;
  bool openSource = false;

  AppSource() {
    name = runtimeType.toString();
  }

  String standardizeUrl(String url) {
    url = preStandardizeUrl(url);
    if (!hostChanged) {
      url = sourceSpecificStandardizeURL(url);
    }
    return url;
  }

  Future<Map<String, String>?> getRequestHeaders(
    Map<String, dynamic> additionalSettings,
    String url, {
    bool forAPKDownload = false,
  }) async {
    return null;
  }

  App endOfGetAppChanges(App app) {
    return app;
  }

  Future<Response> sourceRequest(
    String url,
    Map<String, dynamic> additionalSettings, {
    bool followRedirects = true,
    Object? postBody,
  }) async {
    var sp = SettingsProvider();
    await sp.initializeSettings();
    getSourceConfigValues(additionalSettings, sp);
    var additionalSettingsPlusSourceConfig = {
      ...additionalSettings,
      ...(await getSourceConfigValues(additionalSettings, sp)),
    };
    url = await generalReqPrefetchModifier(
      url,
      additionalSettingsPlusSourceConfig,
    );
    var method = postBody == null ? 'GET' : 'POST';
    var requestHeaders =
        await getRequestHeaders(additionalSettingsPlusSourceConfig, url) ?? {};

    // ETag-based conditional request optimization
    // Only for GET requests to API endpoints (not for APK downloads)
    String? cachedETag;
    if (method == 'GET' && !_isDownloadUrl(url)) {
      cachedETag = _etagCache.getETag(url, additionalSettings);
      if (cachedETag != null) {
        requestHeaders['If-None-Match'] = cachedETag;
      }
    }

    var streamedResponseUrlWithResponseAndClient =
        await sourceRequestStreamResponse(
          method,
          url,
          requestHeaders,
          additionalSettingsPlusSourceConfig,
          followRedirects: followRedirects,
          postBody: postBody,
        );

    var response = await httpClientResponseStreamToFinalResponse(
      streamedResponseUrlWithResponseAndClient.value.key,
      method,
      streamedResponseUrlWithResponseAndClient.key.toString(),
      streamedResponseUrlWithResponseAndClient.value.value,
    );

    // Handle 304 Not Modified - return cached response
    if (response.statusCode == 304 && cachedETag != null) {
      var cachedResponse = _etagCache.getCachedResponse(
        url,
        additionalSettings,
      );
      if (cachedResponse != null) {
        return cachedResponse;
      }
      // If cache miss despite 304, continue with normal handling
    }

    // Cache successful GET responses with ETag
    if (method == 'GET' && response.statusCode == 200 && !_isDownloadUrl(url)) {
      var etag = response.headers['etag'];
      if (etag != null && etag.isNotEmpty) {
        _etagCache.store(url, additionalSettings, etag, response);
      }
    }

    return response;
  }

  /// Check if URL is likely an APK/asset download (not an API call)
  bool _isDownloadUrl(String url) {
    var lower = url.toLowerCase();
    return lower.endsWith('.apk') ||
        lower.endsWith('.xapk') ||
        lower.endsWith('.zip') ||
        lower.contains('/download/') ||
        lower.contains('browser_download_url');
  }

  void runOnAddAppInputChange(String inputUrl) {
    //
  }

  String sourceSpecificStandardizeURL(String url, {bool forSelection = false}) {
    throw NotImplementedError();
  }

  Future<APKDetails> getLatestAPKDetails(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) {
    throw NotImplementedError();
  }

  // Different Sources may need different kinds of additional data for Apps
  List<List<GeneratedFormItem>> additionalSourceAppSpecificSettingFormItems =
      [];

  // Some additional data may be needed for Apps regardless of Source
  List<List<GeneratedFormItem>>
  additionalAppSpecificSourceAgnosticSettingFormItemsNeverUseDirectly =
      cloneFormItems(additionalAppSpecificSourceAgnosticSettingFormItems);

  List<List<GeneratedFormItem>> get combinedAdvancedSettingFormItems {
    return getCombinedAdvancedSettingFormItems(allowIncludeZips);
  }

  // Previous 2 variables combined into one at runtime for convenient usage + additional processing
  List<List<GeneratedFormItem>> get combinedAppSpecificSettingFormItems {
    var agnosticItems = cloneFormItems(
      additionalAppSpecificSourceAgnosticSettingFormItemsNeverUseDirectly,
    );

    final versionDetectionIdx = agnosticItems.indexWhere(
      (row) => row.any((item) => item.key == 'versionDetection'),
    );
    if (showReleaseDateAsVersionToggle &&
        versionDetectionIdx >= 0 &&
        !agnosticItems.any(
          (row) => row.any((item) => item.key == 'releaseDateAsVersion'),
        )) {
      agnosticItems.insert(versionDetectionIdx + 1, [
        GeneratedFormSwitch(
          'releaseDateAsVersion',
          label: '${'releaseDateAsVersion'.t()} (${'pseudoVersion'.t()})',
          defaultValue: false,
        ),
      ]);
    }

    agnosticItems = agnosticItems
        .map(
          (e) => e
              .where((ee) => !excludeCommonSettingKeys.contains(ee.key))
              .toList(),
        )
        .where((e) => e.isNotEmpty)
        .toList();

    var moreConditionalItems = <List<GeneratedFormItem>>[];
    if (allowIncludeZips) {
      moreConditionalItems.addAll([
        [
          GeneratedFormSwitch(
            'includeZips',
            label: 'includeZips'.t(),
            defaultValue: false,
          ),
        ],
        [
          GeneratedFormTextField(
            'zippedApkFilterRegEx',
            label: 'zippedApkFilterRegEx'.t(),
            required: false,
            additionalValidators: [
              (value) {
                return regExValidator(value);
              },
            ],
          ),
        ],
      ]);
    }

    if (versionDetectionDisallowed) {
      for (var item in agnosticItems.expand((row) => row)) {
        if (item.key == 'versionDetection' ||
            item.key == 'useVersionCodeAsOSVersion') {
          (item as GeneratedFormSwitch).disabled = true;
          (item as GeneratedFormSwitch).defaultValue = false;
        }
      }
    }

    return [
      ...additionalSourceAppSpecificSettingFormItems,
      ...agnosticItems,
      ...moreConditionalItems,
    ];
  }

  // Some Sources may have additional settings at the Source level (not specific to Apps) - these use SettingsProvider
  // If the source has been overridden, we expect the user to define one-time values as additional settings - don't use the stored values
  List<GeneratedFormItem> sourceConfigSettingFormItems = [];
  Future<Map<String, String>> getSourceConfigValues(
    Map<String, dynamic> additionalSettings,
    SettingsProvider settingsProvider,
  ) async {
    Map<String, String> results = {};
    for (var e in sourceConfigSettingFormItems) {
      var val = hostChanged && !hostIdenticalDespiteAnyChange
          ? additionalSettings[e.key]
          : additionalSettings[e.key] ??
                (e is GeneratedFormSwitch
                    ? settingsProvider.getSettingBool(e.key).toString()
                    : settingsProvider.getSettingString(e.key));
      if (val != null) {
        if (e is GeneratedFormSwitch) {
          val = val.toString();
        }
        }
        results[e.key] = val;
      }
    }
    return results;
  }

  String? changeLogPageFromStandardUrl(String standardUrl) {
    return null;
  }

  Future<String?> getSourceNote() async {
    return null;
  }

  Future<String> assetUrlPrefetchModifier(
    String assetUrl,
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    return assetUrl;
  }

  Future<String> generalReqPrefetchModifier(
    String reqUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    return reqUrl;
  }

  bool canSearch = false;
  bool includeAdditionalOptsInMainSearch = false;
  List<GeneratedFormItem> searchQuerySettingFormItems = [];

  Future<Map<String, List<String>>> search(
    String query, {
    Map<String, dynamic> querySettings = const {},
  }) {
    throw NotImplementedError();
  }

  Future<String?> tryInferringAppId(
    String standardUrl, {
    Map<String, dynamic> additionalSettings = const {},
  }) async {
    return null;
  }
}

UpdatiumError getUpdatiumHttpError(Response res) {
  return UpdatiumError(
    (res.reasonPhrase != null &&
            res.reasonPhrase != null &&
            res.reasonPhrase!.isNotEmpty)
        ? res.reasonPhrase!
        : t('errorWithHttpStatusCode', args: [res.statusCode.toString()]),
  );
}

abstract class MassAppUrlSource {
  late String name;
  late List<String> requiredArgs;
  Future<Map<String, List<String>>> getUrlsWithDescriptions(List<String> args);
}

String? intValidator(String? value, {bool positive = false}) {
  if (value == null) {
    return 'invalidInput'.t();
  }
  var num = int.tryParse(value);
  if (num == null) {
    return 'invalidInput'.t();
  }
  if (positive && num <= 0) {
    return 'invalidInput'.t();
  }
  return null;
}

bool isTempId(App app) {
  // return app.id == generateTempID(app.url, app.additionalSettings);
  return RegExp('^[0-9]+\$').hasMatch(app.id);
}

String? replaceMatchGroupsInString(RegExpMatch match, String matchGroupString) {
  if (RegExp('^\\d+\$').hasMatch(matchGroupString)) {
    matchGroupString = '\$$matchGroupString';
  }
  // Regular expression to match numbers in the input string
  final numberRegex = RegExp(r'\$\d+');
  // Extract all numbers from the input string
  final numbers = numberRegex.allMatches(matchGroupString);
  if (numbers.isEmpty) {
    // If no numbers found, return the original string
    return null;
  }
  // Replace numbers with corresponding match groups
  var outputString = matchGroupString;
  for (final numberMatch in numbers) {
    final number = numberMatch.group(0)!;
    final matchGroup = match.group(int.parse(number.substring(1))) ?? '';
    // Check if the number is preceded by a single backslash
    final isEscaped = outputString.contains('\\$number');
    // Replace the number with the corresponding match group
    if (!isEscaped) {
      outputString = outputString.replaceAll(number, matchGroup);
    } else {
      outputString = outputString.replaceAll('\\$number', number);
    }
  }
  return outputString;
}

String? extractVersion(
  String? versionExtractionRegEx,
  String? matchGroupString,
  String stringToCheck,
) {
  if (versionExtractionRegEx?.isNotEmpty == true) {
    String? version = stringToCheck;
    var match = RegExp(versionExtractionRegEx!).allMatches(version);
    if (match.isEmpty) {
      throw NoVersionError();
    }
    matchGroupString = matchGroupString?.trim() ?? '';
    if (matchGroupString.isEmpty) {
      matchGroupString = "0";
    }
    version = replaceMatchGroupsInString(match.last, matchGroupString);
    if (version?.isNotEmpty != true) {
      throw NoVersionError();
    }
    return version!;
  } else {
    return null;
  }
}

List<MapEntry<String, String>> filterApks(
  List<MapEntry<String, String>> apkUrls,
  String? apkFilterRegEx,
  bool? invert,
) {
  if (apkFilterRegEx?.isNotEmpty == true) {
    var reg = RegExp(apkFilterRegEx!);
    apkUrls = apkUrls.where((element) {
      var hasMatch = reg.hasMatch(element.key);
      return invert == true ? !hasMatch : hasMatch;
    }).toList();
  }
  return apkUrls;
}

bool isEnglish() => 'and'.t() == 'and'; // Quick hack, find a better way
String lowerCaseIfEnglish(String str) => isEnglish() ? str.toLowerCase() : str;

bool isVersionPseudo(App app) =>
    app.additionalSettings['trackOnly'] == true ||
    (app.installedVersion != null &&
        app.additionalSettings['versionDetection'] != true);

class SourceProvider {
  // Cache for compiled regex patterns to avoid recreating them on every call
  final Map<String, RegExp> _regexCache = {};

  // Add more source classes here so they are available via the service
  List<AppSource> get sources => [
    GitHub(),
    GitLab(),
    Bitbucket(),
    Codeberg(),
    Gitea(),
    FDroid(),
    FDroidRepo(),
    IzzyOnDroid(),
    SourceHut(),
    APKCombo(),
    APKPure(),
    OpenAPK(),
    Aptoide(),
    Uptodown(),
    HuaweiAppGallery(),
    Tencent(),
    VivoAppStore(),
    RuStore(),
    Jenkins(),
    APKMirror(),
    TelegramApp(),
    WhatsAppApp(),
    NeutronCode(),
    DirectAPKLink(),
    Signal(),
    VLC(),
    HTML(), // This should ALWAYS be the last option as they are tried in order
  ];

  // Add more mass url source classes here so they are available via the service
  List<MassAppUrlSource> massUrlSources = [GitHubStars()];

  // Helper method to check if a source exists without throwing an error
  bool sourceExists(String? overrideSource) {
    if (overrideSource == null) return true;
    return sources.any((e) => e.runtimeType.toString() == overrideSource);
  }

  AppSource getSource(String url, {String? overrideSource}) {
    url = preStandardizeUrl(url);
    if (overrideSource != null) {
      var srcs = sources.where(
        (e) => e.runtimeType.toString() == overrideSource,
      );
      if (srcs.isEmpty) {
        throw UnsupportedURLError();
      }
      var res = srcs.first;
      var originalHosts = res.hosts;
      var newHost = Uri.parse(url).host;
      res.hosts = [newHost];
      res.hostChanged = true;
      if (originalHosts.contains(newHost)) {
        res.hostIdenticalDespiteAnyChange = true;
      }
      return res;
    }
    AppSource? source;
    for (var s in sources.where((element) => element.hosts.isNotEmpty)) {
      try {
        if (RegExp(
          '^${s.allowSubDomains ? '([^\\.]+\\.)*' : '(www\\.)?'}(${getSourceRegex(s.hosts)})\$',
        ).hasMatch(Uri.parse(url).host)) {
          source = s;
          break;
        }
      } catch (e) {
        // Ignore
      }
    }
    if (source == null) {
      for (var s in sources.where(
        (element) => element.hosts.isEmpty && !element.neverAutoSelect,
      )) {
        try {
          s.sourceSpecificStandardizeURL(url, forSelection: true);
          source = s;
          break;
        } catch (e) {
          //
        }
      }
    }
    if (source == null) {
      throw UnsupportedURLError();
    }
    return source;
  }

  bool ifRequiredAppSpecificSettingsExist(AppSource source) {
    for (var row in source.combinedAppSpecificSettingFormItems) {
      for (var element in row) {
        if (element is GeneratedFormTextField && element.required) {
          return true;
        }
      }
    }
    return false;
  }

  /// Helper method for common URL standardization pattern
  /// Matches URL against a regex pattern and returns the matched portion
  /// Throws InvalidURLError if no match is found
  /// If transform is provided, applies transformation to the matched URL
  String standardizeUrlWithRegex(
    String url,
    String pattern, {
    String? sourceName,
    String Function(String, RegExpMatch)? transform,
  }) {
    // Use cached regex if available, otherwise compile and cache it
    RegExp standardUrlRegEx = _regexCache.putIfAbsent(
      pattern,
      () => RegExp(pattern, caseSensitive: false),
    );
    RegExpMatch? match = standardUrlRegEx.firstMatch(url);
    if (match == null) {
      if (sourceName != null) {
        throw InvalidURLError(sourceName);
      }
      throw UnsupportedURLError();
    }
    String result = match.group(0)!;
    if (transform != null) {
      result = transform(result, match);
    }
    return result;
  }

  /// Helper method to extract app names from a standard URL
  /// Assumes format: https://host/author/name or similar
  /// If nameIndex is null, joins all parts from authorIndex+1 onwards
  AppNames getAppNamesFromUrl(
    String standardUrl, {
    int authorIndex = 0,
    int? nameIndex,
  }) {
    String temp = standardUrl.substring(standardUrl.indexOf('://') + 3);
    List<String> names = temp.substring(temp.indexOf('/') + 1).split('/');
    String name = nameIndex != null
        ? names[nameIndex]
        : names.sublist(authorIndex + 1).join('/');
    return AppNames(names[authorIndex], name);
  }

  String generateTempID(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) => (standardUrl + additionalSettings.toString()).hashCode.toString();

  Future<App> getApp(
    AppSource source,
    String url,
    Map<String, dynamic> additionalSettings, {
    App? currentApp,
    bool trackOnlyOverride = false,
    bool sourceIsOverriden = false,
    bool inferAppIdIfOptional = false,
  }) async {
    var trackOnly = additionalSettings['trackOnly'] == true;
    String standardUrl = source.standardizeUrl(url);
    APKDetails apk = await source.getLatestAPKDetails(
      standardUrl,
      additionalSettings,
    );

    if (source.runtimeType !=
            HTML().runtimeType && // Some sources do it separately
        source.runtimeType != SourceForge().runtimeType) {
      String? extractedVersion = extractVersion(
        additionalSettings['versionExtractionRegEx'] as String?,
        additionalSettings['matchGroupToUse'] as String?,
        apk.version,
      );
      if (extractedVersion != null) {
        apk.version = extractedVersion;
      }
    }

    if (additionalSettings['releaseDateAsVersion'] == true &&
        apk.releaseDate != null) {
      apk.version = apk.releaseDate!.microsecondsSinceEpoch.toString();
    }
    apk.apkUrls = filterApks(
      apk.apkUrls,
      additionalSettings['apkFilterRegEx'],
      additionalSettings['invertAPKFilter'],
    );
    if (apk.apkUrls.isEmpty && !trackOnly) {
      throw NoAPKError();
    }
    if (additionalSettings['autoApkFilterByArch'] == true) {
      apk.apkUrls = await filterApksByArch(apk.apkUrls);
    }
    var sp = SettingsProvider();
    await sp.initializeSettings();
    if (sp.preferApkOverXapk) {
      apk.apkUrls = preferApkOverXapk(apk.apkUrls);
    }
    var name = currentApp != null ? currentApp.name.trim() : '';
    name = name.isNotEmpty ? name : apk.names.name;
    App finalApp = App(
      currentApp?.id ??
          ((additionalSettings['appId'] != null)
              ? additionalSettings['appId']
              : null) ??
          (!trackOnly &&
                  (!source.appIdInferIsOptional ||
                      (source.appIdInferIsOptional && inferAppIdIfOptional))
              ? await source.tryInferringAppId(
                  standardUrl,
                  additionalSettings: additionalSettings,
                )
              : null) ??
          generateTempID(standardUrl, additionalSettings),
      standardUrl,
      apk.names.author,
      name,
      currentApp?.installedVersion,
      apk.version,
      apk.apkUrls,
      apk.apkUrls.length - 1 >= 0 ? apk.apkUrls.length - 1 : 0,
      additionalSettings,
      DateTime.now(),
      currentApp?.pinned ?? false,
      categories: currentApp?.categories ?? const [],
      releaseDate: apk.releaseDate,
      changeLog: apk.changeLog,
      remoteIconUrl: apk.remoteIconUrl,
      overrideSource: sourceIsOverriden
          ? source.runtimeType.toString()
          : currentApp?.overrideSource,
      allowIdChange:
          currentApp?.allowIdChange ??
          trackOnly ||
              (source.appIdInferIsOptional &&
                  inferAppIdIfOptional), // Optional ID inferring may be incorrect - allow correction on first install
      otherAssetUrls: apk.allAssetUrls
          .where((a) => apk.apkUrls.indexWhere((p) => a.key == p.key) < 0)
          .toList(),
    );
    return source.endOfGetAppChanges(finalApp);
  }

  // Returns errors in [results, errors] instead of throwing them
  Future<List<dynamic>> getAppsByURLNaive(
    List<String> urls, {
    List<String> alreadyAddedUrls = const [],
    AppSource? sourceOverride,
  }) async {
    List<App> apps = [];
    Map<String, dynamic> errors = {};

    // Get existing apps to check for duplicates
    final appsProvider = AppsProvider();
    final existingUrls = appsProvider
        .getAppValues()
        .map((e) => e.app.url)
        .toList();
    alreadyAddedUrls.addAll(existingUrls);
    for (var url in urls) {
      try {
        if (alreadyAddedUrls.contains(url)) {
          throw UpdatiumError('appAlreadyAdded'.t());
        }
        var source = sourceOverride ?? getSource(url);
        apps.add(
          await getApp(
            source,
            url,
            sourceIsOverriden: sourceOverride != null,
            getDefaultValuesFromFormItems(
              source.combinedAppSpecificSettingFormItems,
            ),
          ),
        );
      } catch (e) {
        errors.addAll(<String, dynamic>{url: e});
      }
    }
    return [apps, errors];
  }
}

class UpdatiumError {
  late String message;
  bool unexpected;
  UpdatiumError(this.message, {this.unexpected = false});
  @override
  String toString() {
    return message;
  }
}

class RateLimitError extends UpdatiumError {
  late int remainingMinutes;
  RateLimitError(this.remainingMinutes)
    : super('tooManyRequestsTryAgainInMinutes'.plural(remainingMinutes));
}

class InvalidURLError extends UpdatiumError {
  InvalidURLError(String sourceName)
    : super(t('invalidURLForSource', args: [sourceName]));
}

class CredsNeededError extends UpdatiumError {
  CredsNeededError(String sourceName)
    : super(t('requiresCredentialsInSettings', args: [sourceName]));
}

class NoReleasesError extends UpdatiumError {
  NoReleasesError({String? note})
    : super(
        '${'noReleaseFound'.t()}${note?.isNotEmpty == true ? '\n\n$note' : ''}',
      );
}

class NoAPKError extends UpdatiumError {
  NoAPKError() : super('noAPKFound'.t());
}

class NoVersionError extends UpdatiumError {
  NoVersionError() : super('noVersionFound'.t());
}

class UnsupportedURLError extends UpdatiumError {
  UnsupportedURLError() : super('urlMatchesNoSource'.t());
}

class DowngradeError extends UpdatiumError {
  DowngradeError(int currentVersionCode, int newVersionCode)
    : super(
        '${'cantInstallOlderVersion'.t()} (versionCode $currentVersionCode ➔ $newVersionCode)',
      );
}

class InstallError extends UpdatiumError {
  InstallError(int code)
    : super(PackageInstallerStatus.byCode(code).name.substring(7));
}

class IDChangedError extends UpdatiumError {
  IDChangedError(String newId) : super('${'appIdMismatch'.t()} - $newId');
}

class NotImplementedError extends UpdatiumError {
  NotImplementedError() : super('functionNotImplemented'.t());
}

class MultiAppMultiError extends UpdatiumError {
  Map<String, dynamic> rawErrors = {};
  Map<String, List<String>> idsByErrorString = {};
  Map<String, String> appIdNames = {};

  MultiAppMultiError() : super('placeholder'.t(), unexpected: true);

  void add(String appId, dynamic error, {String? appName}) {
    if (error is SocketException) {
      error = error.message;
    }
    rawErrors[appId] = error;
    var string = error.toString();
    var tempIds = idsByErrorString.remove(string);
    tempIds ??= [];
    tempIds.add(appId);
    idsByErrorString.putIfAbsent(string, () => tempIds!);
    if (appName != null) {
      appIdNames[appId] = appName;
    }
  }

  String errorString(String appId, {bool includeIdsWithNames = false}) =>
      '${appIdNames.containsKey(appId) ? '${appIdNames[appId]}${includeIdsWithNames ? ' ($appId)' : ''}' : appId}: ${rawErrors[appId].toString()}';

  String errorsAppsString(
    String errString,
    List<String> appIds, {
    bool includeIdsWithNames = false,
  }) =>
      '$errString [${list2FriendlyString(appIds.map((id) => appIdNames.containsKey(id) == true ? '${appIdNames[id]}${includeIdsWithNames ? ' ($id)' : ''}' : id).toList())}]';

  @override
  String toString() => idsByErrorString.entries
      .map((e) => errorsAppsString(e.key, e.value))
      .join('\n\n');
}

String list2FriendlyString(List<String> list) {
  var isUsingEnglish = isEnglish();
  return list.length == 2
      ? '${list[0]} ${'and'.t()} ${list[1]}'
      : list
            .asMap()
            .entries
            .map(
              (e) =>
                  e.value +
                  (e.key == list.length - 1
                      ? ''
                      : e.key == list.length - 2
                      ? '${isUsingEnglish ? ',' : ''} and '
                      : ', '),
            )
            .join('');
}

/// Reusable widget for selecting a source override
class SourceOverrideDropdown extends StatefulWidget {
  final String? selectedOverride;
  final AppSource? pickedSource;
  final Function(String?) onSelectionChanged;
  final TextEditingController controller;

  const SourceOverrideDropdown({
    super.key,
    required this.selectedOverride,
    required this.pickedSource,
    required this.onSelectionChanged,
    required this.controller,
  });

  @override
  State<SourceOverrideDropdown> createState() => _SourceOverrideDropdownState();
}

class _SourceOverrideDropdownState extends State<SourceOverrideDropdown> {
  late SourceProvider sourceProvider;

  @override
  void initState() {
    super.initState();
    sourceProvider = SourceProvider();
    _updateController();
  }

  @override
  void didUpdateWidget(SourceOverrideDropdown oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedOverride != widget.selectedOverride) {
      _updateController();
    }
  }

  void _updateController() {
    if (widget.selectedOverride == null || widget.selectedOverride == '') {
      widget.controller.text = 'none'.t();
      return;
    }
    if (sourceProvider.sources.isEmpty) {
      widget.controller.text = 'none'.t();
      return;
    }
    AppSource? selectedSource;
    try {
      selectedSource = sourceProvider.sources.firstWhere(
        (s) => s.runtimeType.toString() == widget.selectedOverride,
      );
    } catch (e) {
      selectedSource = null;
    }
    if (selectedSource != null) {
      widget.controller.text = selectedSource.name;
    } else {
      widget.controller.text = 'none'.t();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: MenuAnchor(
                builder: (context, controller, child) {
                  return TextField(
                    controller: widget.controller,
                    readOnly: true,
                    decoration: InputDecoration(
                      labelText: 'overrideSource'.t(),
                      suffixIcon: const Icon(Icons.arrow_drop_down),
                    ),
                    onTap: () {
                      if (controller.isOpen) {
                        controller.close();
                      } else {
                        controller.open();
                      }
                    },
                  );
                },
                menuChildren: [
                  MenuItemButton(
                    onPressed: () {
                      widget.onSelectionChanged(null);
                    },
                    child: Text('none'.t()),
                  ),
                  ...sourceProvider.sources
                      .where(
                        (s) =>
                            s.allowOverride ||
                            (widget.pickedSource != null &&
                                widget.pickedSource.runtimeType ==
                                    s.runtimeType),
                      )
                      .map(
                        (s) => MenuItemButton(
                          onPressed: () {
                            widget.onSelectionChanged(s.runtimeType.toString());
                          },
                          child: Text(s.name),
                        ),
                      ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
