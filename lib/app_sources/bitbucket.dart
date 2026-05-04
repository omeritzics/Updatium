import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/providers/source_provider.dart' as source_provider;
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/components/generated_form.dart';
import 'package:simple_localization/simple_localization.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Bitbucket extends AppSource {
  Bitbucket({bool hostChanged = false}) {
    name = tr('bitbucket');
    hosts = ['bitbucket.org'];
    canSearch = true;
    showReleaseDateAsVersionToggle = true;
    this.hostChanged = hostChanged;
    openSource = true;
    sourceConfigSettingFormItems = [
      GeneratedFormTextField(
        tr('bitbucketAPITokenLabel'),
        label: tr('bitbucketAPITokenLabel'),
        hint: 'email@example.com:token',
        password: true,
        required: false,
        belowWidgets: [
          const SizedBox(height: 4),
          GestureDetector(
            onTap: () {
              launchUrlString(
                'https://support.atlassian.com/bitbucket-cloud/docs/create-an-api-token/',
                mode: LaunchMode.externalApplication,
              );
            },
            child: Text(
              tr('about'),
              style: const TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 12,
              ),
            ),
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
    SettingsProvider settingsProvider = SettingsProvider();
    await settingsProvider.initializeSettings();
    var sourceConfig = await getSourceConfigValues(
      additionalSettings,
      settingsProvider,
    );
    String? creds = sourceConfig['bitbucketAPITokenLabel'];
    return creds != null && creds.isNotEmpty ? creds : null;
  }

  Future<Map<String, String>?> getAuthHeaders(
    Map<String, dynamic> additionalSettings,
  ) async {
    String? apiToken = await getAPITokenIfAny(additionalSettings);
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

  Future<Map<String, List<String>>> search(
    String query, {
    Map<String, dynamic> querySettings = const {},
  }) async {
    var url =
        'https://api.${hosts[0]}/2.0/repositories/${Uri.encodeQueryComponent(query)}';
    var res = await sourceRequest(url, {});
    if (res.statusCode != 200) {
      throw getUpdatiumHttpError(res);
    }
    var json = jsonDecode(res.body);
    var repos = json['values'] as List<dynamic>? ?? [];
    Map<String, List<String>> results = {};
    for (var element in repos) {
      var fullName = element['full_name'] as String?;
      var name = element['name'] as String? ?? '';
      var description =
          element['description'] as String? ?? tr('noDescription');
      if (fullName != null) {
        results['https://${hosts[0]}/$fullName'] = [name, description];
      }
    }
    return results;
  }

  String? changeLogPageFromStandardUrl(String standardUrl) =>
      '$standardUrl/downloads';

  @override
  Future<Map<String, String>?> getRequestHeaders(
    Map<String, dynamic> additionalSettings,
    String url, {
    bool forAPKDownload = false,
  }) async {
    var headers = await getAuthHeaders(additionalSettings);
    return headers;
  }

  AppNames getAppNames(String standardUrl) {
    var pathSegments = Uri.parse(standardUrl).pathSegments;
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
    var names = getAppNames(standardUrl);
    String workspace = names.author;
    String repoSlug = names.name;
    bool trackOnly = additionalSettings['trackOnly'] == true;

    if (!trackOnly) {
      // Try downloads first (similar to GitHub/GitLab releases)
      var downloadsUrl =
          'https://api.${hosts[0]}/2.0/repositories/$workspace/$repoSlug/downloads';
      Response downloadsRes = await sourceRequest(
        downloadsUrl,
        additionalSettings,
      );

      if (downloadsRes.statusCode == 200) {
        var downloadsJson = jsonDecode(downloadsRes.body);
        var downloads = downloadsJson['values'] as List<dynamic>? ?? [];

        if (downloads.isNotEmpty) {
          var apkDownloads = downloads.where((d) {
            var name = (d['name'] ?? '') as String;
            return source_provider.hasSupportedApkExtension(name);
          }).toList();

          if (apkDownloads.isNotEmpty) {
            // Sort by created_on date (newest first)
            apkDownloads.sort((a, b) {
              var aDate = a['created_on'] ?? '';
              var bDate = b['created_on'] ?? '';
              return bDate.toString().compareTo(aDate.toString());
            });

            var latestDownload = apkDownloads.first;
            var version = latestDownload['name'] as String?;
            // Extract version from filename if possible
            var versionMatch = RegExp(
              r'(\d+(\.\d+)+)',
            ).firstMatch(version ?? '');
            var extractedVersion =
                versionMatch?.group(0) ?? version ?? 'unknown';

            var apkUrls = <MapEntry<String, String>>[];

            for (var download in apkDownloads) {
              var name = download['name'] as String? ?? 'unknown';
              var url = download['links']?['self']?['href'] as String? ?? '';
              if (url.isNotEmpty &&
                  source_provider.hasSupportedApkExtension(name)) {
                apkUrls.add(MapEntry(name, url));
              }
            }

            var createdAt = latestDownload['created_on'];
            DateTime? releaseDate;
            if (createdAt != null) {
              try {
                releaseDate = DateTime.parse(createdAt as String);
              } catch (_) {
                // Ignore parse errors
              }
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
    var tagsUrl =
        'https://api.${hosts[0]}/2.0/repositories/$workspace/$repoSlug/refs/tags?sort=-target.date';
    Response tagsRes = await sourceRequest(tagsUrl, additionalSettings);

    if (tagsRes.statusCode != 200) {
      throw getUpdatiumHttpError(tagsRes);
    }

    var tagsJson = jsonDecode(tagsRes.body);
    var tags = tagsJson['values'] as List<dynamic>? ?? [];

    if (tags.isEmpty) {
      throw NoReleasesError();
    }

    var latestTag = tags.first;
    var version = latestTag['name'] as String? ?? 'unknown';
    var target = latestTag['target'] as Map<String, dynamic>?;
    DateTime? releaseDate;
    if (target != null && target['date'] != null) {
      try {
        releaseDate = DateTime.parse(target['date'] as String);
      } catch (_) {
        // Ignore parse errors
      }
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
    var authHeaders = await getAuthHeaders(additionalSettings);
    if (authHeaders != null &&
        authHeaders.containsKey(HttpHeaders.authorizationHeader)) {
      // If URL already has query params, append auth
      var uri = Uri.parse(assetUrl);
      if (uri.queryParameters.isNotEmpty) {
        return assetUrl;
      }
    }
    return assetUrl;
  }
}
