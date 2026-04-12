import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as path;
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/providers/logs_provider.dart';

/// YARA Scanner Configuration
class YARAConfig {
  final String rulesDirectory;
  final Duration updateInterval;
  final bool enableAutoUpdate;
  final List<String> ruleSources;

  const YARAConfig({
    required this.rulesDirectory,
    this.updateInterval = const Duration(hours: 24),
    this.enableAutoUpdate = true,
    this.ruleSources = const [
      'https://raw.githubusercontent.com/Yara-Rules/rules/0f93570194a80d2f2032869055808b0ddcdfb360/index.yar',
      'https://raw.githubusercontent.com/Yara-Rules/rules/0f93570194a80d2f2032869055808b0ddcdfb360/malware/MALW_YaraRule_APT.yar',
      'https://raw.githubusercontent.com/Yara-Rules/rules/0f93570194a80d2f2032869055808b0ddcdfb360/malware/MALW_YaraRule_Mobile.yar',
    ],
  });
}

/// YARA Rule Manifest
class YARARuleManifest {
  final Map<String, String> fileHashes;
  final String signature;
  final DateTime timestamp;
  final String version;

  YARARuleManifest({
    required this.fileHashes,
    required this.signature,
    required this.timestamp,
    required this.version,
  });

  factory YARARuleManifest.fromJson(Map<String, dynamic> json) {
    return YARARuleManifest(
      fileHashes: Map<String, String>.from(json['fileHashes'] ?? {}),
      signature: json['signature'] ?? '',
      timestamp: DateTime.parse(
        json['timestamp'] ?? DateTime.now().toIso8601String(),
      ),
      version: json['version'] ?? '1.0',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fileHashes': fileHashes,
      'signature': signature,
      'timestamp': timestamp.toIso8601String(),
      'version': version,
    };
  }
}

/// YARA Rule Verification Exception
class YARARuleVerificationError extends UpdatiumError {
  final String source;
  final String reason;

  YARARuleVerificationError({required this.source, required this.reason})
    : super('YARA rule verification failed for $source: $reason');
}

/// YARA Rule Update Exception
class YARARuleUpdateError extends UpdatiumError {
  final List<String> failedSources;
  final List<String> successfulSources;
  final String details;

  YARARuleUpdateError({
    required this.failedSources,
    required this.successfulSources,
    required this.details,
  }) : super(
         'Failed to update YARA rules from ${failedSources.length} sources: $details',
       );
}

/// YARA Scan Result
class YARAScanResult {
  final bool isInfected;
  final List<YARAMatch> matches;
  final String filePath;
  final DateTime scanTime;
  final String? error;

  const YARAScanResult({
    required this.isInfected,
    required this.matches,
    required this.filePath,
    required this.scanTime,
    this.error,
  });

  factory YARAScanResult.error(String filePath, String error) {
    return YARAScanResult(
      isInfected: false,
      matches: [],
      filePath: filePath,
      scanTime: DateTime.now(),
      error: error,
    );
  }
}

/// YARA Rule Match
class YARAMatch {
  final String ruleName;
  final String description;
  final String? author;
  final String? reference;
  final List<String> tags;
  final int threatLevel;

  const YARAMatch({
    required this.ruleName,
    required this.description,
    this.author,
    this.reference,
    this.tags = const [],
    this.threatLevel = 1,
  });

  Map<String, dynamic> toJson() {
    return {
      'ruleName': ruleName,
      'description': description,
      'author': author,
      'reference': reference,
      'tags': tags,
      'threatLevel': threatLevel,
    };
  }
}

/// YARA Rule
class YARARule {
  final String name;
  final String content;
  final String? author;
  final String? description;
  final List<String> tags;

  const YARARule({
    required this.name,
    required this.content,
    this.author,
    this.description,
    this.tags = const [],
  });

  factory YARARule.fromString(String ruleContent) {
    // For backward compatibility, if the content contains multiple rules,
    // return the first one
    final rules = YARARule.parseMultiple(ruleContent);
    return rules.isNotEmpty
        ? rules.first
        : YARARule(name: 'unknown', content: ruleContent);
  }

