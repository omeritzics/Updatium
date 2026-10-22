import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:updatium/custom_errors.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/providers/source_provider.dart' as source_provider;
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/components/generated_form.dart';
import 'package:updatium/services/slang_converter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Gitea extends AppSource {
  Gitea({bool hostChanged = false}) {
    name = 'Gitea';
    hosts = ['gitea.com'];
    canSearch = true;
    showReleaseDateAsVersionToggle = true;
    this.hostChanged = hostChanged;
    allowIncludeZips = true;
    isOpenSource = true;
    sourceConfigSettingFormItems = [
      GeneratedFormTextField(
        'giteaTokenLabel'.t(),
        label: 'giteaTokenLabel'.t(),
        password: true,
        required: false,
        belowWidgets: [
          const SizedBox(height: 4),
          TextButton(
            onPressed: () {
              launchUrlString(
                'https://docs.gitea.com/next/development/api-usage',
                mode: LaunchMode.externalApplication,
              );
            },
            child: Text('about'.t(), style: const TextStyle(fontSize: 12)),
          ),
        ],
      ),
    ];
    additionalSourceAppSpecificSettingFormItems = [];
  }

  @override
  String sourceSpecificStandardizeURL(String url, {bool forSelection = false}) {
    return SourceProvider().standardizeUrlWithRegex(
      url,
      '^https?://(www\\.)?${getSourceRegex(hosts)}/[^/]+/[^/]+',
      sourceName: name,
    );
  }

  Future<String?> getTokenIfAny(Map<String, dynamic> additionalSettings) async {
    final SettingsProvider settingsProvider = SettingsProvider();
    await settingsProvider.initializeSettings();
    final sourceConfig = await getSourceConfigValues(
      additionalSettings,
      settingsProvider,
    );
    final String? creds = sourceConfig['giteaTokenLabel'];
    return creds != null && creds.isNotEmpty ? creds : null;
  }

  @override
  Future<Map<String, String>?> getRequestHeaders(
    Map<String, dynamic> additionalSettings,
    String url, {
    bool forAPKDownload = false,
  }) async {
    final token = await getTokenIfAny(additionalSettings);
    final headers = <String, String>{};
    if (token != null && token.isNotEmpty) {
      headers[HttpHeaders.authorizationHeader] = 'token $token';
    }
    if (forAPKDownload == true) {
      headers[HttpHeaders.acceptHeader] = 'application/octet-stream';
    }
    if (headers.isNotEmpty) {
      return headers;
    } else {
      return null;
    }
  }

  @override
  Future<Map<String, List<String>>> search(
    String query, {
    Map<String, dynamic> querySettings = const {},
  }) async {
    final url =
        'https://${hosts[0]}/api/v1/repos/search?q=${Uri.encodeQueryComponent(query)}';
    final res = await sourceRequest(url, {});
    if (res.statusCode != 200) {
      throw getUpdatiumHttpError(res);
    }
    final json = jsonDecode(res.body);
    final repos = json['data'] as List<dynamic>? ?? [];
    final Map<String, List<String>> results = {};
    for (var element in repos) {
      final fullName = element['full_name'] as String?;
      final name = element['name'] as String? ?? '';
      final description =
          element['description'] as String? ?? 'noDescription'.t();
      if (fullName != null) {
        results['https://${hosts[0]}/$fullName'] = [name, description];
      }
    }
    return results;
  }

  @override
  String? changeLogPageFromStandardUrl(String standardUrl) =>
      '$standardUrl/releases';

  AppNames getAppNames(String standardUrl) {
    final pathSegments = Uri.parse(standardUrl).pathSegments;
    if (pathSegments.length >= 2) {
      return AppNames(pathSegments[0], pathSegments[1]);
    }
    throw getUpdatiumHttpError(Response('Invalid URL format', 400));
  }

  @override
  Future<APKDetails> getLatestAPKDetails(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    final names = getAppNames(standardUrl);
    final String owner = names.author;
    final String repo = names.name;
    final bool trackOnly = additionalSettings['trackOnly'] == true;
    final bool includePrereleases = additionalSettings['includePrereleases'] == true;

    // Get releases from Gitea API
    final url = 'https://${hosts[0]}/api/v1/repos/$owner/$repo/releases';
    final Response res = await sourceRequest(url, additionalSettings);

    if (res.statusCode != 200) {
      throw getUpdatiumHttpError(res);
    }

    final releases = jsonDecode(res.body) as List<dynamic>;

    if (releases.isEmpty) {
      throw NoReleasesError();
    }

    // Find the first suitable release
    dynamic targetRelease;
    for (var release in releases) {
      if (!includePrereleases && release['prerelease'] == true) {
        continue;
      }
      if (release['draft'] == true) {
        continue;
      }
      targetRelease = release;
      break;
    }

    if (targetRelease == null) {
      throw NoReleasesError();
    }

    final String version =
        targetRelease['tag_name'] ?? targetRelease['name'] ?? 'unknown';

    // Extract APK URLs from release attachments
    final List<MapEntry<String, String>> apkUrls = [];
    final assets = targetRelease['assets'] as List<dynamic>? ?? [];

    for (var asset in assets) {
      final name = asset['name'] as String? ?? 'unknown';
      final url = asset['browser_download_url'] as String? ?? '';
      if (url.isNotEmpty && source_provider.hasSupportedApkExtension(name)) {
        apkUrls.add(MapEntry(name, url));
      }
    }

    // Also check release body for APK links
    final body = targetRelease['body'] as String? ?? '';
    final bodyUrls = body
        .split('\n')
        .where(
          (line) => source_provider.supportedApkExtensions.any(
            (ext) => line.toLowerCase().contains(ext),
          ),
        )
        .map((line) {
          final match = RegExp(r'\(([^)]+)\)').firstMatch(line);
          return match?.group(1);
        })
        .where((url) => url != null && url.isNotEmpty)
        .cast<String>();

    for (var url in bodyUrls) {
      try {
        final name = Uri.parse(url).pathSegments.last;
        if (source_provider.hasSupportedApkExtension(name) &&
            !apkUrls.any((e) => e.value == url)) {
          apkUrls.add(MapEntry(name, url));
        }
      } catch (e) {
        // Skip malformed URLs
        continue;
      }
    }

    if (apkUrls.isEmpty && !trackOnly) {
      throw NoAPKError();
    }

    // Parse release date
    DateTime? releaseDate;
    final createdAt =
        targetRelease['created_at'] ?? targetRelease['published_at'];
    if (createdAt != null) {
      try {
        releaseDate = DateTime.parse(createdAt as String);
      } catch (_) {}
    }

    String? changeLog = targetRelease['body'] as String?;
    if (changeLog != null && changeLog.isEmpty) {
      changeLog = null;
    }

    return APKDetails(
      version,
      apkUrls,
      AppNames(names.author, names.name),
      releaseDate: releaseDate,
      changeLog: changeLog,
    );
  }
}
