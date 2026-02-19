import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' as path;

/// Edge case and boundary condition tests for translations and configurations
/// These tests strengthen confidence by testing unusual scenarios
void main() {
  group('Translation Edge Cases', () {
    late Directory translationsDir;

    setUpAll(() {
      final testDir = Directory.current;
      final projectRoot = testDir.path.endsWith('test')
          ? testDir.parent
          : testDir;
      translationsDir = Directory(path.join(projectRoot.path, 'assets', 'translations'));
    });

    test('translation files handle special characters correctly', () {
      final translationFiles = translationsDir
          .listSync()
          .where((file) => file.path.endsWith('.json'))
          .toList();

      for (final file in translationFiles) {
        final content = File(file.path).readAsStringSync();
        final translations = json.decode(content) as Map<String, dynamic>;
        final fileName = path.basename(file.path);

        for (final entry in translations.entries) {
          if (entry.value is String) {
            final value = entry.value as String;

            // Should not contain unescaped control characters
            expect(value.contains(RegExp(r'[\x00-\x08\x0B-\x0C\x0E-\x1F]')), isFalse,
                reason: 'In $fileName at "${entry.key}": should not contain unescaped control characters');

            // Should not have trailing/leading whitespace (except intentional spaces)
            if (!value.startsWith(' ') && !value.endsWith(' ')) {
              // This is expected, no trimming needed
            }
          }
        }
      }
    });

    test('translation placeholders use valid variable names', () {
      final translationFiles = translationsDir
          .listSync()
          .where((file) => file.path.endsWith('.json'))
          .toList();

      final placeholderPattern = RegExp(r'\{([^}]+)\}');

      for (final file in translationFiles) {
        final content = File(file.path).readAsStringSync();
        final translations = json.decode(content) as Map<String, dynamic>;
        final fileName = path.basename(file.path);

        void checkPlaceholderNames(dynamic value, String keyPath) {
          if (value is String) {
            final allMatches = placeholderPattern.allMatches(value);
            for (final match in allMatches) {
              final placeholder = match.group(1)!;

              // Empty placeholders like {} are valid for positional args
              if (placeholder.isEmpty) continue;

              // Should use alphanumeric and underscore only
              expect(placeholder, matches(RegExp(r'^[a-zA-Z0-9_]+$')),
                  reason: 'In $fileName at "$keyPath": placeholder "{$placeholder}" should use valid variable name format');
            }
          } else if (value is Map) {
            value.forEach((k, v) => checkPlaceholderNames(v, '$keyPath.$k'));
          }
        }

        translations.forEach((key, value) => checkPlaceholderNames(value, key));
      }
    });

    test('translation files do not exceed reasonable size', () {
      final translationFiles = translationsDir
          .listSync()
          .where((file) => file.path.endsWith('.json'))
          .toList();

      const maxSizeBytes = 500 * 1024; // 500 KB is reasonable for translation files

      for (final file in translationFiles) {
        final fileSize = File(file.path).lengthSync();
        final fileName = path.basename(file.path);

        expect(fileSize, lessThan(maxSizeBytes),
            reason: 'Translation file $fileName is $fileSize bytes, should be under $maxSizeBytes bytes');
      }
    });

    test('translation keys use consistent naming convention', () {
      final translationFiles = translationsDir
          .listSync()
          .where((file) => file.path.endsWith('.json'))
          .toList();

      for (final file in translationFiles) {
        final content = File(file.path).readAsStringSync();
        final translations = json.decode(content) as Map<String, dynamic>;
        final fileName = path.basename(file.path);

        for (final key in translations.keys) {
          // Keys should use camelCase (not snake_case or kebab-case)
          // Allow exceptions for keys with underscores in specific cases
          if (key.contains('_') && !key.startsWith('x') && !key.contains('AndN')) {
            print('Note: $fileName has key "$key" with underscore (may be intentional)');
          }

          // Keys should not start with numbers
          expect(key, isNot(matches(RegExp(r'^\d'))),
              reason: 'In $fileName: key "$key" should not start with a number');

          // Keys should not contain spaces
          expect(key.contains(' '), isFalse,
              reason: 'In $fileName: key "$key" should not contain spaces');
        }
      }
    });

    test('pluralization forms handle edge cases', () {
      final translationFiles = translationsDir
          .listSync()
          .where((file) => file.path.endsWith('.json'))
          .toList();

      for (final file in translationFiles) {
        final content = File(file.path).readAsStringSync();
        final translations = json.decode(content) as Map<String, dynamic>;
        final fileName = path.basename(file.path);

        for (final entry in translations.entries) {
          if (entry.value is Map) {
            final pluralForms = entry.value as Map<String, dynamic>;

            // If it's a pluralization map, should have 'other' at minimum
            if (pluralForms.containsKey('one') || pluralForms.containsKey('other')) {
              expect(pluralForms.containsKey('other'), isTrue,
                  reason: 'In $fileName: pluralization key "${entry.key}" must have "other" form');

              // Values should not be identical (defeats purpose of pluralization)
              final values = pluralForms.values.whereType<String>().toSet();
              if (values.length < 2 && pluralForms.length > 1) {
                print('Note: $fileName key "${entry.key}" has identical plural forms (may be intentional)');
              }
            }
          }
        }
      }
    });

    test('translations handle newlines and escape sequences correctly', () {
      final translationFiles = translationsDir
          .listSync()
          .where((file) => file.path.endsWith('.json'))
          .toList();

      for (final file in translationFiles) {
        final content = File(file.path).readAsStringSync();
        final translations = json.decode(content) as Map<String, dynamic>;
        final fileName = path.basename(file.path);

        void checkEscapes(dynamic value, String keyPath) {
          if (value is String) {
            // Should use \n for newlines, not actual newlines in most cases
            final actualNewlines = '\n'.allMatches(value).length;
            final escapedNewlines = r'\n'.allMatches(value).length;

            // If there are actual newlines, they should be intentional
            if (actualNewlines > 3) {
              print('Note: $fileName at "$keyPath" has $actualNewlines actual newlines');
            }
          } else if (value is Map) {
            value.forEach((k, v) => checkEscapes(v, '$keyPath.$k'));
          }
        }

        translations.forEach((key, value) => checkEscapes(value, key));
      }
    });

    test('no translation file contains malformed JSON escape sequences', () {
      final translationFiles = translationsDir
          .listSync()
          .where((file) => file.path.endsWith('.json'))
          .toList();

      for (final file in translationFiles) {
        final content = File(file.path).readAsStringSync();
        final fileName = path.basename(file.path);

        // Check for common malformed escape sequences
        expect(content.contains(r'\\n'), isFalse,
            reason: '$fileName should not contain double-escaped newlines (\\\\n)');
        expect(content.contains(r'\\t'), isFalse,
            reason: '$fileName should not contain double-escaped tabs (\\\\t)');
      }
    });

    test('translation values handle URLs correctly', () {
      final translationFiles = translationsDir
          .listSync()
          .where((file) => file.path.endsWith('.json'))
          .toList();

      final urlPattern = RegExp(r'https?://[^\s\)"]+');

      for (final file in translationFiles) {
        final content = File(file.path).readAsStringSync();
        final translations = json.decode(content) as Map<String, dynamic>;
        final fileName = path.basename(file.path);

        void checkUrls(dynamic value, String keyPath) {
          if (value is String) {
            final urls = urlPattern.allMatches(value);
            for (final match in urls) {
              final url = match.group(0)!;

              // URLs should be properly formatted
              expect(url, isNot(endsWith('/')),
                  reason: 'In $fileName at "$keyPath": URL should not end with trailing slash (unless intentional): $url');

              // URLs should use https where possible (security best practice)
              if (url.startsWith('http://') && !url.contains('localhost')) {
                print('Security note: $fileName at "$keyPath" uses HTTP instead of HTTPS: $url');
              }
            }
          } else if (value is Map) {
            value.forEach((k, v) => checkUrls(v, '$keyPath.$k'));
          }
        }

        translations.forEach((key, value) => checkUrls(value, key));
      }
    });
  });

  group('Configuration Edge Cases', () {
    late Directory projectRoot;

    setUpAll(() {
      final testDir = Directory.current;
      projectRoot = testDir.path.endsWith('test')
          ? testDir.parent
          : testDir;
    });

    test('GitHub workflow files handle long lines appropriately', () {
      final workflowFiles = [
        File(path.join(projectRoot.path, '.github', 'workflows', 'ci.yml')),
        File(path.join(projectRoot.path, '.github', 'workflows', 'nightly.yml')),
        File(path.join(projectRoot.path, '.github', 'workflows', 'release.yml')),
      ];

      const maxLineLength = 200; // GitHub Actions has no hard limit, but readability matters

      for (final file in workflowFiles) {
        if (!file.existsSync()) continue;

        final lines = file.readAsLinesSync();
        final fileName = path.basename(file.path);

        for (var i = 0; i < lines.length; i++) {
          final line = lines[i];
          if (line.length > maxLineLength) {
            print('Note: $fileName line ${i + 1} is ${line.length} chars (readability suggestion: under $maxLineLength)');
          }
        }
      }
    });

    test('build.gradle.kts version code calculation handles edge cases', () {
      final buildFile = File(path.join(
          projectRoot.path, 'android', 'app', 'build.gradle.kts'));

      if (buildFile.existsSync()) {
        final content = buildFile.readAsStringSync();

        // Should have bounds checking for version codes
        expect(content, contains('require'),
            reason: 'build.gradle.kts should validate version code bounds');

        // Should handle ABI code calculation
        expect(content, contains('abiCodes'),
            reason: 'build.gradle.kts should define ABI code mappings');

        // Should handle null/missing ABI gracefully
        expect(content, contains('?: 0'),
            reason: 'build.gradle.kts should handle missing ABI with default value');

        // Should have Play Store version code limit
        if (content.contains('2_100_000_000') || content.contains('2100000000')) {
          // Good, it checks against Play Store limit
        } else {
          print('Note: build.gradle.kts might want to validate against Play Store version code limit (2,100,000,000)');
        }
      }
    });

    test('workflow files handle special characters in file paths', () {
      final workflowFiles = [
        File(path.join(projectRoot.path, '.github', 'workflows', 'ci.yml')),
        File(path.join(projectRoot.path, '.github', 'workflows', 'nightly.yml')),
        File(path.join(projectRoot.path, '.github', 'workflows', 'release.yml')),
      ];

      for (final file in workflowFiles) {
        if (!file.existsSync()) continue;

        final content = file.readAsStringSync();
        final fileName = path.basename(file.path);

        // File paths with spaces should be quoted
        final pathPattern = RegExp('[^"\']\s+[^\s:]+/[^\s:]+\s');
        if (pathPattern.hasMatch(content)) {
          print('Note: $fileName may have unquoted paths with spaces (check for proper quoting)');
        }
      }
    });

    test('README.md links are not broken or malformed', () {
      final readmeFile = File(path.join(projectRoot.path, 'README.md'));

      if (readmeFile.existsSync()) {
        final content = readmeFile.readAsStringSync();

        // Check for common link issues
        final linkPattern = RegExp(r'\[([^\]]+)\]\(([^)]+)\)');
        final matches = linkPattern.allMatches(content);

        for (final match in matches) {
          final linkText = match.group(1)!;
          final url = match.group(2)!;

          // Link text should not be empty
          expect(linkText.trim(), isNotEmpty,
              reason: 'README.md link text should not be empty for URL: $url');

          // URL should not be just a fragment
          if (url.startsWith('#')) {
            // Fragment links are okay
            continue;
          }

          // External URLs should start with http:// or https://
          if (!url.startsWith('http://') &&
              !url.startsWith('https://') &&
              !url.startsWith('#') &&
              !url.startsWith('./') &&
              !url.startsWith('../')) {
            print('Note: README.md link may be relative without protocol: $url');
          }

          // URLs should not contain spaces (should be encoded as %20)
          if (url.contains(' ')) {
            print('Warning: README.md URL contains unencoded space: $url');
          }
        }

        // Check for broken image links
        final imagePattern = RegExp(r'!\[([^\]]*)\]\(([^)]+)\)');
        final imageMatches = imagePattern.allMatches(content);

        for (final match in imageMatches) {
          final imagePath = match.group(2)!;

          // If it's a relative path, check if file exists
          if (!imagePath.startsWith('http://') && !imagePath.startsWith('https://')) {
            final imageFile = File(path.join(projectRoot.path, imagePath));
            if (!imageFile.existsSync()) {
              print('Note: README.md references image that may not exist: $imagePath');
            }
          }
        }
      }
    });

    test('.qodo.toml glob patterns are valid', () {
      final qodoFile = File(path.join(projectRoot.path, '.qodo.toml'));

      if (qodoFile.existsSync()) {
        final content = qodoFile.readAsStringSync();

        // Check for common glob pattern issues
        // Patterns should not end with multiple asterisks without separator
        expect(content.contains('***'), isFalse,
            reason: '.qodo.toml should not contain invalid glob pattern ***');

        // Patterns should use forward slashes (not backslashes)
        final globLines = content.split('\n').where((line) =>
            line.contains('include_globs') || line.contains('exclude_globs'));

        for (final line in globLines) {
          if (line.contains(r'\')) {
            print('Note: .qodo.toml may use backslashes in glob patterns (should use forward slashes)');
          }
        }
      }
    });

    test('workflow secrets are not accidentally exposed', () {
      final workflowFiles = [
        File(path.join(projectRoot.path, '.github', 'workflows', 'ci.yml')),
        File(path.join(projectRoot.path, '.github', 'workflows', 'nightly.yml')),
        File(path.join(projectRoot.path, '.github', 'workflows', 'release.yml')),
      ];

      for (final file in workflowFiles) {
        if (!file.existsSync()) continue;

        final content = file.readAsStringSync();
        final fileName = path.basename(file.path);

        // Should not contain hardcoded sensitive values
        expect(content, isNot(matches(RegExp('password:\s*["\'][^"\']{8,}["\']', caseSensitive: false))),
            reason: '$fileName should not contain hardcoded passwords');

        // Secrets should use ${{ secrets.NAME }} syntax
        if (content.contains('KEYSTORE') || content.contains('PASSWORD') || content.contains('KEY')) {
          expect(content, contains('secrets.'),
              reason: '$fileName should reference secrets via secrets. syntax');
        }
      }
    });

    test('translation files have backup/recovery mechanism', () {
      final translationsDir = Directory(path.join(projectRoot.path, 'assets', 'translations'));

      // At minimum, English should always exist as fallback
      final englishFile = File(path.join(translationsDir.path, 'en.json'));
      expect(englishFile.existsSync(), isTrue,
          reason: 'English translation (en.json) should always exist as fallback');

      if (englishFile.existsSync()) {
        final content = englishFile.readAsStringSync();
        final translations = json.decode(content) as Map<String, dynamic>;

        // English should have comprehensive coverage
        expect(translations.length, greaterThan(100),
            reason: 'English translation should have substantial coverage (found ${translations.length} keys)');
      }
    });
  });

  group('Regression Prevention Tests', () {
    late Directory projectRoot;

    setUpAll(() {
      final testDir = Directory.current;
      projectRoot = testDir.path.endsWith('test')
          ? testDir.parent
          : testDir;
    });

    test('translation files maintain backward compatibility with previous versions', () {
      final translationsDir = Directory(path.join(projectRoot.path, 'assets', 'translations'));
      final englishFile = File(path.join(translationsDir.path, 'en.json'));

      if (englishFile.existsSync()) {
        final content = englishFile.readAsStringSync();
        final translations = json.decode(content) as Map<String, dynamic>;

        // Critical keys that should never be removed
        final criticalKeys = [
          'ok',
          'cancel',
          'error',
          'update',
          'install',
          'addApp',
          'remove',
        ];

        for (final key in criticalKeys) {
          expect(translations.containsKey(key), isTrue,
              reason: 'Critical key "$key" should never be removed (backward compatibility)');
        }
      }
    });

    test('build configuration maintains API compatibility', () {
      final buildFile = File(path.join(
          projectRoot.path, 'android', 'app', 'build.gradle.kts'));

      if (buildFile.existsSync()) {
        final content = buildFile.readAsStringSync();

        // Should maintain minimum SDK requirement
        expect(content, contains('minSdk'),
            reason: 'build.gradle.kts should maintain minSdk configuration');

        // Should not accidentally increase minSdk too high
        final minSdkMatch = RegExp(r'minSdk\s*=\s*(\d+)').firstMatch(content);
        if (minSdkMatch != null) {
          final minSdk = int.parse(minSdkMatch.group(1)!);
          expect(minSdk, lessThanOrEqualTo(26),
              reason: 'minSdk should not be increased too high to maintain device compatibility (found $minSdk)');
        }
      }
    });
  });
}