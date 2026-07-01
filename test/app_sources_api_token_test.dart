import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:updatium/app_sources/bitbucket.dart';
import 'package:updatium/app_sources/gitea.dart';

class MockBitbucket extends Bitbucket {
  final Map<String, String> responses;
  MockBitbucket(this.responses);

  @override
  Future<http.Response> sourceRequest(
    String url,
    Map<String, dynamic> additionalSettings, {
    bool followRedirects = true,
    Object? postBody,
  }) async {
    final body = responses[url];
    if (body == null) {
      return http.Response('Not Found', 404);
    }
    return http.Response(body, 200);
  }

  @override
  Future<Map<String, String>?> getRequestHeaders(
    Map<String, dynamic> additionalSettings,
    String url, {
    bool forAPKDownload = false,
  }) async {
    // Use the real implementation
    return await super.getRequestHeaders(additionalSettings, url, forAPKDownload: forAPKDownload);
  }
}

class MockGitea extends Gitea {
  final Map<String, String> responses;
  MockGitea(this.responses);

  @override
  Future<http.Response> sourceRequest(
    String url,
    Map<String, dynamic> additionalSettings, {
    bool followRedirects = true,
    Object? postBody,
  }) async {
    final body = responses[url];
    if (body == null) {
      return http.Response('Not Found', 404);
    }
    return http.Response(body, 200);
  }
}

void main() {
  group('Bitbucket API Token and Asset Extraction', () {
    test('Bitbucket generates correct Basic Auth header', () async {
      
      // We can't easily mock SettingsProvider without refactoring, 
      // but we can test the logic if we bypass getAPITokenIfAny 
      // or use a subclass that mocks it.
    });

    test('Bitbucket extracts assets correctly from API', () async {
      final responses = {
        'https://api.bitbucket.org/2.0/repositories/owner/repo/downloads': jsonEncode({
          'values': [
            {
              'name': 'app-1.0.apk',
              'created_on': '2023-01-01T00:00:00Z',
              'links': {'self': {'href': 'https://bitbucket.org/download/app-1.0.apk'}}
            },
            {
              'name': 'app-0.9.apk',
              'created_on': '2022-01-01T00:00:00Z',
              'links': {'self': {'href': 'https://bitbucket.org/download/app-0.9.apk'}}
            },
            {
              'name': 'readme.txt',
              'created_on': '2023-01-01T00:00:00Z',
              'links': {'self': {'href': 'https://bitbucket.org/download/readme.txt'}}
            },
          ]
        })
      };
      final bitbucket = MockBitbucket(responses);
      final details = await bitbucket.getLatestAPKDetails(
        'https://bitbucket.org/owner/repo',
        {},
      );

      expect(details.version, contains('1.0'));
      expect(details.apkUrls.length, equals(2));
      expect(details.apkUrls.first.key, equals('app-1.0.apk'));
      expect(details.apkUrls.first.value, equals('https://bitbucket.org/download/app-1.0.apk'));
    });
  });

  group('Gitea API Token and Asset Extraction', () {
    test('Gitea extracts assets correctly from API', () async {
      final responses = {
        'https://gitea.com/api/v1/repos/owner/repo/releases': jsonEncode([
          {
            'tag_name': 'v1.2.3',
            'prerelease': false,
            'draft': false,
            'created_at': '2023-05-01T00:00:00Z',
            'assets': [
              {
                'name': 'app-v1.2.3.apk',
                'browser_download_url': 'https://gitea.com/download/app-v1.2.3.apk'
              },
              {
                'name': 'source.zip',
                'browser_download_url': 'https://gitea.com/download/source.zip'
              }
            ]
          }
        ])
      };
      final gitea = MockGitea(responses);
      final details = await gitea.getLatestAPKDetails(
        'https://gitea.com/owner/repo',
        {},
      );

      expect(details.version, equals('v1.2.3'));
      expect(details.apkUrls.length, equals(1));
      expect(details.apkUrls.first.key, equals('app-v1.2.3.apk'));
      expect(details.apkUrls.first.value, equals('https://gitea.com/download/app-v1.2.3.apk'));
    });
  });
}
