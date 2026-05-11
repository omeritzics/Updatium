import 'package:http/http.dart' as http;
import 'package:xml/xml.dart';

/// TOS-compliant RSS/Atom feed service for GitHub releases
class GitHubRSS {
  /// Get latest release information from GitHub RSS feed
  static Future<Map<String, dynamic>?> getLatestRelease(
    String owner,
    String repo, {
    Map<String, dynamic>? additionalSettings,
  }) async {
    try {
      final rssUrl = 'https://github.com/$owner/$repo/releases.atom';
      final response = await http.get(
        Uri.parse(rssUrl),
        headers: await _getHeaders(additionalSettings),
      );

      if (response.statusCode == 200) {
        return _parseRSSFeed(response.body);
      } else if (response.statusCode == 404) {
        // RSS feed not available for this repo
        return null;
      }

      return null;
    } catch (e) {
      return null;
    }
  }

  /// Parse RSS/Atom feed and extract latest release
  static Map<String, dynamic>? _parseRSSFeed(String rssBody) {
    try {
      final document = XmlDocument.parse(rssBody);
      final entries = document.findAllElements('entry');

      if (entries.isEmpty) return null;

      // Get the first (latest) entry
      final latestEntry = entries.first;

      // Extract release information
      final title = latestEntry.findElements('title').first.innerText;
      final published = latestEntry.findElements('published').first.innerText;
      final content = latestEntry.findElements('content').first.innerText;

      // Extract download URLs from content
      final downloadUrls = <MapEntry<String, String>>[];
      final links = latestEntry.findAllElements('link');

      for (final link in links) {
        final href = link.getAttribute('href');
        final type = link.getAttribute('type');
        final title = link.getAttribute('title');

        if (href != null &&
            (type?.contains('application/') == true ||
                href.endsWith('.apk') ||
                href.endsWith('.zip'))) {
          downloadUrls.add(MapEntry(title ?? href.split('/').last, href));
        }
      }

      return {
        'tagName': title,
        'name': title,
        'publishedAt': published,
        'body': content.replaceAll(RegExp(r'<[^>]*>'), ''), // Strip HTML
        'downloadUrls': downloadUrls,
        'isPrerelease':
            title.toLowerCase().contains('beta') ||
            title.toLowerCase().contains('alpha') ||
            title.toLowerCase().contains('rc'),
        'isDraft': false,
      };
    } catch (e) {
      return null;
    }
  }

  /// Get headers for RSS request (including PAT if available)
  static Future<Map<String, String>> _getHeaders(
    Map<String, dynamic>? additionalSettings,
  ) async {
    final headers = <String, String>{
      'Accept': 'application/atom+xml,application/xml,text/xml',
      'User-Agent': 'Updatium-App/1.0',
    };

    // Add PAT if available for authenticated requests
    String? token = additionalSettings?['githubPATLabel'];
    if (token == null || token.isEmpty) {
      // No token available, proceed without authentication
    } else {
      // Remove username prefix if present (for old format)
      var userNameEndIndex = token.indexOf(':');
      if (userNameEndIndex > 0) {
        token = token.substring(userNameEndIndex + 1);
      }
    }
    if (token != null && token.isNotEmpty) {
      headers['Authorization'] = 'token $token';
    }

    return headers;
  }

  /// Check if RSS feed is available for repository
  static Future<bool> isRSSAvailable(
    String owner,
    String repo, {
    Map<String, dynamic>? additionalSettings,
  }) async {
    try {
      final rssUrl = 'https://github.com/$owner/$repo/releases.atom';
      final response = await http.head(
        Uri.parse(rssUrl),
        headers: await _getHeaders(additionalSettings),
      );

      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }
}
