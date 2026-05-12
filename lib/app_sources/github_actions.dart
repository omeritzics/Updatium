import 'dart:convert';
import 'package:simple_localization/simple_localization.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:updatium/app_sources/github.dart';
import 'package:updatium/components/generated_form.dart';
import 'package:updatium/providers/logs_provider.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

class GitHubActions extends GitHub {
  GitHubActions({hostChanged = false}) : super(hostChanged: hostChanged) {
    name = tr('githubActions');
    hosts = ['github.com'];
    appIdInferIsOptional = true;
    showReleaseDateAsVersionToggle = true;
    this.hostChanged = hostChanged;
    allowIncludeZips = true;
    openSource = true;
    versionDetectionDisallowed = true;
    neverAutoSelect = true;

    sourceConfigSettingFormItems = [
      GeneratedFormTextField(
        tr('githubPATLabel'),
        label: tr('githubPATLabel'),
        password: true,
        required: false,
        belowWidgets: [
          const SizedBox(height: 4),
          GestureDetector(
            onTap: () {
              launchUrlString(
                'https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token',
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
          const SizedBox(height: 4),
        ],
      ),
      GeneratedFormTextField(
        tr('GHReqPrefix'),
        label: tr('GHReqPrefix'),
        hint: 'gh-proxy.org',
        required: false,
        additionalValidators: [
          (value) {
            try {
              if (value != null && Uri.parse(value).scheme.isNotEmpty) {
                throw true;
              }
              if (value != null) {
                Uri.parse('https://${value}/api.github.com');
              }
            } catch (e) {
              return tr('invalidInput');
            }
            return null;
          },
        ],
        belowWidgets: [
          const SizedBox(height: 4),
          GestureDetector(
            onTap: () {
              launchUrlString(
                'https://github.com/omeritzics/Updatium',
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
          const SizedBox(height: 4),
        ],
      ),
      GeneratedFormTextField(
        'artifactNameFilter',
        label: tr('artifactNameFilter'),
        hint: 'app-release',
        required: false,
      ),
      GeneratedFormTextField(
        'workflowNameFilter',
        label: tr('workflowNameFilter'),
        hint: 'build-and-test',
        required: false,
      ),
      GeneratedFormTextField(
        'branchFilter',
        label: tr('branchFilter'),
        hint: 'main',
        required: false,
      ),
    ];

    additionalSourceAppSpecificSettingFormItems = [];
    canSearch = false;
  }

  @override
  String sourceSpecificStandardizeURL(String url, {bool forSelection = false}) {
    return SourceProvider().standardizeUrlWithRegex(
      url,
      '^https?://(www\\.)?${getSourceRegex(hosts)}/[^/]+/[^/]+',
      sourceName: name,
    );
  }

  @override
  String? changeLogPageFromStandardUrl(String standardUrl) =>
      '$standardUrl/actions';

  @override
  Future<APKDetails> getLatestAPKDetails(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    final uri = Uri.parse(standardUrl);
    final pathSegments = uri.pathSegments;
    if (pathSegments.length < 2) {
      throw UpdatiumError('Invalid GitHub Actions URL format');
    }

    final owner = pathSegments[0];
    final repo = pathSegments[1];

    // Get filter settings
    String? artifactNameFilter =
        additionalSettings['artifactNameFilter'] as String?;
    String? workflowNameFilter =
        additionalSettings['workflowNameFilter'] as String?;
    String? branchFilter = additionalSettings['branchFilter'] as String?;

    try {
      // List artifacts for the repository
      String artifactsUrl =
          '${await getAPIHost(additionalSettings)}/repos/$owner/$repo/actions/artifacts?per_page=100';

      if (artifactNameFilter != null && artifactNameFilter.isNotEmpty) {
        artifactsUrl += '&name=${Uri.encodeComponent(artifactNameFilter)}';
      }

      Response res = await sourceRequest(artifactsUrl, additionalSettings);
      if (res.statusCode != 200) {
        if (res.statusCode == 403) {
          throw RateLimitError(60);
        }
        throw getUpdatiumHttpError(res);
      }

      var artifactsData = jsonDecode(res.body);
      var artifacts = artifactsData['artifacts'] as List<dynamic>? ?? [];

      if (artifacts.isEmpty) {
        throw NoReleasesError();
      }

      // Filter artifacts based on settings
      var filteredArtifacts = artifacts.where((artifact) {
        // Check workflow name filter
        if (workflowNameFilter != null && workflowNameFilter.isNotEmpty) {
          final workflowRun = artifact['workflow_run'] as Map<String, dynamic>?;
          if (workflowRun != null) {
            // We'd need to fetch workflow details to get the name, but for now skip this filter
            // Could be implemented in a future iteration
          }
        }

        // Check branch filter
        if (branchFilter != null && branchFilter.isNotEmpty) {
          final workflowRun = artifact['workflow_run'] as Map<String, dynamic>?;
          final headBranch = workflowRun?['head_branch'] as String?;
          if (headBranch != null && headBranch != branchFilter) {
            return false;
          }
        }

        // Check if artifact is expired
        if (artifact['expired'] == true) {
          return false;
        }

        return true;
      }).toList();

      if (filteredArtifacts.isEmpty) {
        throw NoReleasesError();
      }

      // Sort by creation date (newest first)
      filteredArtifacts.sort((a, b) {
        DateTime dateA = DateTime.parse(a['created_at'] as String);
        DateTime dateB = DateTime.parse(b['created_at'] as String);
        return dateB.compareTo(dateA);
      });

      // Get the latest artifact
      var latestArtifact = filteredArtifacts.first;
      String artifactName = latestArtifact['name'] as String;
      DateTime createdAt = DateTime.parse(
        latestArtifact['created_at'] as String,
      );
      DateTime expiresAt = DateTime.parse(
        latestArtifact['expires_at'] as String,
      );

      // The download URL redirects to a temporary URL
      // We'll use the archive_download_url directly
      String archiveDownloadUrl =
          latestArtifact['archive_download_url'] as String;

      // Create APK URLs list
      List<MapEntry<String, String>> apkUrls = [
        MapEntry('$artifactName.zip', archiveDownloadUrl),
      ];

      // Filter APKs if needed
      String? apkFilter = additionalSettings['apkFilterRegEx'] as String?;
      bool invertFilter = additionalSettings['invertAPKFilter'] == true;

      if (apkFilter != null && apkFilter.isNotEmpty) {
        apkUrls = filterApks(apkUrls, apkFilter, invertFilter);
      }

      if (apkUrls.isEmpty && additionalSettings['trackOnly'] != true) {
        throw NoReleasesError();
      }

      // Generate version from artifact name and creation date
      String version = artifactName;
      if (additionalSettings['releaseTitleAsVersion'] != true) {
        version = '$artifactName-${createdAt.millisecondsSinceEpoch}';
      }

      // Get app names
      var appNames = getAppNames(standardUrl);

      return APKDetails(
        version,
        apkUrls,
        appNames,
        releaseDate: createdAt,
        changeLog:
            '[GitHub Actions] Artifact: $artifactName\nCreated: ${createdAt.toIso8601String()}\nExpires: ${expiresAt.toIso8601String()}',
        allAssetUrls: apkUrls,
      );
    } catch (e) {
      if (e is RateLimitError) {
        rethrow;
      }
      LogsProvider().add(
        'Error fetching GitHub Actions artifacts: ${e.toString()}',
      );
      rethrow;
    }
  }

  AppNames getAppNames(String standardUrl) {
    return SourceProvider().getAppNamesFromUrl(standardUrl, nameIndex: null);
  }
}
