import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' as path;
import 'package:pubspec_parse/pubspec_parse.dart';

void main() {
  group('Configuration Files Validation', () {
    late Directory projectRoot;

    setUpAll(() {
      final testDir = Directory.current;
      projectRoot = testDir.path.endsWith('test') ? testDir.parent : testDir;
    });

    test('README.md exists and contains key sections', () {
      final readmeFile = File(path.join(projectRoot.path, 'README.md'));

      expect(
        readmeFile.existsSync(),
        isTrue,
        reason: 'README.md should exist in project root',
      );

      if (readmeFile.existsSync()) {
        final content = readmeFile.readAsStringSync();

        // Verify README contains important sections
        expect(
          content,
          contains('Updatium'),
          reason: 'README should mention Updatium',
        );
        expect(
          content,
          contains('Android'),
          reason: 'README should mention Android platform',
        );
        expect(
          content.toLowerCase(),
          contains('download'),
          reason: 'README should have a download section',
        );
        expect(content, isNotEmpty, reason: 'README should not be empty');
        expect(
          content.length,
          greaterThan(100),
          reason: 'README should have substantial content',
        );
      }
    });

    test('README.md has valid markdown structure', () {
      final readmeFile = File(path.join(projectRoot.path, 'README.md'));

      if (readmeFile.existsSync()) {
        final content = readmeFile.readAsStringSync();

        // Check for markdown heading
        expect(
          RegExp(r'^#\s+').hasMatch(content),
          isTrue,
          reason: 'README should start with a markdown heading',
        );

        // Check for valid links (if any)
        final linkPattern = RegExp(r'\[([^\]]+)\]\(([^)]+)\)');
        final matches = linkPattern.allMatches(content);

        for (final match in matches) {
          final url = match.group(2)!;
          // URLs should not be empty
          expect(
            url.trim(),
            isNotEmpty,
            reason: 'Link URL should not be empty',
          );
        }
      }
    });

    test('.qodo.toml exists and is valid TOML format', () {
      final qodoFile = File(path.join(projectRoot.path, '.qodo.toml'));

      expect(
        qodoFile.existsSync(),
        isTrue,
        reason: '.qodo.toml should exist in project root',
      );

      if (qodoFile.existsSync()) {
        final content = qodoFile.readAsStringSync();

        // Basic TOML validation
        expect(content, isNotEmpty, reason: '.qodo.toml should not be empty');

        // Check for TOML section headers
        expect(
          RegExp(r'\[.+\]').hasMatch(content),
          isTrue,
          reason: '.qodo.toml should contain TOML sections',
        );

        // Check for key-value pairs
        expect(
          RegExp(r'^\w+\s*=\s*.+', multiLine: true).hasMatch(content),
          isTrue,
          reason: '.qodo.toml should contain key-value pairs',
        );

        // Verify expected sections
        expect(
          content,
          contains('[pr_code_suggestions]'),
          reason: '.qodo.toml should have pr_code_suggestions section',
        );
        expect(
          content,
          contains('[rag_arguments]'),
          reason: '.qodo.toml should have rag_arguments section',
        );
      }
    });

    test('.qodo.toml has required configuration keys', () {
      final qodoFile = File(path.join(projectRoot.path, '.qodo.toml'));

      if (qodoFile.existsSync()) {
        final content = qodoFile.readAsStringSync();

        // Check for important configuration keys
        expect(
          content,
          contains('include_globs'),
          reason: '.qodo.toml should specify include_globs',
        );
        expect(
          content,
          contains('exclude_globs'),
          reason: '.qodo.toml should specify exclude_globs',
        );
        expect(
          content,
          contains('max_file_size_kb'),
          reason: '.qodo.toml should specify max_file_size_kb',
        );
      }
    });

    test('GitHub bug report template exists and is valid', () {
      final bugReportFile = File(
        path.join(
          projectRoot.path,
          '.github',
          'ISSUE_TEMPLATE',
          'bug_report.md',
        ),
      );

      expect(
        bugReportFile.existsSync(),
        isTrue,
        reason: 'Bug report template should exist',
      );

      if (bugReportFile.existsSync()) {
        final content = bugReportFile.readAsStringSync();

        // Check for YAML frontmatter
        expect(
          content,
          startsWith('---'),
          reason: 'Bug report template should have YAML frontmatter',
        );

        // Check for required sections
        expect(
          content.toLowerCase(),
          contains('describe the bug'),
          reason: 'Bug report should have "Describe the bug" section',
        );
        expect(
          content.toLowerCase(),
          contains('to reproduce'),
          reason: 'Bug report should have "To Reproduce" section',
        );
        expect(
          content,
          contains('name:'),
          reason: 'Bug report template should have name field',
        );
        expect(
          content,
          contains('about:'),
          reason: 'Bug report template should have about field',
        );
        expect(
          content,
          contains('labels:'),
          reason: 'Bug report template should have labels field',
        );
      }
    });

    test('android/app/build.gradle.kts exists and has valid structure', () {
      final buildFile = File(
        path.join(projectRoot.path, 'android', 'app', 'build.gradle.kts'),
      );

      expect(
        buildFile.existsSync(),
        isTrue,
        reason: 'build.gradle.kts should exist',
      );

      if (buildFile.existsSync()) {
        final content = buildFile.readAsStringSync();

        // Check for essential Gradle configurations
        expect(
          content,
          contains('plugins {'),
          reason: 'build.gradle.kts should have plugins block',
        );
        expect(
          content,
          contains('android {'),
          reason: 'build.gradle.kts should have android block',
        );
        expect(
          content,
          contains('applicationId'),
          reason: 'build.gradle.kts should define applicationId',
        );
        expect(
          content,
          contains('minSdk'),
          reason: 'build.gradle.kts should define minSdk',
        );
        expect(
          content,
          contains('targetSdk'),
          reason: 'build.gradle.kts should define targetSdk',
        );
      }
    });

    test('build.gradle.kts has correct package name', () {
      final buildFile = File(
        path.join(projectRoot.path, 'android', 'app', 'build.gradle.kts'),
      );

      if (buildFile.existsSync()) {
        final content = buildFile.readAsStringSync();

        // Check for Updatium package name
        expect(
          content,
          contains('com.omeritzics.updatium'),
          reason: 'build.gradle.kts should use correct package name',
        );
      }
    });

    test('build.gradle.kts has version code calculation logic', () {
      final buildFile = File(
        path.join(projectRoot.path, 'android', 'app', 'build.gradle.kts'),
      );

      if (buildFile.existsSync()) {
        final content = buildFile.readAsStringSync();

        // Check for version code calculation
        expect(
          content,
          contains('versionCode'),
          reason: 'build.gradle.kts should have versionCode configuration',
        );
        expect(
          content,
          contains('abiCodes'),
          reason:
              'build.gradle.kts should define ABI codes for version calculation',
        );
        expect(
          content,
          contains('androidComponents'),
          reason:
              'build.gradle.kts should use androidComponents for version calculation',
        );
      }
    });

    test('build.gradle.kts configures ABI splits correctly', () {
      final buildFile = File(
        path.join(projectRoot.path, 'android', 'app', 'build.gradle.kts'),
      );

      if (buildFile.existsSync()) {
        final content = buildFile.readAsStringSync();

        // Check for ABI split configuration
        expect(
          content,
          contains('splits {'),
          reason: 'build.gradle.kts should configure splits',
        );
        expect(
          content,
          contains('abi {'),
          reason: 'build.gradle.kts should configure ABI splits',
        );
        expect(
          content,
          contains('arm64-v8a'),
          reason: 'build.gradle.kts should include arm64-v8a ABI',
        );
        expect(
          content,
          contains('armeabi-v7a'),
          reason: 'build.gradle.kts should include armeabi-v7a ABI',
        );
      }
    });
  });

  group('GitHub Workflow Files Validation', () {
    late Directory projectRoot;
    late Directory workflowsDir;

    setUpAll(() {
      final testDir = Directory.current;
      projectRoot = testDir.path.endsWith('test') ? testDir.parent : testDir;
      workflowsDir = Directory(
        path.join(projectRoot.path, '.github', 'workflows'),
      );
    });

    test('GitHub workflows directory exists', () {
      expect(
        workflowsDir.existsSync(),
        isTrue,
        reason: '.github/workflows directory should exist',
      );
    });

    test('ci.yml workflow exists and has valid structure', () {
      final ciFile = File(path.join(workflowsDir.path, 'ci.yml'));

      expect(
        ciFile.existsSync(),
        isTrue,
        reason: 'ci.yml workflow should exist',
      );

      if (ciFile.existsSync()) {
        final content = ciFile.readAsStringSync();

        // Check for workflow basics
        expect(content, contains('name:'), reason: 'ci.yml should have a name');
        expect(
          content,
          contains('on:'),
          reason: 'ci.yml should define triggers',
        );
        expect(content, contains('jobs:'), reason: 'ci.yml should define jobs');
        expect(
          content,
          contains('build_artifact'),
          reason: 'ci.yml should have build_artifact job',
        );
      }
    });

    test('ci.yml has pull request trigger', () {
      final ciFile = File(path.join(workflowsDir.path, 'ci.yml'));

      if (ciFile.existsSync()) {
        final content = ciFile.readAsStringSync();

        expect(
          content,
          contains('pull_request'),
          reason: 'ci.yml should trigger on pull requests',
        );
      }
    });

    test('ci.yml builds APKs with proper configuration', () {
      final ciFile = File(path.join(workflowsDir.path, 'ci.yml'));

      if (ciFile.existsSync()) {
        final content = ciFile.readAsStringSync();

        expect(
          content,
          contains('flutter build apk'),
          reason: 'ci.yml should build APK',
        );
        expect(
          content,
          contains('--split-per-abi'),
          reason: 'ci.yml should build split APKs per ABI',
        );
        expect(
          content,
          contains('--debug'),
          reason: 'ci.yml should build debug APKs',
        );
      }
    });

    test('nightly.yml workflow exists and has valid structure', () {
      final nightlyFile = File(path.join(workflowsDir.path, 'nightly.yml'));

      expect(
        nightlyFile.existsSync(),
        isTrue,
        reason: 'nightly.yml workflow should exist',
      );

      if (nightlyFile.existsSync()) {
        final content = nightlyFile.readAsStringSync();

        expect(
          content,
          contains('name:'),
          reason: 'nightly.yml should have a name',
        );
        expect(
          content,
          contains('jobs:'),
          reason: 'nightly.yml should define jobs',
        );
        expect(
          content,
          contains('build'),
          reason: 'nightly.yml should have build job',
        );
      }
    });

    test('nightly.yml triggers on main branch push', () {
      final nightlyFile = File(path.join(workflowsDir.path, 'nightly.yml'));

      if (nightlyFile.existsSync()) {
        final content = nightlyFile.readAsStringSync();

        expect(
          content,
          contains('push:'),
          reason: 'nightly.yml should trigger on push',
        );
        expect(
          content,
          contains('main'),
          reason: 'nightly.yml should trigger on main branch',
        );
      }
    });

    test('nightly.yml creates GitHub releases', () {
      final nightlyFile = File(path.join(workflowsDir.path, 'nightly.yml'));

      if (nightlyFile.existsSync()) {
        final content = nightlyFile.readAsStringSync();

        expect(
          content,
          contains('action-gh-release'),
          reason: 'nightly.yml should create GitHub releases',
        );
        expect(
          content,
          contains('nightly-build'),
          reason: 'nightly.yml should tag as nightly-build',
        );
      }
    });

    test('release.yml workflow exists and has valid structure', () {
      final releaseFile = File(path.join(workflowsDir.path, 'release.yml'));

      expect(
        releaseFile.existsSync(),
        isTrue,
        reason: 'release.yml workflow should exist',
      );

      if (releaseFile.existsSync()) {
        final content = releaseFile.readAsStringSync();

        expect(
          content,
          contains('name:'),
          reason: 'release.yml should have a name',
        );
        expect(
          content,
          contains('jobs:'),
          reason: 'release.yml should define jobs',
        );
        expect(
          content,
          contains('workflow_dispatch'),
          reason: 'release.yml should support manual triggering',
        );
      }
    });

    test('release.yml handles signing configuration', () {
      final releaseFile = File(path.join(workflowsDir.path, 'release.yml'));

      if (releaseFile.existsSync()) {
        final content = releaseFile.readAsStringSync();

        expect(
          content,
          contains('KEYSTORE'),
          reason: 'release.yml should handle keystore configuration',
        );
        expect(
          content,
          contains('Decode Keystore'),
          reason: 'release.yml should decode keystore from secrets',
        );
      }
    });

    test('release.yml builds obfuscated release APKs', () {
      final releaseFile = File(path.join(workflowsDir.path, 'release.yml'));

      if (releaseFile.existsSync()) {
        final content = releaseFile.readAsStringSync();

        expect(
          content,
          contains('--release'),
          reason: 'release.yml should build release APKs',
        );
        expect(
          content,
          contains('--obfuscate'),
          reason: 'release.yml should obfuscate release builds',
        );
        expect(
          content,
          contains('--split-per-abi'),
          reason: 'release.yml should build split APKs per ABI',
        );
      }
    });

    test('release.yml cleans up sensitive files', () {
      final releaseFile = File(path.join(workflowsDir.path, 'release.yml'));

      if (releaseFile.existsSync()) {
        final content = releaseFile.readAsStringSync();

        expect(
          content,
          contains('Cleanup'),
          reason: 'release.yml should have cleanup step',
        );
        expect(
          content.toLowerCase(),
          contains('keystore'),
          reason: 'release.yml cleanup should mention keystore',
        );
      }
    });

    test('all workflow files use consistent Flutter version', () {
      final workflowFiles = [
        File(path.join(workflowsDir.path, 'ci.yml')),
        File(path.join(workflowsDir.path, 'nightly.yml')),
        File(path.join(workflowsDir.path, 'release.yml')),
      ];

      String? flutterVersion;

      for (final file in workflowFiles) {
        if (!file.existsSync()) continue;

        final content = file.readAsStringSync();
        final versionMatch = RegExp(
          'version:\\s*[\'"]?(\\d+\\.\\d+\\.\\d+)[\'"]?',
        ).firstMatch(content);

        final version = versionMatch?.group(1);
        if (flutterVersion == null) {
          flutterVersion = version;
        } else {
          expect(
            version,
            equals(flutterVersion),
            reason:
                'All workflows should use the same Flutter version (found $version vs $flutterVersion in ${path.basename(file.path)})',
          );
        }
      }
    });
  });

  group('Project Structure Validation', () {
    late Directory projectRoot;

    setUpAll(() {
      final testDir = Directory.current;
      projectRoot = testDir.path.endsWith('test') ? testDir.parent : testDir;
    });

    test('required project directories exist', () {
      final requiredDirs = [
        'lib',
        'assets',
        'assets/translations',
        'android',
        'test',
        '.github',
        '.github/workflows',
      ];

      for (final dirPath in requiredDirs) {
        final dir = Directory(path.join(projectRoot.path, dirPath));
        expect(
          dir.existsSync(),
          isTrue,
          reason: 'Required directory $dirPath should exist',
        );
      }
    });

    test('pubspec.yaml exists and contains required fields', () {
      final pubspecFile = File(path.join(projectRoot.path, 'pubspec.yaml'));

      expect(
        pubspecFile.existsSync(),
        isTrue,
        reason: 'pubspec.yaml should exist',
      );

      if (pubspecFile.existsSync()) {
        final content = pubspecFile.readAsStringSync();
        final pubspec = Pubspec.parse(content);

        expect(
          pubspec.name,
          isNotEmpty,
          reason: 'pubspec.yaml should have name field',
        );
        expect(
          pubspec.description,
          isNotEmpty,
          reason: 'pubspec.yaml should have description field',
        );
        expect(
          pubspec.version.toString(),
          isNotEmpty,
          reason: 'pubspec.yaml should have version field',
        );
        expect(
          pubspec.name,
          equals('updatium'),
          reason: 'pubspec.yaml should reference updatium',
        );
      }
    });
  });
}
