import 'package:flutter_test/flutter_test.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/app_sources/github.dart';
import 'package:updatium/app_sources/gitlab.dart';
import 'package:updatium/app_sources/fdroid.dart';
import 'package:updatium/app_sources/html.dart';

void main() {
  group('GitHub Source Tests', () {
    late GitHub github;

    setUp(() {
      github = GitHub();
    });

    test('GitHub has correct hosts', () {
      expect(github.hosts, contains('github.com'));
    });

    test('GitHub can search', () {
      expect(github.canSearch, isTrue);
    });

    test('GitHub is open source', () {
      expect(github.openSource, isTrue);
    });

    test('GitHub standardizes URL correctly', () {
      final url = github.sourceSpecificStandardizeURL(
        'https://github.com/user/repo',
      );
      expect(url, equals('https://github.com/user/repo'));
    });

    test('GitHub rejects invalid URL', () {
      expect(
        () => github.sourceSpecificStandardizeURL('https://invalid.com/repo'),
        throwsA(isA<Exception>()),
      );
    });

    test('GitHub has form items', () {
      expect(github.combinedAppSpecificSettingFormItems, isNotEmpty);
    });
  });

  group('GitLab Source Tests', () {
    late GitLab gitlab;

    setUp(() {
      gitlab = GitLab();
    });

    test('GitLab has correct hosts', () {
      expect(gitlab.hosts, contains('gitlab.com'));
    });

    test('GitLab can search', () {
      expect(gitlab.canSearch, isTrue);
    });

    test('GitLab is open source', () {
      expect(gitlab.openSource, isTrue);
    });
  });

  group('FDroid Source Tests', () {
    late FDroid fdroid;

    setUp(() {
      fdroid = FDroid();
    });

    test('FDroid has correct hosts', () {
      expect(fdroid.hosts, contains('f-droid.org'));
    });

    test('FDroid is open source', () {
      expect(fdroid.openSource, isTrue);
    });
  });

  group('HTML Source Tests', () {
    late HTML html;

    setUp(() {
      html = HTML();
    });

    test('HTML has empty hosts list', () {
      expect(html.hosts, isEmpty);
    });

    test('HTML is never auto selected only for URL-based selection', () {
      expect(html.neverAutoSelect, isFalse);
    });

    test('HTML has form items', () {
      expect(html.combinedAppSpecificSettingFormItems, isNotEmpty);
    });
  });

  group('Source Provider getSource Tests', () {
    late SourceProvider sourceProvider;

    setUp(() {
      sourceProvider = SourceProvider();
    });

    test('getSource returns GitHub for github.com URLs', () {
      final source = sourceProvider.getSource('https://github.com/flutter/flutter');
      expect(source, isA<GitHub>());
    });

    test('getSource returns GitLab for gitlab.com URLs', () {
      final source = sourceProvider.getSource('https://gitlab.com/flutter/flutter');
      expect(source, isA<GitLab>());
    });

    test('getSource returns FDroid for f-droid.org URLs', () {
      final source = sourceProvider.getSource('https://f-droid.org/packages/org.fdroid.fdroid');
      expect(source, isA<FDroid>());
    });

    test('getSource handles URLs with www prefix', () {
      final source = sourceProvider.getSource('https://www.github.com/user/repo');
      expect(source, isA<GitHub>());
    });

    test('getSource handles overrideSource parameter', () {
      final source = sourceProvider.getSource(
        'https://example.com/repo',
        overrideSource: 'GitHub',
      );
      expect(source, isA<GitHub>());
    });

    test('getSource throws for invalid overrideSource', () {
      expect(
        () => sourceProvider.getSource(
          'https://example.com/repo',
          overrideSource: 'NonExistent',
        ),
        throwsA(isA<UnsupportedURLError>()),
      );
    });
  });

  group('All Sources Tests', () {
    test('All sources have unique names', () {
      final sourceProvider = SourceProvider();
      final names = sourceProvider.sources.map((s) => s.name).toList();
      expect(names.toSet().length, equals(names.length));
    });

    test('All sources have combined form items', () {
      final sourceProvider = SourceProvider();
      for (final source in sourceProvider.sources) {
        expect(
          source.combinedAppSpecificSettingFormItems,
          isNotEmpty,
          reason: '${source.name} should have form items',
        );
      }
    });
  });
}