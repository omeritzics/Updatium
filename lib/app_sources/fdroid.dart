import 'dart:convert';

import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:updatium/app_sources/github.dart';
import 'package:updatium/app_sources/gitlab.dart';
import 'package:updatium/components/generated_form.dart';
import 'package:updatium/custom_errors.dart';
import 'package:updatium/providers/logs_provider.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/services/slang_converter.dart';

class FDroid extends AppSource {
  FDroid() {
    hosts = ['f-droid.org'];
    name = t('fdroid');
    naiveStandardVersionDetection = true;
    canSearch = true;
    isOpenSource = true;
    additionalSourceAppSpecificSettingFormItems = [
      [
        GeneratedFormTextField(
          'filterVersionsByRegEx',
          label: t('filterVersionsByRegEx'),
          required: false,
          additionalValidators: [
            (value) {
              return regExValidator(value);
            },
          ],
        ),
      ],
      [
        GeneratedFormSwitch(
          'autoSelectHighestVersionCode',
          label: t('autoSelectHighestVersionCode'),
        ),
      ],
    ];
  }

  @override
  String sourceSpecificStandardizeURL(String url, {bool forSelection = false}) {
    final RegExp standardUrlRegExB = RegExp(
      '^https?://(www\\.)?${getSourceRegex(hosts)}/+[^/]+/+packages/+[^/]+',
      caseSensitive: false,
    );
    RegExpMatch? match = standardUrlRegExB.firstMatch(url);
    if (match != null) {
      url =
          'https://${Uri.parse(match.group(0)!).host}/packages/${Uri.parse(url).pathSegments.where((s) => s.trim().isNotEmpty).last}';
    }
    final RegExp standardUrlRegExA = RegExp(
      '^https?://(www\\.)?${getSourceRegex(hosts)}/+packages/+[^/]+',
      caseSensitive: false,
    );
    match = standardUrlRegExA.firstMatch(url);
    if (match == null) {
      throw InvalidURLError(name);
    }
    return match.group(0)!;
  }

  @override
  Future<String?> tryInferringAppId(
    String standardUrl, {
    Map<String, dynamic> additionalSettings = const {},
  }) async {
    return Uri.parse(standardUrl).pathSegments.last;
  }

  @override
  Future<APKDetails> getLatestAPKDetails(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    final String? appId = await tryInferringAppId(standardUrl);
    final String host = Uri.parse(standardUrl).host;
    final details = getAPKUrlsFromFDroidPackagesAPIResponse(
      await sourceRequest(
        'https://$host/api/v1/packages/$appId',
        additionalSettings,
      ),
      'https://$host/repo/$appId',
      name,
      additionalSettings,
      standardUrl,
    );
    if (!hostChanged) {
      try {
        final res = await sourceRequest(
          'https://gitlab.com/fdroid/fdroiddata/-/raw/master/metadata/$appId.yml',
          additionalSettings,
        );
        final lines = res.body.split('\n');
        final authorLines = lines.where((l) => l.startsWith('AuthorName: '));
        if (authorLines.isNotEmpty) {
          details.names.author = authorLines.first
              .split(': ')
              .sublist(1)
              .join(': ');
        }
        final changelogUrls = lines
            .where((l) => l.startsWith('Changelog: '))
            .map((e) => e.split(' ').sublist(1).join(' '));
        if (changelogUrls.isNotEmpty) {
          details.changeLog = changelogUrls.first;
          bool isGitHub = false;
          bool isGitLab = false;
          try {
            GitHub(
              hostChanged: true,
            ).sourceSpecificStandardizeURL(details.changeLog!);
            isGitHub = true;
          } catch (e) {
            //
          }
          try {
            GitLab(
              hostChanged: true,
            ).sourceSpecificStandardizeURL(details.changeLog!);
            isGitLab = true;
          } catch (e) {
            //
          }
          if ((isGitHub || isGitLab) &&
              (details.changeLog?.indexOf('/blob/') ?? -1) >= 0) {
            try {
              details.changeLog = (await sourceRequest(
                details.changeLog!.replaceFirst('/blob/', '/raw/'),
                additionalSettings,
              )).body;
            } catch (e) {
              // Fail silently
            }
          }
        }
        if ((details.changeLog?.length ?? 0) > 2048) {
          details.changeLog = '${details.changeLog!.substring(0, 2048)}...';
        }
      } catch (e) {
        // Fail silently
      }
    }
    if (details.names.author == t('fdroid')) {
      try {
        final res = await sourceRequest(
          'https://f-droid.org/packages/$appId',
          additionalSettings,
        );
        if (res.statusCode >= 200 && res.statusCode < 300) {
          final body = parse(res.body);
          final authorElement = body.querySelector('a[href^="mailto:"]');
          if (authorElement != null) {
            final authorText = authorElement.text.trim();
            if (authorText.isNotEmpty) {
              details.names.author = authorText;
            }
          }
        }
      } catch (e) {
        // Fail silently, keep fallback author
      }
    }
    return details;
  }

