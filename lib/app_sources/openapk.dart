import 'package:html/parser.dart' show parse;
import 'package:updatium/custom_errors.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/providers/logs_provider.dart';

class OpenAPK extends AppSource {
  OpenAPK() {
    hosts = ['openapk.net'];
    name = 'OpenAPK';
    showReleaseDateAsVersionToggle = true;
    isOpenSource = true;
    canSearch = false;
  }

  @override
  String sourceSpecificStandardizeURL(String url, {bool forSelection = false}) {
    return SourceProvider().standardizeUrlWithRegex(
      url,
      '^https?://(www\\.)?${getSourceRegex(hosts)}/+[^/]+/+[^/]+',
      sourceName: name,
    );
  }

  @override
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
      'User-Agent': 'curl/8.0.1',
      'Accept': '*/*',
      'Connection': 'keep-alive',
      'Host': hosts[0],
    };
  }

  Future<List<MapEntry<String, String>>> getApkUrls(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    final res = await sourceRequest(standardUrl, additionalSettings);
    if (res.statusCode != 200) {
      throw getUpdatiumHttpError(res);
    }
    final html = parse(res.body);

    // Look for the main download button
    final downloadElement = html.querySelector('a[href*="/apk/download"]');
    if (downloadElement == null) {
      throw NoAPKError();
    }

    String? downloadUrl = downloadElement.attributes['href'];
    if (downloadUrl == null) {
      throw NoAPKError();
    }

    // Convert relative URL to absolute if needed
    if (downloadUrl.startsWith('/')) {
      downloadUrl = Uri.parse(
        'https://${hosts[0]}',
      ).resolve(downloadUrl).toString();
    }

    // Extract version info from the page
    final String? version = html.querySelector('span.text-primary')?.text.trim();
    final String? appId = await tryInferringAppId(standardUrl);

    final String fileName = appId != null && version != null
        ? '$appId-$version.apk'
        : 'app.apk';

    return [MapEntry(fileName, downloadUrl)];
  }

  @override
  Future<String> assetUrlPrefetchModifier(
    String assetUrl,
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    final freshURLs = await getApkUrls(standardUrl, additionalSettings);
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
    final String? appId = await tryInferringAppId(standardUrl);
    if (appId == null) {
      throw NoVersionError();
    }

    final res = await sourceRequest(standardUrl, additionalSettings);
    if (res.statusCode != 200) {
      throw getUpdatiumHttpError(res);
    }
    final html = parse(res.body);

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
      final developerElements = html.querySelectorAll(
        'section.specifications .col-4',
      );
      for (var element in developerElements) {
        final boldText = element.querySelector('b')?.text.trim();
        if (boldText?.toLowerCase() == 'developer') {
          author = element.querySelector('span')?.text.trim();
          break;
        }
      }
    }
    author = (author?.isNotEmpty == true) ? author! : appName;

    // Extract release date from specifications
    DateTime? releaseDate;
    final timeElement = html.querySelector(
      'section.specifications time[datetime]',
    );
    if (timeElement != null) {
      final String? dateTimeStr = timeElement.attributes['datetime'];
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

  @override
  Future<Map<String, List<String>>> search(
    String query, {
    Map<String, dynamic> querySettings = const {},
  }) async {
    final searchUrl =
        'https://${hosts[0]}/search/?q=${Uri.encodeQueryComponent(query)}';
    final res = await sourceRequest(searchUrl, {});
    if (res.statusCode != 200) {
      throw getUpdatiumHttpError(res);
    }
    final html = parse(res.body);

    // Extract search results - look for app links in the search results
    final appLinks = html.querySelectorAll('a[href^="/"]');
    final Map<String, List<String>> results = {};

    for (var link in appLinks) {
      final href = link.attributes['href'];
      if (href == null) continue;

      // Filter for app URLs: pattern is /category/app-id/
      final segments = href.split('/').where((s) => s.isNotEmpty).toList();
      if (segments.length == 2) {
        final appUrl = 'https://${hosts[0]}$href';
        final appName = link.text.trim();

        // Skip if already added or if name is empty
        if (appName.isNotEmpty && !results.containsKey(appUrl)) {
          results[appUrl] = [appName, ''];
        }
      }
    }

    return results;
  }
}
