import 'dart:io';

import 'package:simple_localization/simple_localization.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/settings_provider.dart';

class APKMirror extends AppSource {
  APKMirror() {
    hosts = ['apkmirror.com'];
    name = tr('apkmirror');
    enforceTrackOnly = false;
    showReleaseDateAsVersionToggle = true;
    additionalSourceAppSpecificSettingFormItems = [];
  }
  @override
  Future<Map<String, String>?> getRequestHeaders(
    Map<String, dynamic> additionalSettings,
    String url, {
    bool forAPKDownload = false,
  }) async {
    return {
      "User-Agent":
          "Updatium/${(await getInstalledInfo(updatiumId))?.versionName ?? '1.0.0'}",
    };
  }

  @override
  String sourceSpecificStandardizeURL(String url, {bool forSelection = false}) {
    return SourceProvider().standardizeUrlWithRegex(
      url,
      '^https?://(www\\.)?${getSourceRegex(hosts)}/apk/[^/]+/[^/]+',
      sourceName: name,
    );
  }

  String? changeLogPageFromStandardUrl(String standardUrl) =>
      '$standardUrl/#whatsnew';

  @override
  Future<APKDetails> getLatestAPKDetails(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    bool fallbackToOlderReleases =
        additionalSettings['fallbackToOlderReleases'] == true;
    String? regexFilter =
        (additionalSettings['filterReleaseTitlesByRegEx'] as String?)
                ?.isNotEmpty ==
            true
        ? additionalSettings['filterReleaseTitlesByRegEx']
        : null;
    Response res = await sourceRequest(
      '$standardUrl/feed/',
      additionalSettings,
    );
    if (res.statusCode == 200) {
      var items = parse(res.body).querySelectorAll('item');
      dynamic targetRelease;
      for (int i = 0; i < items.length; i++) {
        if (!fallbackToOlderReleases && i > 0) break;
        String? nameToFilter = items[i].querySelector('title')?.innerHtml;
        if (regexFilter != null &&
            nameToFilter != null &&
            !RegExp(regexFilter).hasMatch(nameToFilter.trim())) {
          continue;
        }
        targetRelease = items[i];
        break;
      }
      String? titleString = targetRelease?.querySelector('title')?.innerHtml;
      String? dateString = targetRelease
          ?.querySelector('pubDate')
          ?.innerHtml
          .split(' ')
          .sublist(0, 5)
          .join(' ');
      DateTime? releaseDate = dateString != null
          ? HttpDate.parse('$dateString GMT')
          : null;
      String? version = titleString
          ?.substring(
            RegExp('[0-9]').firstMatch(titleString)?.start ?? 0,
            RegExp(' by ').allMatches(titleString).last.start,
          )
          .trim();
      if (version == null || version.isEmpty) {
        version = titleString;
      }
      if (version == null) {
        throw NoVersionError();
      }
      return APKDetails(
        version,
        [],
        getAppNames(standardUrl),
        releaseDate: releaseDate,
      );
    } else {
      throw getUpdatiumHttpError(res);
    }
  }

  AppNames getAppNames(String standardUrl) {
    return SourceProvider().getAppNamesFromUrl(
      standardUrl,
      authorIndex: 1,
      nameIndex: 2,
    );
  }
}