  /// Parse multiple YARA rules from a file content
  /// Returns a list of YARARule instances, one for each rule block found
  static List<YARARule> parseMultiple(String fileContent) {
    final rules = <YARARule>[];
    final lines = fileContent.split('\n');

    int currentRuleStart = -1;
    String? currentRuleName;
    final currentRuleTags = <String>[];
    final currentRuleLines = <String>[];

    for (int i = 0; i < lines.length; i++) {
      final line = lines[i];
      final trimmedLine = line.trim();

      // Detect rule block start with optional qualifier and tag list
      final rulePattern = RegExp(r'^\s*(?:private|global)?\s*rule\s+([^\s{:]+)(?:\s*:\s*([^{]+))?');
      final ruleMatch = rulePattern.firstMatch(trimmedLine);
      
      if (ruleMatch != null) {
        // If we were building a previous rule, finalize it first
        if (currentRuleStart != -1 && currentRuleName != null) {
          final ruleContent = currentRuleLines.join('\n');
          rules.add(_parseSingleRule(ruleContent, currentRuleName, currentRuleTags));
        }

        // Start new rule
        currentRuleStart = i;
        currentRuleName = ruleMatch.group(1);
        currentRuleTags.clear();
        
        // Extract tags from group 2 if present (standard tags after colon)
        final tagList = ruleMatch.group(2);
        if (tagList != null && tagList.trim().isNotEmpty) {
          currentRuleTags.addAll(tagList.trim().split(RegExp(r'\s+')));
        }
        
        currentRuleLines.clear();
        currentRuleLines.add(line);
      } else if (currentRuleStart != -1) {
        // We're inside a rule block
        currentRuleLines.add(line);

        // Check if this might be the end of a rule (next rule start or end of file)
        if (i == lines.length - 1) {
          // End of file - finalize the last rule
          final ruleContent = currentRuleLines.join('\n');
          rules.add(_parseSingleRule(ruleContent, currentRuleName!, currentRuleTags));
        }
      }
    }

    // Handle case where file has no explicit rule blocks (single rule without "rule " prefix)
    if (rules.isEmpty && fileContent.trim().isNotEmpty) {
      rules.add(_parseSingleRule(fileContent, null, []));
    }

    return rules;
  }

  /// Parse a single rule block with its content
  static YARARule _parseSingleRule(String ruleContent, String? fallbackName, List<String> initialTags) {
    final lines = ruleContent.split('\n');
    String? ruleName = fallbackName;
    String? author;
    String? description;
    final tags = List<String>.from(initialTags);

    for (final line in lines) {
      final trimmedLine = line.trim();
      // Use the same regex pattern to extract rule name and tags from header
      final rulePattern = RegExp(r'^\s*(?:private|global)?\s*rule\s+([^\s{:]+)(?:\s*:\s*([^{]+))?');
      final ruleMatch = rulePattern.firstMatch(trimmedLine);
      
      if (ruleMatch != null && ruleName == null) {
        ruleName = ruleMatch.group(1);
        // Extract tags from group 2 if present (standard tags after colon)
        final tagList = ruleMatch.group(2);
        if (tagList != null && tagList.trim().isNotEmpty) {
          tags.addAll(tagList.trim().split(RegExp(r'\s+')));
        }
      } else if (trimmedLine.startsWith('author = ')) {
        author = trimmedLine.substring(9).trim().replaceAll('"', '');
      } else if (trimmedLine.startsWith('description = ')) {
        description = trimmedLine.substring(13).trim().replaceAll('"', '');
      } else if (trimmedLine.startsWith('tags = ')) {
        final tagString = trimmedLine.substring(7).trim().replaceAll('"', '');
        tags.addAll(tagString.split(',').map((t) => t.trim()));
      }
    }

    return YARARule(
      name: ruleName ?? 'unknown',
      content: ruleContent,
      author: author,
      description: description,
      tags: tags,
    );
  }
}

/// Main YARA Scanner Class
class YARAScanner {
  YARAConfig config;
  final List<YARARule> _rules = [];
  Timer? _updateTimer;
  final LogsProvider _logs = LogsProvider();

