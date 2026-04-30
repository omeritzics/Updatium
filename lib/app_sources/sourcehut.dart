import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:updatium/app_sources/html.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/providers/source_provider.dart' as source_provider;
import 'package:simple_localization/simple_localization.dart';

class SourceHut extends AppSource {
  SourceHut() {
    hosts = ['git.sr.ht'];
    name = tr('sourcehut');
    showReleaseDateAsVersionToggle = true;
    additionalSourceAppSpecificSettingFormItems = [];
    openSource = true;
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
  String? changeLogPageFromStandardUrl(String standardUrl) => standardUrl;

  @override
  Future<APKDetails> getLatestAPKDetails(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    if (standardUrl.endsWith('/refs')) {
      standardUrl = standardUrl
          .split('/')
          .reversed
          .toList()
          .sublist(1)
          .join('/');
    }
    Uri standardUri = Uri.parse(standardUrl);
    String appName = standardUri.pathSegments.last;
    bool fallbackToOlderReleases =
        additionalSettings['fallbackToOlderReleases'] == true;
    Response res = await sourceRequest(
      '$standardUrl/refs/rss.xml',
      additionalSettings,
    );
    if (res.statusCode == 200) {
      var parsedHtml = parse(res.body);
      List<APKDetails> apkDetailsList = [];
      int ind = 0;
      for (var entry in parsedHtml.querySelectorAll('item').sublist(0, 6)) {
        ind++;
        String releasePage = // querySelector('link') fails for some reason
            entry
                .querySelector('guid') // Luckily guid is identical
                ?.innerHtml
                .trim() ??
            '';
        if (!releasePage.startsWith('$standardUrl/refs')) {
          continue;
        }
        if (!fallbackToOlderReleases && ind > 1) {
          break;
        }
        String? version = entry.querySelector('title')?.text.trim();
        if (version == null) {
          throw NoVersionError();
        }
        String? releaseDateString = entry.querySelector('pubDate')?.innerHtml;
        DateTime? releaseDate;
        try {
          releaseDate = releaseDateString != null
              ? DateFormat(
                  'EEE, dd MMM yyyy HH:mm:ss Z',
                ).parse(releaseDateString)
              : null;
        } catch (e) {
          // ignore
        }
        var res2 = await sourceRequest(releasePage, additionalSettings);
        List<MapEntry<String, String>> apkUrls = [];
        if (res2.statusCode == 200) {
          apkUrls = getApkUrlsFromUrls(
            parse(res2.body)
                .querySelectorAll('a')
                .map((e) => e.attributes['href'] ?? '')
                .where((e) => source_provider.hasSupportedApkExtension(e))
                .map((e) => ensureAbsoluteUrl(e, standardUri))
                .toList(),
          );
          apkDetailsList.add(
            APKDetails(
              version,
              apkUrls,
              AppNames(
                entry.querySelector('author')?.innerHtml.trim() ?? appName,
                appName,
              ),
              releaseDate: releaseDate,
            ),
          );
        }
      }
      if (apkDetailsList.isEmpty) {
        throw NoReleasesError();
      }
      if (fallbackToOlderReleases) {
        if (additionalSettings['trackOnly'] != true) {
          apkDetailsList = apkDetailsList
              .where((e) => e.apkUrls.isNotEmpty)
              .toList();
        }
        if (apkDetailsList.isEmpty) {
          throw NoReleasesError();
        }
      }
      return apkDetailsList.first;
    } else {
      throw getUpdatiumHttpError(res);
    }
  }
}
