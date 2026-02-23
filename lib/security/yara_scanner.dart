import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:path/path.dart' as path;
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:updatium/custom_errors.dart';
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
      'https://raw.githubusercontent.com/Yara-Rules/rules/master/index.yar',
      'https://raw.githubusercontent.com/Yara-Rules/rules/master/malware/MALW_YaraRule_APT.yar',
      'https://raw.githubusercontent.com/Yara-Rules/rules/master/malware/MALW_YaraRule_Mobile.yar',
    ],
  });
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
  }) : super('Failed to update YARA rules from ${failedSources.length} sources: $details');
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
    final lines = ruleContent.split('\n');
    String? ruleName;
    String? author;
    String? description;
    final tags = <String>[];

    for (final line in lines) {
      final trimmedLine = line.trim();
      if (trimmedLine.startsWith('rule ')) {
        ruleName = trimmedLine.substring(5).trim().split(' ').first;
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
      _instance!._config = config;
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

      _rules.clear();
      int loadedCount = 0;
      int errorCount = 0;
      
      await for (final entity in rulesDir.list()) {
        if (entity is File && entity.path.endsWith('.yar')) {
          try {
            final content = await entity.readAsString();
            final rule = YARARule.fromString(content);
            _rules.add(rule);
            loadedCount++;
          } catch (e) {
            errorCount++;
            // Log error without exposing sensitive file paths or rule content
            _logs.add('Error loading YARA rule file: ${path.basename(entity.path)}');
          }
        }
      }

      _logs.add('YARA rules loaded: $loadedCount successful, $errorCount failed');
    } catch (e) {
      _logs.add('Error loading YARA rules: ${e.toString()}');
    }
  }

  /// Update rules from remote sources
  Future<void> updateRules() async {
    final List<String> failedSources = [];
    final List<String> successfulSources = [];
    final List<String> errorDetails = [];

    for (final source in config.ruleSources) {
      try {
        final response = await http.get(Uri.parse(source));
        if (response.statusCode == 200) {
          final fileName = source.split('/').last;
          final localPath = path.join(config.rulesDirectory, fileName);
          
          final file = File(localPath);
          await file.writeAsString(response.body);
          successfulSources.add(source);
          // Log success without exposing full file paths
          _logs.add('YARA rule updated: $fileName');
        } else {
          final error = 'HTTP ${response.statusCode}: ${response.reasonPhrase}';
          failedSources.add(source);
          errorDetails.add('$source: $error');
          // Log error without exposing full URLs
          _logs.add('YARA rule update failed: ${path.basename(source)} - $error');
        }
      } catch (e) {
        failedSources.add(source);
        errorDetails.add('$source: $e');
        // Log error without exposing full URLs or stack traces
        _logs.add('YARA rule update failed: ${path.basename(source)} - ${e.toString()}');
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
    _logs.add('YARA rules update completed: ${successfulSources.length} successful, ${failedSources.length} failed');
    
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
    _updateTimer = Timer.periodic(config.updateInterval, (_) {
      updateRules();
    });
  }

  /// Scan a file for malware
  Future<YARAScanResult> scanFile(String filePath) async {
    try {
      final file = File(filePath);
      final fileBytes = await file.readAsBytes();
      final matches = <YARAMatch>[];

      for (final rule in _rules) {
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
  Future<YARAMatch?> _checkRule(
    YARARule rule,
    List<int> fileBytes,
  ) async {
    // Simple string matching (basic implementation)
    // In a real implementation, you'd want to use proper YARA parsing
    final ruleLines = rule.content.split('\n');
    final strings = <String>[];

    for (final line in ruleLines) {
      final trimmedLine = line.trim();
      if (trimmedLine.startsWith('condition:')) {
        // condition = trimmedLine.substring(10).trim(); // Not used in basic implementation
      } else if (trimmedLine.contains('\$') && trimmedLine.contains(' = ')) {
        final stringMatch = RegExp(r'\$(\w+)\s*=\s*{([^}]+)}').firstMatch(trimmedLine);
        if (stringMatch != null && stringMatch.group(1) != null) {
          strings.add(stringMatch.group(1)!);
        }
      }
    }

    // Check if any strings match in binary data
    for (final string in strings) {
      final stringPattern = RegExp(r'\$' + string + r'\s*=\s*{([^}]+)}');
      final stringMatch = stringPattern.firstMatch(rule.content);
      if (stringMatch != null) {
        final searchString = stringMatch.group(1)!.trim().replaceAll('"', '');
        
        // Convert search string to bytes for binary comparison
        List<int> searchBytes;
        try {
          searchBytes = utf8.encode(searchString);
        } catch (e) {
          // Handle hex strings like {6A 40 68 00 30 00 00}
          final hexString = searchString.replaceAll(RegExp(r'[{} ]'), '');
          searchBytes = [];
          for (int i = 0; i < hexString.length; i += 2) {
            if (i + 1 < hexString.length) {
              final byte = int.tryParse(hexString.substring(i, i + 2), radix: 16);
              if (byte != null) {
                searchBytes.add(byte);
              }
            }
          }
        }

        // Search for bytes in the file
        if (_containsBytes(fileBytes, searchBytes)) {
          return YARAMatch(
            ruleName: rule.name,
            description: rule.description ?? 'No description available',
            author: rule.author,
            tags: rule.tags,
            threatLevel: _calculateThreatLevel(rule.tags),
          );
        }
      }
    }

    return null;
  }

  /// Helper method to check if byte sequence contains another byte sequence
  bool _containsBytes(List<int> data, List<int> pattern) {
    if (pattern.isEmpty) return true;
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
      return {
        'error': 'Failed to calculate hashes: $e',
      };
    }
  }

  /// Dispose of the scanner
  void dispose() {
    _updateTimer?.cancel();
  }

  /// Global dispose method to cleanup singleton
  static void disposeGlobal() {
    _instance?.dispose();
    _instance = null;
  }
}