  static YARAScanner? _instance;

  /// Get singleton instance
  static YARAScanner getInstance(YARAConfig config) {
    if (_instance == null) {
      _instance = YARAScanner._(config);
    } else {
      // Update config if needed (for timer changes)
      _instance!.config = config;
    }
    return _instance!;
  }

  /// Dispose singleton instance
  static void disposeInstance() {
    _instance?.dispose();
    _instance = null;
  }

  /// Private constructor for singleton
  YARAScanner._(this.config);

  /// Dispose resources and cancel timers
  void dispose() {
    _updateTimer?.cancel();
    _updateTimer = null;
  }

  /// Initialize the scanner
  Future<void> initialize() async {
    await _loadRules();

    // Check if any rules were actually loaded
    if (_rules.isEmpty) {
      // Trigger immediate update for fresh installs
      try {
        await updateRules();
        // Reload rules after update
        await _loadRules();
      } catch (e) {
        // Log error but continue with initialization
        _logs.add('Initial rule update failed: ${e.toString()}');
      }
    }

    // Cancel existing timer before starting new one
    _updateTimer?.cancel();

    if (config.enableAutoUpdate) {
      _startAutoUpdate();
    }
  }

  /// Load YARA rules from local directory
  Future<void> _loadRules() async {
    try {
      final rulesDir = Directory(config.rulesDirectory);
      if (!await rulesDir.exists()) {
        await rulesDir.create(recursive: true);
      }

      // Build new rules list to avoid concurrent modification
      final newRules = <YARARule>[];
      int loadedCount = 0;
      int errorCount = 0;

      await for (final entity in rulesDir.list()) {
        if (entity is File && entity.path.endsWith('.yar')) {
          try {
            final content = await entity.readAsString();
            final fileName = path.basename(entity.path);

            // Find the corresponding source URL for this file
            final sourceUrl = config.ruleSources.firstWhere(
              (url) => url.endsWith(fileName),
              orElse: () => '',
            );

            // Verify the rule file if we have a source URL
            if (sourceUrl.isNotEmpty) {
              try {
                await _verifyRuleFile(sourceUrl, content);
              } catch (e) {
                errorCount++;
                _logs.add(
                  'Rule verification failed: $fileName - ${e.toString()}',
                );
                continue; // Skip this file
              }
            }

            final rules = YARARule.parseMultiple(content);
            newRules.addAll(rules);
            loadedCount += rules.length;
          } catch (e) {
            errorCount++;
            // Log error without exposing sensitive file paths or rule content
            _logs.add(
              'Error loading YARA rule file: ${path.basename(entity.path)}',
            );
          }
        }
      }

      // Atomically replace the shared reference
      _rules.clear();
      _rules.addAll(newRules);
      _logs.add(
        'YARA rules loaded: $loadedCount successful, $errorCount failed',
      );
    } catch (e) {
      _logs.add('Error loading YARA rules: ${e.toString()}');
    }
  }

  /// Verify YARA rule file against manifest
  Future<bool> _verifyRuleFile(String source, String content) async {
    try {
      // Calculate SHA256 hash of the content
      final contentBytes = utf8.encode(content);
      final contentHash = sha256.convert(contentBytes).toString();

      // Try to fetch manifest for this source
      final manifestUrl = _getManifestUrl(source);
      if (manifestUrl == null) {
        _logs.add(
          'No manifest URL available for $source - skipping verification',
        );
        return true; // Allow if no manifest available
      }

      final manifestResponse = await http
          .get(Uri.parse(manifestUrl))
          .timeout(
            const Duration(seconds: 10),
            onTimeout: () =>
                throw TimeoutException('Manifest request timed out'),
          );

      if (manifestResponse.statusCode != 200) {
        throw YARARuleVerificationError(
          source: source,
          reason: 'Manifest HTTP ${manifestResponse.statusCode}',
        );
      }

      final manifestData = jsonDecode(manifestResponse.body);
      final manifest = YARARuleManifest.fromJson(manifestData);

      // Get the expected hash for this file
      final fileName = source.split('/').last;
      final expectedHash = manifest.fileHashes[fileName];

      if (expectedHash == null) {
        throw YARARuleVerificationError(
          source: source,
          reason: 'File not found in manifest',
        );
      }

      // Compare hashes
      if (contentHash != expectedHash) {
        throw YARARuleVerificationError(
          source: source,
          reason: 'Hash mismatch: expected $expectedHash, got $contentHash',
        );
      }

      // Verify signature (basic implementation - in production, use proper cryptographic verification)
      if (!_verifySignature(manifest, manifestData)) {
        throw YARARuleVerificationError(
          source: source,
          reason: 'Invalid manifest signature',
        );
      }

      _logs.add('Rule verification passed: $fileName');
      return true;
    } catch (e) {
      if (e is YARARuleVerificationError) {
        rethrow;
      }
      throw YARARuleVerificationError(
        source: source,
        reason: 'Verification failed: ${e.toString()}',
      );
    }
  }