  @override
  Future<Map<String, List<String>>> search(
    String query, {
    Map<String, dynamic> querySettings = const {},
  }) async {
    final Response res = await sourceRequest(
      'https://search.${hosts[0]}/?q=${Uri.encodeQueryComponent(query)}',
      {},
    );
    if (res.statusCode == 200) {
      final Map<String, List<String>> urlsWithDescriptions = {};
      parse(res.body).querySelectorAll('.package-header').forEach((e) {
        String? url = e.attributes['href'];
        if (url != null) {
          try {
            if (url.startsWith('/')) {
              url = 'https://${hosts[0]}$url';
            }
            url = standardizeUrl(url);
            urlsWithDescriptions[url] = [
              e.querySelector('.package-name')?.text.trim() ?? '',
              e.querySelector('.package-summary')?.text.trim() ??
                  t('noDescription'),
            ];
          } on UnsupportedURLError catch (_) {
            // Skip invalid URLs
          } on InvalidURLError catch (_) {
            // Skip invalid URLs
          } catch (e) {
            LogsProvider().add(
              e.toString(),
              level: LogLevels.error,
              context: 'FDroid.search',
            );
          }
        }
      });
      return urlsWithDescriptions;
    } else {
      throw getUpdatiumHttpError(res);
    }
  }

  APKDetails getAPKUrlsFromFDroidPackagesAPIResponse(
    Response res,
    String apkUrlPrefix,
    String sourceName,
    Map<String, dynamic> additionalSettings,
    String standardUrl,
  ) {
    final autoSelectHighestVersionCode =
        additionalSettings['autoSelectHighestVersionCode'] == true;
    final trySelectingSuggestedVersionCode =
        additionalSettings['trySelectingSuggestedVersionCode'] == true;
    final filterVersionsByRegEx =
        (additionalSettings['filterVersionsByRegEx'] as String?)?.isNotEmpty ==
            true
        ? additionalSettings['filterVersionsByRegEx']
        : null;
    final apkFilterRegEx =
        (additionalSettings['apkFilterRegEx'] as String?)?.isNotEmpty == true
        ? additionalSettings['apkFilterRegEx']
        : null;
    final response = jsonDecode(res.body);
    List<dynamic> releases = response['packages'] ?? [];
    if (apkFilterRegEx != null) {
      releases = releases.where((rel) {
        final String apk = '${apkUrlPrefix}_${rel['versionCode']}.apk';
        return filterApks(
          [MapEntry(apk, apk)],
          apkFilterRegEx,
          false,
        ).isNotEmpty;
      }).toList();
    }
    if (releases.isEmpty) {
      throw NoReleasesError();
    }
    String? version;
    Iterable<dynamic> releaseChoices = [];
    // Grab the versionCode suggested if the user chose to do that
    // Only do so at this stage if the user has no release filter
    if (trySelectingSuggestedVersionCode &&
        response['suggestedVersionCode'] != null &&
        filterVersionsByRegEx == null) {
      final suggestedReleases = releases.where(
        (element) => element['versionCode'] == response['suggestedVersionCode'],
      );
      if (suggestedReleases.isNotEmpty) {
        releaseChoices = suggestedReleases;
        version = suggestedReleases.first['versionName'];
      }
    }
    // Apply the release filter if any
    if (filterVersionsByRegEx?.isNotEmpty == true) {
      version = null;
      releaseChoices = [];
      for (var i = 0; i < releases.length; i++) {
        if (RegExp(
          filterVersionsByRegEx!,
        ).hasMatch(releases[i]['versionName'])) {
          version = releases[i]['versionName'];
        }
      }
      if (version == null) {
        throw NoVersionError();
      }
    }
    // Default to the highest version
    version ??= releases[0]['versionName'];
    if (version == null) {
      throw NoVersionError();
    }
    // If a suggested release was not already picked, pick all those with the selected version
    if (releaseChoices.isEmpty) {
      releaseChoices = releases
          .where((element) => element['versionName'] == version)
          .toList();
    }
    // For the remaining releases, use the toggles to auto-select one if possible
    if (releaseChoices.length > 1) {
      if (autoSelectHighestVersionCode) {
        releaseChoices = [releaseChoices.first];
      } else if (trySelectingSuggestedVersionCode &&
          response['suggestedVersionCode'] != null) {
        final suggestedReleases = releaseChoices.where(
          (element) =>
              element['versionCode'] == response['suggestedVersionCode'],
        );
        if (suggestedReleases.isNotEmpty) {
          releaseChoices = suggestedReleases;
        }
      }
    }
    final List<String> apkUrls = releaseChoices
        .map((e) => '${apkUrlPrefix}_${e['versionCode']}.apk')
        .toList();
    // Extract author from API response or fall back to source name
    final String author = response['authorName'] ?? sourceName;
    return APKDetails(
      version,
      getApkUrlsFromUrls(apkUrls.toSet().toList()),
      AppNames(author, Uri.parse(standardUrl).pathSegments.last),
    );
  }
}
