import 'package:updatium/custom_errors.dart';
import 'package:updatium/services/slang_converter.dart';
import 'package:html/parser.dart';
import 'package:updatium/providers/source_provider.dart';

DateTime? parseDateTimeMMMddCommayyyy(String? dateString) {
  DateTime? releaseDate;
  try {
    releaseDate = dateString != null
        ? DateFormat('MMM dd, yyyy').parse(dateString)
        : null;
    releaseDate = dateString != null && releaseDate == null
        ? DateFormat('MMMM dd, yyyy').parse(dateString)
        : releaseDate;
  } catch (err) {
    // ignore
  }
  return releaseDate;
}

class Uptodown extends AppSource {
  Uptodown() {
    hosts = ['uptodown.com'];
    name = 'Uptodown';
    allowSubDomains = true;
    naiveStandardVersionDetection = true;
    showReleaseDateAsVersionToggle = true;
    urlsAlwaysHaveExtension = true;
  }

  @override
  String sourceSpecificStandardizeURL(String url, {bool forSelection = false}) {
    final RegExp standardUrlRegEx = RegExp(
      '^https?://([^\\.]+\\.){2,}${getSourceRegex(hosts)}',
      caseSensitive: false,
    );
    final RegExpMatch? match = standardUrlRegEx.firstMatch(url);
    if (match == null) {
      throw InvalidURLError(name);
    }
    return '${match.group(0)!}/android/download';
  }

  @override
  Future<String?> tryInferringAppId(
    String standardUrl, {
    Map<String, dynamic> additionalSettings = const {},
  }) async {
    return (await getAppDetailsFromPage(
      standardUrl,
      additionalSettings,
    ))['appId'];
  }

  Future<Map<String, String?>> getAppDetailsFromPage(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    final res = await sourceRequest(standardUrl, additionalSettings);
    if (res.statusCode != 200) {
      throw getUpdatiumHttpError(res);
    }
    final html = parse(res.body);
    final String? version = html.querySelector('div.version')?.innerHtml;
    final String? name = html.querySelector('#detail-app-name')?.innerHtml.trim();
    final String? author = html.querySelector('#author-link')?.innerHtml.trim();
    final detailElements = html
        .querySelectorAll('#technical-information td')
        .map((e) => e.text.trim())
        .where((e) => e.isNotEmpty)
        .toList();
    final String? appId = detailElements.lastOrNull;
    final String? dateStr = detailElements.elementAtOrNull(detailElements.length - 5);
    final String? fileId = html
        .querySelector('#detail-app-name')
        ?.attributes['data-file-id'];
    final String? extension = detailElements
        .elementAtOrNull(detailElements.length - 4)
        ?.toLowerCase();
    return Map.fromEntries([
      MapEntry('version', version),
      MapEntry('appId', appId),
      MapEntry('name', name),
      MapEntry('author', author),
      MapEntry('dateStr', dateStr),
      MapEntry('fileId', fileId),
      MapEntry('extension', extension),
    ]);
  }

  @override
  Future<APKDetails> getLatestAPKDetails(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    final appDetails = await getAppDetailsFromPage(
      standardUrl,
      additionalSettings,
    );
    final version = appDetails['version'];
    final appId = appDetails['appId'];
    final fileId = appDetails['fileId'];
    final extension = appDetails['extension'];
    if (version == null) {
      throw NoVersionError();
    }
    if (fileId == null) {
      throw NoAPKError();
    }
    final apkUrl = '$standardUrl/$fileId-x';
    if (appId == null) {
      throw NoReleasesError();
    }
    final String appName = appDetails['name'] ?? 'app'.t();
    final String author = appDetails['author'] ?? name;
    final String? dateStr = appDetails['dateStr'];
    DateTime? relDate;
    if (dateStr != null) {
      relDate = parseDateTimeMMMddCommayyyy(dateStr);
    }
    return APKDetails(
      version,
      [MapEntry('$appId.$extension', apkUrl)],
      AppNames(author, appName),
      releaseDate: relDate,
    );
  }

  @override
  Future<String> assetUrlPrefetchModifier(
    String assetUrl,
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    final res = await sourceRequest(assetUrl, additionalSettings);
    final html = parse(res.body);
    final finalUrlKey = html
        .querySelector('#detail-download-button')
        ?.attributes['data-url'];
    if (finalUrlKey == null) {
      throw NoAPKError();
    }
    return 'https://dw.${hosts[0]}/dwn/$finalUrlKey';
  }
}