  /// Get manifest URL for a given rule source
  String? _getManifestUrl(String source) {
    // For GitHub raw content, construct manifest URL
    if (source.contains('raw.githubusercontent.com')) {
      final uri = Uri.parse(source);
      final segments = uri.pathSegments;
      if (segments.length >= 4) {
        // Extract owner, repo, and commit from path like /Yara-Rules/rules/commit/file.yar
        final owner = segments[1];
        final repo = segments[2];
        final commit = segments[3];

        return 'https://raw.githubusercontent.com/$owner/$repo/$commit/yara_rules_manifest.json';
      }
    }
    return null;
  }

  /// Basic signature verification (placeholder - implement proper cryptographic verification)
  bool _verifySignature(
    YARARuleManifest manifest,
    Map<String, dynamic> manifestData,
  ) {
    // In a production environment, implement proper digital signature verification
    // using public key cryptography (e.g., RSA, Ed25519)
    // For now, we'll do a basic check that signature exists and is not empty
    return manifest.signature.isNotEmpty && manifest.signature.length > 10;
  }

  /// Update rules from remote sources
  Future<void> updateRules() async {
    final List<String> failedSources = [];
    final List<String> successfulSources = [];
    final List<String> errorDetails = [];

    for (final source in config.ruleSources) {
      try {
        final response = await http
            .get(Uri.parse(source))
            .timeout(
              const Duration(seconds: 30),
              onTimeout: () => throw TimeoutException('Request timed out'),
            );
        if (response.statusCode == 200) {
          final fileName = source.split('/').last;
          final localPath = path.join(config.rulesDirectory, fileName);

          // Verify the rule file before saving
          try {
            await _verifyRuleFile(source, response.body);

            final file = File(localPath);
            await file.writeAsString(response.body);
            successfulSources.add(source);
            // Log success without exposing full file paths
            _logs.add('YARA rule updated and verified: $fileName');
          } catch (e) {
            if (e is YARARuleVerificationError) {
              failedSources.add(source);
              errorDetails.add('$source: ${e.reason}');
              _logs.add(
                'YARA rule verification failed: ${path.basename(source)} - ${e.reason}',
              );
            } else {
              rethrow;
            }
          }
        } else {
          final error = 'HTTP ${response.statusCode}: ${response.reasonPhrase}';
          failedSources.add(source);
          errorDetails.add('$source: $error');
          // Log error without exposing full URLs
          _logs.add(
            'YARA rule update failed: ${path.basename(source)} - $error',
          );
        }
      } catch (e) {
        failedSources.add(source);
        errorDetails.add('$source: $e');
        // Log error without exposing full URLs or stack traces
        _logs.add(
          'YARA rule update failed: ${path.basename(source)} - ${e.toString()}',
        );
      }
    }

    // Try to load the rules that were successfully updated
    if (successfulSources.isNotEmpty) {
      try {
        await _loadRules();
      } catch (e) {
        // If loading fails, consider all updates as failed
        failedSources.addAll(successfulSources);
        successfulSources.clear();
        errorDetails.add('Failed to load updated rules: $e');
        _logs.add('YARA rules loading failed after update');
      }
    }

    // Log summary without exposing sensitive details
    _logs.add(
      'YARA rules update completed: ${successfulSources.length} successful, ${failedSources.length} failed',
    );

    // If there were any failures, throw an exception with actionable context
    if (failedSources.isNotEmpty) {
      throw YARARuleUpdateError(
        failedSources: failedSources,
        successfulSources: successfulSources,
        details: errorDetails.join('; '),
      );
    }
  }

