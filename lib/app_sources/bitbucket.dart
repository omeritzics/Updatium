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

class Bitbucket extends AppSource {
  Bitbucket({bool hostChanged = false}) {
    name = 'Bitbucket';
    hosts = ['bitbucket.org'];
    canSearch = true;
    showReleaseDateAsVersionToggle = true;
    this.hostChanged = hostChanged;
    isOpenSource = true;
    sourceConfigSettingFormItems = [
      GeneratedFormTextField(
        'bitbucketAPITokenLabel'.t(),
        label: 'bitbucketAPITokenLabel'.t(),
        hint: 'email@example.com:token',
        password: true,
        required: false,
        belowWidgets: [
          const SizedBox(height: 4),
          TextButton(
            onPressed: () {
              launchUrlString(
                'https://support.atlassian.com/bitbucket-cloud/docs/create-an-api-token/',
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

  Future<String?> getAPITokenIfAny(
    Map<String, dynamic> additionalSettings,
  ) async {
    final SettingsProvider settingsProvider = SettingsProvider();
    await settingsProvider.initializeSettings();
    final sourceConfig = await getSourceConfigValues(
      additionalSettings,
      settingsProvider,
    );
    final String? creds = sourceConfig['bitbucketAPITokenLabel'];
    return creds != null && creds.isNotEmpty ? creds : null;
  }

  Future<Map<String, String>?> getAuthHeaders(
    Map<String, dynamic> additionalSettings,
  ) async {
    final String? apiToken = await getAPITokenIfAny(additionalSettings);
    if (apiToken != null && apiToken.isNotEmpty) {
      // Bitbucket API tokens use Basic Auth: email:api_token
      // The format expected is email:api_token base64 encoded
      return {
        HttpHeaders.authorizationHeader:
            'Basic ${base64Encode(utf8.encode(apiToken))}',
      };
    }
    return null;
  }

  @override
  Future<Map<String, List<String>>> search(
    String query, {
    Map<String, dynamic> querySettings = const {},
  }) async {
    final url =
        'https://api.${hosts[0]}/2.0/repositories?q=${Uri.encodeQueryComponent(query)}';
    final res = await sourceRequest(url, {});
    if (res.statusCode != 200) {
      throw getUpdatiumHttpError(res);
    }
    final json = jsonDecode(res.body);
    final repos = json['values'] as List<dynamic>? ?? [];
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
      '$standardUrl/downloads';

  @override
  Future<Map<String, String>?> getRequestHeaders(
    Map<String, dynamic> additionalSettings,
    String url, {
    bool forAPKDownload = false,
  }) async {
    final headers = await getAuthHeaders(additionalSettings);
    return headers;
  }

  AppNames getAppNames(String standardUrl) {
    final pathSegments = Uri.parse(standardUrl).pathSegments;
    if (pathSegments.length >= 2) {
      return AppNames(pathSegments[0], pathSegments[1]);
    }
    throw getUpdatiumHttpError(Response('', 400));
  }

  @override
  Future<APKDetails> getLatestAPKDetails(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    final names = getAppNames(standardUrl);
    final String workspace = names.author;
    final String repoSlug = names.name;
    final bool trackOnly = additionalSettings['trackOnly'] == true;

    if (!trackOnly) {
      // Try downloads first (similar to GitHub/GitLab releases)
      final downloadsUrl =
          'https://api.${hosts[0]}/2.0/repositories/$workspace/$repoSlug/downloads';
      final Response downloadsRes = await sourceRequest(
        downloadsUrl,
        additionalSettings,
      );

      if (downloadsRes.statusCode == 200) {
        final downloadsJson = jsonDecode(downloadsRes.body);
        final downloads = downloadsJson['values'] as List<dynamic>? ?? [];

        if (downloads.isNotEmpty) {
          final apkDownloads = downloads.where((d) {
            final name = (d['name'] ?? '') as String;
            return source_provider.hasSupportedApkExtension(name);
          }).toList();

          if (apkDownloads.isNotEmpty) {
            // Sort by created_on date (newest first)
            apkDownloads.sort((a, b) {
              final aDate = a['created_on'] ?? '';
              final bDate = b['created_on'] ?? '';
              return bDate.toString().compareTo(aDate.toString());
            });

            final latestDownload = apkDownloads.first;
            final version = latestDownload['name'] as String?;
            // Extract version from filename if possible
            final versionMatch = RegExp(
              r'(\d+(\.\d+)+)',
            ).firstMatch(version ?? '');
            final extractedVersion =
                versionMatch?.group(0) ?? version ?? 'unknown';

            final apkUrls = <MapEntry<String, String>>[];

            for (var download in apkDownloads) {
              final name = download['name'] as String? ?? 'unknown';
              final url = download['links']?['self']?['href'] as String? ?? '';
              if (url.isNotEmpty &&
                  source_provider.hasSupportedApkExtension(name)) {
                apkUrls.add(MapEntry(name, url));
              }
            }

            final createdAt = latestDownload['created_on'];
            DateTime? releaseDate;
            if (createdAt != null) {
              try {
                releaseDate = DateTime.parse(createdAt as String);
              } catch (_) {}
            }

            return APKDetails(
              extractedVersion,
              apkUrls,
              AppNames(names.author, names.name),
              releaseDate: releaseDate,
            );
          }
        }
      }
    }

    // Fallback to tags if no downloads or trackOnly mode
    final tagsUrl =
        'https://api.${hosts[0]}/2.0/repositories/$workspace/$repoSlug/refs/tags?sort=-target.date';
    final Response tagsRes = await sourceRequest(tagsUrl, additionalSettings);

    if (tagsRes.statusCode != 200) {
      throw getUpdatiumHttpError(tagsRes);
    }

    final tagsJson = jsonDecode(tagsRes.body);
    final tags = tagsJson['values'] as List<dynamic>? ?? [];

    if (tags.isEmpty) {
      throw NoReleasesError();
    }

    final latestTag = tags.first;
    final version = latestTag['name'] as String? ?? 'unknown';
    final target = latestTag['target'] as Map<String, dynamic>?;
    DateTime? releaseDate;
    if (target != null && target['date'] != null) {
      try {
        releaseDate = DateTime.parse(target['date'] as String);
      } catch (_) {}
    }

    // For tags, we can't get APKs directly unless they're in downloads
    // Return track-only info if no APKs found
    return APKDetails(
      version,
      [],
      AppNames(names.author, names.name),
      releaseDate: releaseDate,
    );
  }

  @override
  Future<String> assetUrlPrefetchModifier(
    String assetUrl,
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    // Bitbucket download links may need auth
    final authHeaders = await getAuthHeaders(additionalSettings);
    if (authHeaders != null &&
        authHeaders.containsKey(HttpHeaders.authorizationHeader)) {
      // If URL already has query params, append auth
      final uri = Uri.parse(assetUrl);
      if (uri.queryParameters.isNotEmpty) {
        return assetUrl;
      }
    }
    return assetUrl;
  }
}
