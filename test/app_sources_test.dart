import 'package:flutter_test/flutter_test.dart';
import 'package:updatium/custom_errors.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/providers/settings_provider.dart';
import 'package:updatium/app_sources/github.dart';
import 'package:updatium/app_sources/gitlab.dart';
import 'package:updatium/app_sources/fdroid.dart';
import 'package:updatium/app_sources/html.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

    test('GitHub standardizes URL correctly', () {
      final url = github.sourceSpecificStandardizeURL(
        'https://github.com/user/repo',
      );
      expect(url, equals('https://github.com/user/repo'));
    });

    test('GitHub rejects invalid URL', () {
      expect(
        () => github.sourceSpecificStandardizeURL('https://invalid.com/repo'),
        throwsA(isA<InvalidURLError>()),
      );
    });

    test('GitHub has form items', () {
      expect(github.combinedAppSpecificSettingFormItems, isNotEmpty);
    });

    test('GitHub PAT from settings is used when hostChanged is false', () async {
      SharedPreferences.setMockInitialValues({
        'githubPATLabel': 'test_token_123',
      });
      final prefs = await SharedPreferences.getInstance();
      final settingsProvider = SettingsProvider();
      settingsProvider.prefs = prefs;

      final sourceConfig = await github.getSourceConfigValues({}, settingsProvider);
      expect(sourceConfig['githubPATLabel'], equals('test_token_123'));
    });

    test('GitHub PAT from settings is ignored when hostChanged is true', () async {
      SharedPreferences.setMockInitialValues({
        'githubPATLabel': 'settings_token',
      });
      final prefs = await SharedPreferences.getInstance();
      final settingsProvider = SettingsProvider();
      settingsProvider.prefs = prefs;

      final githubOverridden = GitHub(hostChanged: true);
      final sourceConfig = await githubOverridden.getSourceConfigValues({}, settingsProvider);
      expect(sourceConfig['githubPATLabel'], isNull);
    });

    test('GitHub PAT from additionalSettings is used when hostChanged is true', () async {
      SharedPreferences.setMockInitialValues({
        'githubPATLabel': 'settings_token',
      });
      final prefs = await SharedPreferences.getInstance();
      final settingsProvider = SettingsProvider();
      settingsProvider.prefs = prefs;

      final githubOverridden = GitHub(hostChanged: true);
      final sourceConfig = await githubOverridden.getSourceConfigValues(
        {'githubPATLabel': 'override_token'},
        settingsProvider,
      );
      expect(sourceConfig['githubPATLabel'], equals('override_token'));
    });

    test('GitHub PAT from additionalSettings takes precedence over settings', () async {
      SharedPreferences.setMockInitialValues({
        'githubPATLabel': 'settings_token',
      });
      final prefs = await SharedPreferences.getInstance();
      final settingsProvider = SettingsProvider();
      settingsProvider.prefs = prefs;

      final sourceConfig = await github.getSourceConfigValues(
        {'githubPATLabel': 'override_token'},
        settingsProvider,
      );
      expect(sourceConfig['githubPATLabel'], equals('override_token'));
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
  });

  group('FDroid Source Tests', () {
    late FDroid fdroid;

    setUp(() {
      fdroid = FDroid();
    });

    test('FDroid has correct hosts', () {
      expect(fdroid.hosts, contains('f-droid.org'));
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
      final source = sourceProvider.getSource(
        'https://github.com/flutter/flutter',
      );
      expect(source, isA<GitHub>());
    });

    test('getSource returns GitLab for gitlab.com URLs', () {
      final source = sourceProvider.getSource(
        'https://gitlab.com/flutter/flutter',
      );
      expect(source, isA<GitLab>());
    });

    test('getSource returns FDroid for f-droid.org URLs', () {
      final source = sourceProvider.getSource(
        'https://f-droid.org/packages/org.fdroid.fdroid',
      );
      expect(source, isA<FDroid>());
    });

    test('getSource handles URLs with www prefix', () {
      final source = sourceProvider.getSource(
        'https://www.github.com/user/repo',
      );
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