  /// Start automatic rule updates
  void _startAutoUpdate() {
    _updateTimer?.cancel();
    _updateTimer = Timer.periodic(config.updateInterval, (_) async {
      try {
        await updateRules();
      } catch (e, stackTrace) {
        // Log the error to prevent unhandled async exceptions
        await _logs.add(
          'Auto update failed: ${e.toString()}',
          level: LogLevels.error,
          context: 'YARAScanner._startAutoUpdate',
        );

        // Also log structured information for security auditing
        await _logs.addStructured(
          operation: 'auto_update_rules',
          component: 'YARAScanner',
          errorCode: e.toString(),
          level: LogLevels.error,
        );

        // Optionally print in debug mode for immediate visibility
        if (kDebugMode) {
          print('YARA auto update error: $e');
          print('Stack trace: $stackTrace');
        }
      }
    });
  }

  /// Scan a file for malware
  Future<YARAScanResult> scanFile(String filePath) async {
    try {
      final file = File(filePath);
      final fileBytes = await file.readAsBytes();
      final matches = <YARAMatch>[];

      // Take snapshot of rules to avoid concurrent modifications
      final rules = List.from(_rules);
      for (final rule in rules) {
        final match = await _checkRule(rule, fileBytes);
        if (match != null) {
          matches.add(match);
        }
      }

      return YARAScanResult(
        isInfected: matches.isNotEmpty,
        matches: matches,
        filePath: filePath,
        scanTime: DateTime.now(),
      );
    } catch (e) {
      return YARAScanResult.error(filePath, 'Scan failed: $e');
    }
  }

  /// Check if a file matches a specific YARA rule
  Future<YARAMatch?> _checkRule(YARARule rule, List<int> fileBytes) async {
    final ruleLines = rule.content.split('\n');
    final stringPatterns = <String, List<int>>{};
    String? condition;
    bool requiresAll = false; // Default to "any of" logic

    // Parse strings and condition
    for (final line in ruleLines) {
      final trimmedLine = line.trim();

      if (trimmedLine.startsWith('condition:')) {
        condition = trimmedLine.substring(10).trim();
        // Parse condition to determine if it requires "all" or "any" strings
        requiresAll = _parseConditionLogic(condition);
      } else if (trimmedLine.contains('\$') && trimmedLine.contains(' = ')) {
        // Extract quoted strings: $name = "text"
        RegExpMatch? quotedMatch;

        // Try double quotes first
        final doubleQuotePattern = RegExp(r'\$(\w+)\s*=\s*"([^"]*)"');
        quotedMatch = doubleQuotePattern.firstMatch(trimmedLine);

        // If no double quote match, try single quotes
        if (quotedMatch == null) {
          final singleQuotePattern = RegExp(r'\$(\w+)\s*=\s*' + r"'([^\']*)'");
          quotedMatch = singleQuotePattern.firstMatch(trimmedLine);
        }

        if (quotedMatch != null &&
            quotedMatch.group(1) != null &&
            quotedMatch.group(2) != null) {
          final identifier = quotedMatch.group(1)!;
          final content = quotedMatch.group(2)!;
          if (content.isNotEmpty) {
            stringPatterns[identifier] = utf8.encode(content);
          }
          continue;
        }

        // Extract hex sequences: $name = {6A 40} or $name = 6A 40 68
        final hexPattern = RegExp(
          r'\$(\w+)\s*=\s*(?:{([^}]+)}|([0-9A-Fa-f\s]+))',
        );
        final hexMatch = hexPattern.firstMatch(trimmedLine);
        if (hexMatch != null && hexMatch.group(1) != null) {
          final identifier = hexMatch.group(1)!;
          final hexContent = hexMatch.group(2) ?? hexMatch.group(3) ?? '';
          final cleanHex = hexContent.replaceAll(RegExp(r'\s+'), '');
          final bytes = <int>[];

          for (int i = 0; i < cleanHex.length; i += 2) {
            if (i + 1 < cleanHex.length) {
              final byte = int.tryParse(
                cleanHex.substring(i, i + 2),
                radix: 16,
              );
              if (byte != null) {
                bytes.add(byte);
              }
            }
          }

          if (bytes.isNotEmpty) {
            stringPatterns[identifier] = bytes;
          }
        }
      }
    }

    // If no condition found, default to requiring at least one match
    if (condition == null) {
      requiresAll = false;
    }

    // Find which string identifiers match in the file
    final matchedIdentifiers = <String>[];
    for (final entry in stringPatterns.entries) {
      if (_containsBytes(fileBytes, entry.value)) {
        matchedIdentifiers.add(entry.key);
      }
    }

    // Evaluate condition based on matched identifiers
    bool ruleMatches = false;
    if (matchedIdentifiers.isEmpty) {
      ruleMatches = false;
    } else if (requiresAll) {
      // All defined strings must be found
      ruleMatches = matchedIdentifiers.length == stringPatterns.length;
    } else {
      // At least one string must be found
      ruleMatches = matchedIdentifiers.isNotEmpty;
    }

    if (ruleMatches) {
      return YARAMatch(
        ruleName: rule.name,
        description: rule.description ?? 'No description available',
        author: rule.author,
        tags: rule.tags,
        threatLevel: _calculateThreatLevel(rule.tags),
      );
    }

    return null;
  }

