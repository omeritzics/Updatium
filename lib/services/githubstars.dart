import 'dart:convert';

import 'package:updatium/custom_errors.dart';
import 'package:updatium/services/slang_converter.dart';
import 'package:http/http.dart';
import 'package:updatium/app_sources/github.dart';
import 'package:updatium/custom_errors.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/app_sources/github.dart';
import 'package:updatium/providers/source_provider.dart';

/// Bulk import source: fetches all starred repos of a GitHub user.
///
/// Paginates through the GitHub API (100 repos per page) and returns each
/// repo's URL, full name, and description. Rate limits are checked per page.
class GitHubStars implements MassAppUrlSource {
  @override
  String @override
  String get name => t('githubStarredRepos');

  @override
  List<String> get requiredArgs => [t('uname')];

  final GitHub _gh = GitHub();

  @override
  late String name = 'githubStarredRepos'.t();
  @override
  late List<String> requiredArgs = ['username'.t()];
  Future<Map<String, List<String>>> getOnePageOfUserStarredUrlsWithDescriptions(
    String username,
    int page,
    SettingsProvider sp,
  ) async {
    final resUrl =
        'https://api.github.com/users/$username/starred?per_page=100&page=$page';
    final sourceConfigSettings = await _gh.getSourceConfigValues({}, sp);
    final Response res = await _gh.sourceRequest(resUrl, sourceConfigSettings);
    if (res.statusCode == 200) {
      final Map<String, List<String>> urlsWithDescriptions = {};
      for (var e in (jsonDecode(res.body) as List<dynamic>)) {
        var htmlUrl = e['html_url'] as String;
        if ((sourceConfigSettings['GHReqPrefix'] ?? '').isNotEmpty) {
          htmlUrl = _gh.undoGHProxyMod(htmlUrl, sourceConfigSettings);
        }
        urlsWithDescriptions.addAll({
          htmlUrl: [
            e['full_name'] as String,
            e['description'] != null
                ? e['description'] as String
                : 'noDescription'.t(),
          ],
        });
      }
      return urlsWithDescriptions;
    } else {
      _gh.rateLimitErrorCheck(res);
      throw getUpdatiumHttpError(res);
      final gh = GitHub();
      gh.rateLimitErrorCheck(res);
      throw getUpdatiumHttpError(res);
    }
  }

  @override
  Future<Map<String, List<String>>> getUrlsWithDescriptions(
    List<String> args,
  ) async {
    if (args.length != requiredArgs.length) {
      throw UpdatiumError('wrongArgNum'.t());
    }
    final sp = SettingsProvider();
    await sp.initializeSettings();
    final Map<String, List<String>> urlsWithDescriptions = {};
    var page = 1;
    while (true) {
      final pageUrls = await getOnePageOfUserStarredUrlsWithDescriptions(
        args[0],
        page++,
        sp,
      );
      urlsWithDescriptions.addAll(pageUrls);
      if (pageUrls.length < 100) {
        break;
      }
    }
    return urlsWithDescriptions;
  }
}
