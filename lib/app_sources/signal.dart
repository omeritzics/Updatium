import 'dart:convert';

import 'package:http/http.dart';
import 'package:simple_localization/simple_localization.dart';
import 'package:updatium/providers/source_provider.dart';

class Signal extends AppSource {
  Signal() {
    name = tr('signal');
    hosts = ['signal.org'];
    allowOverride = false;
  }

  @override
  String sourceSpecificStandardizeURL(String url, {bool forSelection = false}) {
    return 'https://signal.org/android/apk/';
  }

  @override
  Future<APKDetails> getLatestAPKDetails(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    // Signal provides a JSON file with the latest APK info
    var jsonUrl = 'https://updates.signal.org/android/latest.json';
    Response res = await sourceRequest(jsonUrl, additionalSettings);

    if (res.statusCode != 200) {
      throw getUpdatiumHttpError(res);
    }

    var json = jsonDecode(res.body) as Map<String, dynamic>;

    var version = json['versionName'] as String?;
    var apkUrl = json['url'] as String?;

    if (version == null || apkUrl == null) {
      throw NoVersionError();
    }

    // Also try to get the changelog/release notes
    String? changeLog;
    try {
      var releaseNotesUrl =
          'https://updates.signal.org/android/release-notes.json';
      var notesRes = await sourceRequest(releaseNotesUrl, additionalSettings);
      if (notesRes.statusCode == 200) {
        var notesJson = jsonDecode(notesRes.body) as Map<String, dynamic>;
        // Find the release notes for this version
        var releases = notesJson['releases'] as List<dynamic>?;
        if (releases != null) {
          for (var release in releases) {
            if (release['version'] == version ||
                release['versionName'] == version) {
              changeLog = release['notes'] as String?;
              break;
            }
          }
        }
      }
    } catch (e) {
      // Ignore changelog fetch errors
    }

    return APKDetails(
      version,
      [MapEntry('Signal-$version.apk', apkUrl)],
      AppNames('Signal Foundation', 'Signal'),
      changeLog: changeLog,
    );
  }
}