  /// Parse condition logic to determine if rule requires "all" or "any" strings
  bool _parseConditionLogic(String condition) {
    // Default to "any of" logic unless explicitly requiring all
    if (condition.isEmpty) return false;

    // Look for "all of" patterns
    if (condition.contains('all of') ||
        condition.contains('all of them') ||
        condition.contains('and')) {
      return true;
    }

    // Look for "any of" patterns
    if (condition.contains('any of') ||
        condition.contains('any of them') ||
        condition.contains('or')) {
      return false;
    }

    // If condition is just a single identifier like "$a", default to any (requires at least one)
    if (RegExp(r'^\$\w+$').hasMatch(condition.trim())) {
      return false;
    }

    // Default to requiring at least one match for complex conditions
    return false;
  }

  /// Helper method to check if byte sequence contains another byte sequence
  bool _containsBytes(List<int> data, List<int> pattern) {
    if (pattern.isEmpty) return false;
    if (data.length < pattern.length) return false;

    for (int i = 0; i <= data.length - pattern.length; i++) {
      bool match = true;
      for (int j = 0; j < pattern.length; j++) {
        if (data[i + j] != pattern[j]) {
          match = false;
          break;
        }
      }
      if (match) return true;
    }
    return false;
  }

  /// Calculate threat level based on rule tags
  int _calculateThreatLevel(List<String> tags) {
    if (tags.any((tag) => tag.toLowerCase().contains('trojan'))) return 5;
    if (tags.any((tag) => tag.toLowerCase().contains('malware'))) return 4;
    if (tags.any((tag) => tag.toLowerCase().contains('spyware'))) return 3;
    if (tags.any((tag) => tag.toLowerCase().contains('adware'))) return 2;
    return 1;
  }

  /// Get file hash for additional verification
  Future<Map<String, String>> getFileHashes(String filePath) async {
    try {
      final file = File(filePath);
      final bytes = await file.readAsBytes();

      final md5Hash = md5.convert(bytes);
      final sha1Hash = sha1.convert(bytes);
      final sha256Hash = sha256.convert(bytes);

      return {
        'md5': md5Hash.toString(),
        'sha1': sha1Hash.toString(),
        'sha256': sha256Hash.toString(),
      };
    } catch (e) {
      return {'error': 'Failed to calculate hashes: $e'};
    }
  }

  /// Global dispose method to cleanup singleton
  static void disposeGlobal() {
    _instance?.dispose();
    _instance = null;
  }
}
