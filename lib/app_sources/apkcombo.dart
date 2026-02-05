import 'package:easy_localization/easy_localization.dart';
import 'package:html/parser.dart' show parse;
import 'package:updatium/custom_errors.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/providers/logs_provider.dart';

class APKCombo extends AppSource {
  APKCombo() {
    hosts = ['apkcombo.com'];
    showReleaseDateAsVersionToggle = true;
  }

  @override
  String sourceSpecificStandardizeURL(String url, {bool forSelection = false}) {
    RegExp standardUrlRegEx = RegExp(
      '^https?://(www\\.)?${getSourceRegex(hosts)}/+[^/]+/+[^/]+',
      caseSensitive: false,
    );
    var match = standardUrlRegEx.firstMatch(url);
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
    try {
      return Uri.parse(standardUrl).pathSegments.last;
    } catch (e) {
<<<<<<< Updated upstream
      // Log parsing error for debugging but return null for graceful degradation
      LogsProvider().add(
        'Failed to infer app ID from APKCombo URL "$standardUrl": $e',
=======
      // Use structured logging without exposing sensitive URL details or raw exception
      final logsProvider = LogsProvider();
      await logsProvider.addStructured(
        operation: 'app_id_inference_failed',
        component: 'APKCombo',
        errorCode: 'url_parsing_error',
        level: LogLevels.error,
>>>>>>> Stashed changes
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
    var res = await sourceRequest('$standardUrl/download/apk', {});
    if (res.statusCode != 200) {
      throw getUpdatiumHttpError(res);
    }
    var html = parse(res.body);

    // Try multiple selectors for APK variants
    var apkElements = html.querySelectorAll('#variants-tab > div > ul > li');
    if (apkElements.isEmpty) {
      apkElements = html.querySelectorAll('.variant-item');
    }
    if (apkElements.isEmpty) {
      apkElements = html.querySelectorAll('.download-variant');
    }

    if (apkElements.isEmpty) {
      throw NoReleasesError();
    }

    return apkElements
        .map((e) {
          String? arch = e
              .querySelector('code')
              ?.text
              .trim()
              .replaceAll(',', '')
              .replaceAll(':', '-')
              .replaceAll(' ', '-');
          return e.querySelectorAll('a').map((e) {
            String? url = e.attributes['href'];
            if (url != null &&
                !Uri.parse(url).path.toLowerCase().endsWith('.apk')) {
              url = null;
            }
            String verCode =
                e.querySelector('.info .header .vercode')?.text.trim() ?? '';
            return MapEntry<String, String>(
              arch != null ? '$arch-$verCode.apk' : '',
              url ?? '',
            );
          }).toList();
        })
        .reduce((value, element) => [...value, ...element])
        .where((element) => element.value.isNotEmpty)
        .toList();
  }

  @override
  Future<String> assetUrlPrefetchModifier(
    String assetUrl,
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    var freshURLs = await getApkUrls(standardUrl, additionalSettings);
    var path2Match = Uri.parse(assetUrl).path;
    for (var url in freshURLs) {
      if (Uri.parse(url.value).path == path2Match) {
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
    var preres = await sourceRequest(standardUrl, additionalSettings);
    if (preres.statusCode != 200) {
      throw getUpdatiumHttpError(preres);
    }
    var res = parse(preres.body);

    // Try multiple selectors for version
    String? version = res.querySelector('div.version')?.text.trim();
    version ??= res.querySelector('.version')?.text.trim();
    version ??= res.querySelector('[data-version]')?.attributes['data-version'];
    if (version == null) {
      throw NoVersionError();
    }

    // Try multiple selectors for app name
    String? appName = res.querySelector('div.app_name')?.text.trim();
    if (appName == null || appName.isEmpty) {
      appName = res.querySelector('.app-name')?.text.trim();
    }
    if (appName == null || appName.isEmpty) {
      appName = res.querySelector('h1')?.text.trim();
    }
    appName = (appName?.isNotEmpty == true) ? appName! : appId;

    // Try multiple selectors for author
    String? author = res.querySelector('div.author')?.text.trim();
    if (author == null || author.isEmpty) {
      author = res.querySelector('.author')?.text.trim();
    }
    if (author == null || author.isEmpty) {
      author = res.querySelector('.developer')?.text.trim();
    }
    author = (author?.isNotEmpty == true) ? author! : appName;

    // Try multiple selectors for release date
    List<String> infoArray = res
        .querySelectorAll('div.information-table > .item > div.value')
        .map((e) => e.text.trim())
        .toList();

    if (infoArray.isEmpty) {
      infoArray = res
          .querySelectorAll('.info-item .value')
          .map((e) => e.text.trim())
          .toList();
    }

    DateTime? releaseDate;
    if (infoArray.length >= 2) {
      String dateString = infoArray[1];
      try {
        releaseDate = DateFormat('MMMM d, yyyy').parse(dateString);
      } catch (fullMonthError) {
        try {
          releaseDate = DateFormat('MMM d, yyyy').parse(dateString);
        } catch (abbrevMonthError) {
          try {
            releaseDate = DateFormat('yyyy-MM-dd').parse(dateString);
          } catch (isoDateError) {
            // Log all failed date parsing attempts for debugging
            print(
              'Failed to parse APKCombo release date "$dateString" with formats: MMMM d, yyyy ($fullMonthError), MMM d, yyyy ($abbrevMonthError), yyyy-MM-dd ($isoDateError)',
            );
            // releaseDate remains null for graceful degradation
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
