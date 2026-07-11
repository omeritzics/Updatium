import 'package:html/parser.dart';
import 'package:updatium/app_sources/fdroid.dart';
import 'package:updatium/app_sources/github.dart';
import 'package:updatium/app_sources/gitlab.dart';
import 'package:updatium/providers/source_provider.dart';

class IzzyOnDroid extends FDroid {
  IzzyOnDroid() {
    hosts = ['izzysoft.de'];
    name = 'IzzyOnDroid';
    isOpenSource = true;
    allowSubDomains = true;
  }
  @override
  String sourceSpecificStandardizeURL(String url, {bool forSelection = false}) {
    return SourceProvider().standardizeUrlWithRegex(
      url,
      '^https?://(apt|android)\\.${getSourceRegex(hosts)}/(fdroid/index|repo)/apk/[^/]+',
      sourceName: name,
    );
  }

  @override
  Future<String?> tryInferringAppId(
    String standardUrl, {
    Map<String, dynamic> additionalSettings = const {},
  }) async {
    return super.tryInferringAppId(standardUrl);
  }

  @override
  Future<APKDetails> getLatestAPKDetails(
    String standardUrl,
    Map<String, dynamic> additionalSettings,
  ) async {
    String? appId = await tryInferringAppId(standardUrl);
    var details = getAPKUrlsFromFDroidPackagesAPIResponse(
      await sourceRequest(
        'https://apt.izzysoft.de/fdroid/api/v1/packages/$appId',
        additionalSettings,
      ),
      'https://android.izzysoft.de/frepo/$appId',
      name,
      additionalSettings,
      standardUrl,
    );
    // Try to fetch author from F-Droid package page
    try {
      var res = await sourceRequest(
        'https://android.izzysoft.de/packages/$appId',
        additionalSettings,
      );
      if (res.statusCode >= 200 && res.statusCode < 300) {
        var body = parse(res.body);
        var authorElement = body.querySelector('a[href^="mailto:"]');
        if (authorElement != null) {
          var authorText = authorElement.text.trim();
          if (authorText.isNotEmpty) {
            details.names.author = authorText;
          }
        }
      }
    } catch (e) {
      // Fail silently, keep fallback author
    }
    // Try to fetch changelog from GitLab metadata
    try {
      var res = await sourceRequest(
        'https://gitlab.com/fdroid/fdroiddata/-/raw/master/metadata/$appId.yml',
        additionalSettings,
      );
      if (res.statusCode >= 200 && res.statusCode < 300) {
        var lines = res.body.split('\n');
        var changelogUrls = lines
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
      }
    } catch (e) {
      // Fail silently, keep fallback changelog
    }
    return details;
  }
}
