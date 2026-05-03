import 'package:simple_localization/simple_localization.dart';
import 'package:html/parser.dart' show parse;
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/providers/logs_provider.dart';

class OpenAPK extends AppSource {
  OpenAPK() {
    hosts = ['openapk.net'];
    name = tr('openapk');
    showReleaseDateAsVersionToggle = true;
    openSource = true;
  }

  @override
  String sourceSpecificStandardizeURL(String url, {bool forSelection = false}) {
    return SourceProvider().standardizeUrlWithRegex(
      url,
      '^https?://(www\\.)?${getSourceRegex(hosts)}/+[^/]+/+[^/]+',
      sourceName: name,
    );
  }

  Future<String?> tryInferringAppId(
    String standardUrl, {
    Map<String, dynamic> additionalSettings = const {},
  }) async {
    try {
      return Uri.parse(standardUrl).pathSegments.last;
    } catch (e) {
      // Use structured logging without exposing sensitive URL details or raw exception
      final logsProvider = LogsProvider();
      await logsProvider.addStructured(
        operation: 'app_id_inference_failed',
        component: 'OpenAPK',
        errorCode: 'url_parsing_error',
        level: LogLevels.error,
      );
      return null;
    }
  }

  @override
  Future<Map<String, String>?> getRequestHeaders(
    Map<String, dynamic> additionalSettings,
    String url, {
    bool forAPKDownload = false,
  }) async {
    return {
      "User-Agent": "curl/8.0.1",
      "Accept": "*/*",
      "Connection": "keep-alive",
      "Host": hosts[0],
    };
  }

  Future<List<MapEntry<String, String>>> getApkUrls(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    var res = await sourceRequest(standardUrl, additionalSettings);
    if (res.statusCode != 200) {
      throw getUpdatiumHttpError(res);
    }
    var html = parse(res.body);

    // Look for the main download button
    var downloadElement = html.querySelector('a[href*="/apk/download"]');
    if (downloadElement == null) {
      throw NoAPKError();
    }

    String? downloadUrl = downloadElement.attributes['href'];
    if (downloadUrl == null) {
      throw NoAPKError();
    }

    // Convert relative URL to absolute if needed
    if (downloadUrl.startsWith('/')) {
      downloadUrl = 'https://www.openapk.net$downloadUrl';
    }

    // Extract version info from the page
    String? version = html.querySelector('span.text-primary')?.text.trim();
    String? appId = await tryInferringAppId(standardUrl);

    String fileName = appId != null && version != null
        ? '$appId-$version.apk'
        : 'app.apk';

    return [MapEntry(fileName, downloadUrl)];
  }

  Future<String> assetUrlPrefetchModifier(
    String assetUrl,
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    var freshURLs = await getApkUrls(standardUrl, additionalSettings);
    for (var url in freshURLs) {
      if (url.value.contains('/apk/download')) {
        return url.value;
      }
    }
    throw NoAPKError();
  }

  @override
  Future<APKDetails> getLatestAPKDetails(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    String? appId = await tryInferringAppId(standardUrl);
    if (appId == null) {
      throw NoVersionError();
    }

    var res = await sourceRequest(standardUrl, additionalSettings);
    if (res.statusCode != 200) {
      throw getUpdatiumHttpError(res);
    }
    var html = parse(res.body);

    // Extract version from the primary version span
    String? version = html.querySelector('span.text-primary')?.text.trim();
    if (version == null || version.isEmpty) {
      // Fallback to specifications section
      version = html
          .querySelector('section.specifications .col-4 a[href*="/app/"]')
          ?.text
          .trim();
    }
    if (version == null || version.isEmpty) {
      throw NoVersionError();
    }

    // Extract app name from h1
    String? appName = html.querySelector('h1.is-marginless a')?.text.trim();
    if (appName == null || appName.isEmpty) {
      appName = html.querySelector('h1')?.text.trim();
    }
    appName = (appName?.isNotEmpty == true) ? appName! : appId;

    // Extract developer/author from specifications
    String? author = html
        .querySelector('section.specifications .col-4 span.text-grey')
        ?.text
        .trim();
    if (author == null || author.isEmpty) {
      // Try to find developer in other locations
      var developerElements = html.querySelectorAll(
        'section.specifications .col-4',
      );
      for (var element in developerElements) {
        var boldText = element.querySelector('b')?.text.trim();
        if (boldText?.toLowerCase() == 'developer') {
          author = element.querySelector('span')?.text.trim();
          break;
        }
      }
    }
    author = (author?.isNotEmpty == true) ? author! : appName;

    // Extract release date from specifications
    DateTime? releaseDate;
    var timeElement = html.querySelector(
      'section.specifications time[datetime]',
    );
    if (timeElement != null) {
      String? dateTimeStr = timeElement.attributes['datetime'];
      if (dateTimeStr != null) {
        try {
          releaseDate = DateTime.parse(dateTimeStr);
        } catch (e) {
          // Try parsing as a more flexible format
          try {
            releaseDate = DateTime.parse(dateTimeStr.split('.')[0]);
          } catch (e2) {
            // Could not parse date, will remain null
          }
        }
      }
    }

    return APKDetails(
      version,
      await getApkUrls(standardUrl, additionalSettings),
      AppNames(author, appName),
      releaseDate: releaseDate,
    );
  }
}
