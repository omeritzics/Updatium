import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:updatium/app_sources/github.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/providers/source_provider.dart' as source_utils;
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/components/generated_form.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:url_launcher/url_launcher_string.dart';

class GitLab extends AppSource {
  GitLab({bool hostChanged = false}) {
    name = tr('gitlab');
    hosts = ['gitlab.com'];
    canSearch = true;
    showReleaseDateAsVersionToggle = true;
    this.hostChanged = hostChanged;
    sourceConfigSettingFormItems = [
      GeneratedFormTextField(
        tr('gitlabPATLabel'),
        label: tr('gitlabPATLabel'),
        password: true,
        required: false,
        belowWidgets: [
          const SizedBox(height: 4),
          GestureDetector(
            onTap: () {
              launchUrlString(
                'https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html#create-a-personal-access-token',
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
    additionalSourceAppSpecificSettingFormItems = [
      [
        GeneratedFormSwitch(
          'fallbackToOlderReleases',
          label: tr('fallbackToOlderReleases'),
          defaultValue: true,
        ),
      ],
    ];
  }

  @override
  String sourceSpecificStandardizeURL(String url, {bool forSelection = false}) {
    var urlSegments = url.split('/');
    var cutOffIndex = urlSegments.indexWhere((s) => s == '-');
    url = urlSegments
        .sublist(0, cutOffIndex <= 0 ? null : cutOffIndex)
        .join('/');
    RegExp standardUrlRegEx = RegExp(
      '^https?://(www\\.)?${getSourceRegex(hosts)}/[^/]+(/[^((\b/\b)|(\b/-/\b))]+){1,20}',
      caseSensitive: false,
    );
    RegExpMatch? match = standardUrlRegEx.firstMatch(url);
    if (match == null) {
      throw InvalidURLError(name);
    }
    return match.group(0)!;
  }

  Future<String?> getPATIfAny(Map<String, dynamic> additionalSettings) async {
    SettingsProvider settingsProvider = SettingsProvider();
    await settingsProvider.initializeSettings();
    var sourceConfig = await getSourceConfigValues(
      additionalSettings,
      settingsProvider,
    );
    String? creds = sourceConfig['gitlabPATLabel'];
    return creds != null && creds.isNotEmpty ? creds : null;
  }

  Future<Map<String, List<String>>> search(
    String query, {
    Map<String, dynamic> querySettings = const {},
  }) async {
    var url =
        'https://${hosts[0]}/api/v4/projects?search=${Uri.encodeQueryComponent(query)}';
    var res = await sourceRequest(url, {});
    if (res.statusCode != 200) {
      throw getUpdatiumHttpError(res);
    }
    var json = jsonDecode(res.body) as List<dynamic>;
    Map<String, List<String>> results = {};
    for (var element in json) {
      results['https://${hosts[0]}/${element['path_with_namespace']}'] = [
        element['name_with_namespace'],
        element['description'] ?? tr('noDescription'),
      ];
    }
    return results;
  }

  String? changeLogPageFromStandardUrl(String standardUrl) =>
      '$standardUrl/-/releases';

  Future<Map<String, String>?> getRequestHeaders(
    Map<String, dynamic> additionalSettings,
    String url, {
    bool forAPKDownload = false,
  }) async {
    // Change headers to pacify, e.g. cloudflare protection
    // Related to: (#1397, #1389, #1384, #1382, #1381, #1380, #1359, #854, #785, #697)
    var headers = <String, String>{};
    headers[HttpHeaders.refererHeader] = 'https://${hosts[0]}';
    if (headers.isNotEmpty) {
      return headers;
    } else {
      return null;
    }
  }

  @override
  Future<String> assetUrlPrefetchModifier(
    String assetUrl,
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    String? PAT = await getPATIfAny(hostChanged ? additionalSettings : {});
    String optionalAuth = (PAT != null) ? 'private_token=$PAT' : '';
    return '$assetUrl${(Uri.parse(assetUrl).query.isEmpty ? '?' : '&')}$optionalAuth';
  }

  @override
  Future<APKDetails> getLatestAPKDetails(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    // Prepare request params
    var names = GitHub(hostChanged: true).getAppNames(standardUrl);
    String projectUriComponent =
        '${Uri.encodeComponent(names.author)}%2F${Uri.encodeComponent(names.name)}';
    bool trackOnly = additionalSettings['trackOnly'] == true;
    String? PAT = await getPATIfAny(hostChanged ? additionalSettings : {});
    String optionalAuth = (PAT != null) ? 'private_token=$PAT' : '';

    // Get project ID
    Response res0 = await sourceRequest(
      'https://${hosts[0]}/api/v4/projects/$projectUriComponent?$optionalAuth',
      additionalSettings,
    );
    if (res0.statusCode != 200) {
      throw getUpdatiumHttpError(res0);
    }
    int? projectId = jsonDecode(res0.body)['id'];
    if (projectId == null) {
      throw NoReleasesError();
    }
    // Request data from REST API
    Response res = await sourceRequest(
      'https://${hosts[0]}/api/v4/projects/$projectUriComponent/${trackOnly ? 'repository/tags' : 'releases'}?$optionalAuth',
      additionalSettings,
    );
    if (res.statusCode != 200) {
      throw getUpdatiumHttpError(res);
    }

    // Extract .apk details from received data
    var jsonData = jsonDecode(res.body) as List<dynamic>;
    Iterable<APKDetails> apkDetailsList = [];
    apkDetailsList = jsonData.map((e) {
      var apkUrlsFromAssets = (e['assets']?['links'] as List<dynamic>? ?? [])
          .map((e) {
            var url = (e['direct_asset_url'] ?? e['url'] ?? '') as String;
            var parsedUrl = url.isNotEmpty ? Uri.parse(url) : null;
            return MapEntry(
              (e['name'] ??
                      (parsedUrl != null && parsedUrl.pathSegments.isNotEmpty
                          ? parsedUrl.pathSegments.last
                          : 'unknown'))
                  as String,
              (e['direct_asset_url'] ?? e['url'] ?? '') as String,
            );
          })
          .where(
            (s) =>
                s.key.isNotEmpty &&
                (source_utils.hasSupportedApkExtension(s.key) ||
                    source_utils.hasSupportedApkExtension(s.value)),
          )
          .toList();
      var uploadedAPKsFromDescription = ((e['description'] ?? '') as String)
          .split('](')
          .join('\n')
          .split('${source_utils.supportedApkExtensions[0]})')
          .join('${source_utils.supportedApkExtensions[0]}\n')
          .split('${source_utils.supportedApkExtensions[1]})')
          .join('${source_utils.supportedApkExtensions[1]}\n')
          .split('\n')
          .where(
            (s) =>
                s.startsWith('/uploads/') &&
                source_utils.supportedApkExtensions.any(
                  (ext) => s.endsWith(ext.substring(1)),
                ),
          )
          .map((s) => 'https://${hosts[0]}/-/project/$projectId$s')
          .map((l) => MapEntry(Uri.parse(l).pathSegments.last, l));
      Map<String, String> apkUrls = {};
      for (var entry in apkUrlsFromAssets) {
        apkUrls[entry.key] = entry.value;
      }
      for (var entry in uploadedAPKsFromDescription) {
        apkUrls[entry.key] = entry.value;
      }
      var releaseDateString =
          e['released_at'] ?? e['created_at'] ?? e['commit']?['created_at'];
      DateTime? releaseDate = releaseDateString != null
          ? DateTime.parse(releaseDateString)
          : null;
      return APKDetails(
        e['tag_name'] ?? e['name'],
        apkUrls.entries.toList(),
        AppNames(names.author, names.name.split('/').last),
        releaseDate: releaseDate,
      );
    });
    if (apkDetailsList.isEmpty) {
      throw NoReleasesError();
    }
    var finalResult = apkDetailsList.first;
    // Fallback procedure
    bool fallbackToOlderReleases =
        additionalSettings['fallbackToOlderReleases'] == true;
    if (finalResult.apkUrls.isEmpty && fallbackToOlderReleases && !trackOnly) {
      apkDetailsList = apkDetailsList
          .where((e) => e.apkUrls.isNotEmpty)
          .toList();
      if (apkDetailsList.isEmpty) {
        throw NoReleasesError();
      }
      finalResult = apkDetailsList.first;
    }
    if (finalResult.apkUrls.isEmpty && !trackOnly) {
      throw NoAPKError();
    }
    finalResult.apkUrls = finalResult.apkUrls.map((apkUrl) {
      if (RegExp(
        '^$standardUrl/-/jobs/[0-9]+/artifacts/file/[^/]+',
      ).hasMatch(apkUrl.value)) {
        return MapEntry(
          apkUrl.key,
          apkUrl.value.replaceFirst('/file/', '/raw/'),
        );
      } else {
        return apkUrl;
      }
    }).toList();
    return finalResult;
  }
}
