import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' as path;

void main() {
  group('Translation Files Validation', () {
    late Directory translationsDir;
    late Map<String, dynamic> englishTranslations;
    late List<FileSystemEntity> translationFiles;

    setUpAll(() async {
      // Get the project root directory
      final testDir = Directory.current;
      final projectRoot = testDir.path.endsWith('test')
          ? testDir.parent
          : testDir;

      translationsDir = Directory(
        path.join(projectRoot.path, 'assets', 'translations'),
      );

      // Load English translations as reference
      final englishFile = File(path.join(translationsDir.path, 'en.json'));
      final englishContent = await englishFile.readAsString();
      englishTranslations = json.decode(englishContent) as Map<String, dynamic>;

      // Get all translation files
      translationFiles = translationsDir
          .listSync()
          .where((file) => file.path.endsWith('.json'))
          .toList();
    });

    test('translations directory exists and contains files', () {
      expect(
        translationsDir.existsSync(),
        isTrue,
        reason: 'Translations directory should exist at assets/translations',
      );
      expect(
        translationFiles.isNotEmpty,
        isTrue,
        reason: 'Translations directory should contain JSON files',
      );
    });

    test('all translation files are valid JSON', () {
      for (final file in translationFiles) {
        final content = File(file.path).readAsStringSync();
        expect(
          () => json.decode(content),
          returnsNormally,
          reason: 'File ${path.basename(file.path)} should be valid JSON',
        );
      }
    });

    test('all translation files have required base keys', () {
      // Define essential keys that should exist in all translations
      final requiredKeys = [
        'ok',
        'cancel',
        'yes',
        'no',
        'error',
        'warning',
        'add',
        'remove',
        'update',
        'install',
      ];

      for (final file in translationFiles) {
        final content = File(file.path).readAsStringSync();
        final translations = json.decode(content) as Map<String, dynamic>;
        final fileName = path.basename(file.path);

        for (final key in requiredKeys) {
          expect(
            translations.containsKey(key),
            isTrue,
            reason: 'File $fileName should contain required key "$key"',
          );
        }
      }
    });

    test('translation files use consistent placeholder format', () {
      // Check that placeholders use {} format consistently
      final placeholderPattern = RegExp(r'\{[^}]*\}');

      for (final file in translationFiles) {
        final content = File(file.path).readAsStringSync();
        final translations = json.decode(content) as Map<String, dynamic>;
        final fileName = path.basename(file.path);

        void checkPlaceholders(dynamic value, String keyPath) {
          if (value is String) {
            final allMatches = placeholderPattern.allMatches(value);
            for (final match in allMatches) {
              final placeholder = match.group(0)!;
              expect(
                placeholder,
                matches(RegExp(r'^\{[a-zA-Z0-9_]*\}$')),
                reason:
                    'In $fileName at "$keyPath": placeholder $placeholder should use valid format',
              );
            }
          } else if (value is Map) {
            value.forEach((k, v) => checkPlaceholders(v, '$keyPath.$k'));
          }
        }

        translations.forEach((key, value) => checkPlaceholders(value, key));
      }
    });

    test('all translations have similar structure to English', () {
      // Check that all translation files have similar keys to English
      for (final file in translationFiles) {
        final fileName = path.basename(file.path);
        if (fileName == 'en.json') continue; // Skip English itself

        final content = File(file.path).readAsStringSync();
        final translations = json.decode(content) as Map<String, dynamic>;

        // Check if all English keys exist in this translation
        for (final englishKey in englishTranslations.keys) {
          expect(
            translations.containsKey(englishKey),
            isTrue,
            reason:
                'File $fileName is missing key "$englishKey" that exists in en.json',
          );
        }

        // Warn about extra keys (not a failure, might be intentional)
        for (final key in translations.keys) {
          if (!englishTranslations.containsKey(key)) {
          }
        }
      }
    });

    test('translation values are not empty strings', () {
      for (final file in translationFiles) {
        final content = File(file.path).readAsStringSync();
        final translations = json.decode(content) as Map<String, dynamic>;
        final fileName = path.basename(file.path);

        void checkEmpty(dynamic value, String keyPath) {
          if (value is String) {
            expect(
              value.trim(),
              isNotEmpty,
              reason: 'In $fileName at "$keyPath": value should not be empty',
            );
          } else if (value is Map) {
            value.forEach((k, v) => checkEmpty(v, '$keyPath.$k'));
          }
        }

        translations.forEach((key, value) => checkEmpty(value, key));
      }
    });

    test('specific changed translation files exist and are valid', () {
      final changedFiles = [
        'ar.json',
        'bs.json',
        'ca.json',
        'cs.json',
        'da.json',
        'de.json',
        'en-EO.json',
        'en.json',
        'es.json',
        'et.json',
        'fa.json',
        'fr.json',
        'gl.json',
        'he.json',
        'hu.json',
        'id.json',
        'it.json',
      ];

      for (final fileName in changedFiles) {
        final filePath = path.join(translationsDir.path, fileName);
        final file = File(filePath);

        expect(
          file.existsSync(),
          isTrue,
          reason: 'Translation file $fileName should exist',
        );

        if (file.existsSync()) {
          final content = file.readAsStringSync();
          expect(
            () => json.decode(content),
            returnsNormally,
            reason: 'Translation file $fileName should be valid JSON',
          );

          final translations = json.decode(content) as Map<String, dynamic>;
          expect(
            translations.isNotEmpty,
            isTrue,
            reason: 'Translation file $fileName should not be empty',
          );
        }
      }
    });

    test('pluralization keys have consistent structure', () {
      // Check that pluralization follows consistent patterns
      final pluralKeys = ['apps', 'url', 'minute', 'hour', 'day', 'apk'];

      for (final file in translationFiles) {
        final content = File(file.path).readAsStringSync();
        final translations = json.decode(content) as Map<String, dynamic>;
        final fileName = path.basename(file.path);

        for (final key in pluralKeys) {
          if (translations.containsKey(key) && translations[key] is Map) {
            final pluralForms = translations[key] as Map<String, dynamic>;
            // Should have at least 'one' and 'other' forms
            expect(
              pluralForms.containsKey('other'),
              isTrue,
              reason:
                  'In $fileName: plural key "$key" should have "other" form',
            );
          }
        }
      }
    });

    test('no duplicate keys within a single translation file', () {
      // This is inherently checked by JSON parsing, but we verify explicitly
      for (final file in translationFiles) {
        final content = File(file.path).readAsStringSync();
        final fileName = path.basename(file.path);

        // Count occurrences of each key pattern
        final keyPattern = RegExp(r'"([^"]+)"\s*:');
        final matches = keyPattern.allMatches(content);
        final keyCounts = <String, int>{};

        for (final match in matches) {
          final key = match.group(1)!;
          keyCounts[key] = (keyCounts[key] ?? 0) + 1;
        }

        for (final entry in keyCounts.entries) {
          expect(
            entry.value,
            equals(1),
            reason:
                'In $fileName: key "${entry.key}" appears ${entry.value} times, should appear only once',
          );
        }
      }
    });

    test('security disclaimer translations are present', () {
      // Verify important security disclaimer keys exist
      final securityKeys = [
        'securityDisclaimerTitle',
        'license',
        'licenseText',
        'disclaimer',
        'disclaimerText',
        'privacy',
        'privacyText',
        'acceptAndContinue',
        'decline',
      ];

      for (final file in translationFiles) {
        final content = File(file.path).readAsStringSync();
        final translations = json.decode(content) as Map<String, dynamic>;
        final fileName = path.basename(file.path);

        for (final key in securityKeys) {
          expect(
            translations.containsKey(key),
            isTrue,
            reason: 'File $fileName should contain security key "$key"',
          );
        }
      }
    });
  });

  group('Translation File Encoding', () {
    late Directory translationsDir;

    setUpAll(() {
      final testDir = Directory.current;
      final projectRoot = testDir.path.endsWith('test')
          ? testDir.parent
          : testDir;
      translationsDir = Directory(
        path.join(projectRoot.path, 'assets', 'translations'),
      );
    });

    test('all translation files use UTF-8 encoding', () {
      final translationFiles = translationsDir
          .listSync()
          .where((file) => file.path.endsWith('.json'))
          .toList();

      for (final file in translationFiles) {
        final bytes = File(file.path).readAsBytesSync();
        final fileName = path.basename(file.path);

        // Try to decode as UTF-8, should not throw
        expect(
          () => utf8.decode(bytes),
          returnsNormally,
          reason: 'File $fileName should be valid UTF-8',
        );
      }
    });
  });

  group('Translation Consistency Tests', () {
    late Directory translationsDir;
    late Map<String, dynamic> englishTranslations;

    setUpAll(() async {
      final testDir = Directory.current;
      final projectRoot = testDir.path.endsWith('test')
          ? testDir.parent
          : testDir;
      translationsDir = Directory(
        path.join(projectRoot.path, 'assets', 'translations'),
      );

      final englishFile = File(path.join(translationsDir.path, 'en.json'));
      final englishContent = await englishFile.readAsString();
      englishTranslations = json.decode(englishContent) as Map<String, dynamic>;
    });

    test('placeholder counts match between English and translations', () {
      final translationFiles = translationsDir
          .listSync()
          .where((file) => file.path.endsWith('.json'))
          .toList();

      for (final file in translationFiles) {
        final fileName = path.basename(file.path);
        if (fileName == 'en.json') continue;

        final content = File(file.path).readAsStringSync();
        final translations = json.decode(content) as Map<String, dynamic>;

        for (final key in englishTranslations.keys) {
          if (!translations.containsKey(key)) continue;

          final enValue = englishTranslations[key];
          final transValue = translations[key];

          if (enValue is String && transValue is String) {
            final enPlaceholders = RegExp(
              r'\{[^}]*\}',
            ).allMatches(enValue).length;
            final transPlaceholders = RegExp(
              r'\{[^}]*\}',
            ).allMatches(transValue).length;

            expect(
              transPlaceholders,
              equals(enPlaceholders),
              reason:
                  'In $fileName at key "$key": expected $enPlaceholders placeholders, found $transPlaceholders',
            );
          }
        }
      }
    });
  });
}
