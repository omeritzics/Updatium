import 'package:http/http.dart';
import 'package:simple_localization/simple_localization.dart';
import 'package:updatium/providers/source_provider.dart';

class VLC extends AppSource {
  VLC() {
    name = tr('vlc');
    hosts = ['get.videolan.org', 'videolan.org'];
    allowOverride = false;
  }

  @override
  String sourceSpecificStandardizeURL(String url, {bool forSelection = false}) {
    if (url.contains('videolan.org') && !url.contains('get.videolan.org')) {
      return 'https://get.videolan.org/vlc-android/';
    }
    return 'https://get.videolan.org/vlc-android/';
  }

  @override
  Future<APKDetails> getLatestAPKDetails(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    // VLC uses a directory structure with version folders
    var baseUrl = 'https://get.videolan.org/vlc-android/';
    Response res = await sourceRequest(baseUrl, additionalSettings);

    if (res.statusCode != 200) {
      throw getUpdatiumHttpError(res);
    }

    // Parse the directory listing to find the latest version
    var body = res.body;

    // Look for version directories (e.g., 3.5.4/, 3.6.0/)
    var versionRegex = RegExp(r'href="([0-9]+\.[0-9]+\.[0-9]+)/"');
    var matches = versionRegex.allMatches(body);

    if (matches.isEmpty) {
      throw NoReleasesError();
    }

    // Extract all versions and sort them
    List<String> versions = matches.map((m) => m.group(1)!).toList()
      ..sort((a, b) {
        var aParts = a.split('.').map(int.parse).toList();
        var bParts = b.split('.').map(int.parse).toList();
        for (int i = 0; i < aParts.length && i < bParts.length; i++) {
          var cmp = bParts[i].compareTo(aParts[i]);
          if (cmp != 0) return cmp;
        }
        return bParts.length.compareTo(aParts.length);
      });

    var latestVersion = versions.first;
    var versionUrl = '$baseUrl$latestVersion/';

    // Now get the APK files for this version
    Response versionRes = await sourceRequest(versionUrl, additionalSettings);
    if (versionRes.statusCode != 200) {
      throw getUpdatiumHttpError(versionRes);
    }

    var versionBody = versionRes.body;

    // Look for APK files - VLC typically has multiple variants
    var apkRegex = RegExp(r'href="([^"]*\.apk)"', caseSensitive: false);
    var apkMatches = apkRegex.allMatches(versionBody);

    if (apkMatches.isEmpty) {
      throw NoAPKError();
    }

    List<MapEntry<String, String>> apkUrls = [];
    for (var match in apkMatches) {
      var apkName = match.group(1)!;
      var apkUrl = '$versionUrl$apkName';
      apkUrls.add(MapEntry(apkName, apkUrl));
    }

    // Try to get release date from the page
    DateTime? releaseDate;
    try {
      var dateRegex = RegExp(r'<td[^>]*>\s*([0-9]{4}-[0-9]{2}-[0-9]{2})');
      var dateMatch = dateRegex.firstMatch(versionBody);
      if (dateMatch != null) {
        releaseDate = DateTime.parse(dateMatch.group(1)!);
      }
    } catch (e) {
      // Ignore date parse errors
    }

    return APKDetails(
      latestVersion,
      apkUrls,
      AppNames('VideoLAN', 'VLC'),
      releaseDate: releaseDate,
    );
  }
}
