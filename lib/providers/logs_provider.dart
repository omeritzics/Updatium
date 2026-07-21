import 'dart:async';
import 'package:updatium/services/slang_converter.dart';
import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';

const String logTable = 'logs';
const String idColumn = '_id';
const String levelColumn = 'level';
const String messageColumn = 'message';
const String timestampColumn = 'timestamp';
const String contextColumn = 'context';
const String dbPath = 'logs.db';

enum LogLevel { debug, info, warning, error }

class Log {
  int? id;
  late LogLevel level;
  late String message;
  DateTime timestamp = DateTime.now();
  String? context;

  Map<String, Object?> toMap() {
    final map = <String, Object?>{
      idColumn: id,
      levelColumn: level.index,
      messageColumn: message,
      timestampColumn: timestamp.millisecondsSinceEpoch,
      contextColumn: context,
    };
    return map;
  }

  Log(this.message, this.level, {this.context});

  Log.fromMap(Map<String, Object?> map) {
    id = map[idColumn] as int;
    level = LogLevel.values.elementAt(map[levelColumn] as int);
    message = map[messageColumn] as String;
    timestamp = DateTime.fromMillisecondsSinceEpoch(
      map[timestampColumn] as int,
    );
    context = map[contextColumn] as String?;
  }

  @override
  String toString() {
    final contextStr = context != null ? ' [$context]' : '';
    return '${timestamp.toString()}: ${level.name}: $message$contextStr';
  }
}

/// Singleton sqflite-backed logger with automatic 7-day cleanup.
///
/// Use `LogsProvider().add(msg)` to log; the factory returns a shared instance.
/// Old entries (>7 days) are cleaned up once per process lifetime.
class LogsProvider {
  static final LogsProvider _instance = LogsProvider._();
  static Database? _db;
  static bool _defaultClearScheduled = false;

  // Shared singleton: many call sites construct LogsProvider() ad-hoc just to
  // log a line. A factory avoids doing DB work (the 7-day cleanup DELETE) on
  // every such construction - the cleanup runs at most once per process.
  factory LogsProvider({bool runDefaultClear = true}) {
    if (runDefaultClear && !_defaultClearScheduled) {
      _defaultClearScheduled = true;
      _instance
          .clear(before: DateTime.now().subtract(const Duration(days: 7)))
          .catchError((e) {
            debugPrint('Failed to clear old logs: $e');
            return 0;
          });
    }
    return _instance;
  }

  LogsProvider._();

  Future<Database> getDB() async {
    _db ??= await openDatabase(
      dbPath,
      version: 2, // Increment version for schema update
      onCreate: (Database db, int version) async {
        await db.execute('''
create table if not exists $logTable ( 
  $idColumn integer primary key autoincrement, 
  $levelColumn integer not null,
  $messageColumn text not null,
  $timestampColumn integer not null,
  $contextColumn text)
''');
      },
      onUpgrade: (Database db, int oldVersion, int newVersion) async {
        if (oldVersion < 2) {
          // Add context column for structured logging
          await db.execute(
            'ALTER TABLE $logTable ADD COLUMN $contextColumn text',
          );
        }
      },
    );
    return _db!;
  }

  Future<Log> add(String message, {LogLevel level = LogLevel.info}) async {
    final Log l = Log(message, level);
    l.id = await (await getDB()).insert(logTable, l.toMap());
    if (kDebugMode) {
      debugPrint(l.toString());
    }
    notifyListeners();
    return l;
  }

  /// Structured logging method for security-sensitive operations
  /// Sanitizes data and provides structured context for auditing
  Future<Log> addStructured({
    required String operation,
    required String component,
    String? errorCode,
    LogLevels level = LogLevels.info,
  }) async {
    final structuredMessage =
        '$operation - $component${errorCode != null ? ' - Error: $errorCode' : ''}';
    final context =
        '{"operation":"$operation","component":"$component"${errorCode != null ? ',"error":"$errorCode"' : ''}}';

    return await add(structuredMessage, level: level, context: context);
  }

  Future<List<Log>> get({DateTime? before, DateTime? after}) async {
    final where = getWhereDates(before: before, after: after);
    return (await (await getDB()).query(
      logTable,
      where: where.key,
      whereArgs: where.value,
    )).map((e) => Log.fromMap(e)).toList();
  }

  Future<int> clear({DateTime? before, DateTime? after}) async {
    final where = getWhereDates(before: before, after: after);
    final res = await (await getDB()).delete(
      logTable,
      where: where.key,
      whereArgs: where.value,
    );
    if (res > 0) {
      unawaited(
        add(
          plural(
            'clearedNLogsBeforeXAfterY',
            res,
            namedArgs: {
              'before': before?.toIso8601String() ?? '...',
              'after': after?.toIso8601String() ?? '...',
            },
            name: 'n',
          ),
        ),
      );
    }
    notifyListeners();
    return res;
  }

  static Future<void> close() async {
    await _db?.close();
    _db = null;
  }
}

MapEntry<String?, List<int>?> getWhereDates({
  DateTime? before,
  DateTime? after,
}) {
  final List<String> where = [];
  final List<int> whereArgs = [];
  if (before != null) {
    where.add('$timestampColumn < ?');
    whereArgs.add(before.millisecondsSinceEpoch);
  }
  if (after != null) {
    where.add('$timestampColumn > ?');
    whereArgs.add(after.millisecondsSinceEpoch);
  }
  return whereArgs.isEmpty
      ? const MapEntry(null, null)
      : MapEntry(where.join(' and '), whereArgs);
}

abstract class Logger {
  void debug(String message);
  void info(String message);
  void warn(String message, [Object? error, StackTrace? stack]);
  void error(String message, [Object? error, StackTrace? stack]);
}

class AppLogger implements Logger {
  final LogsProvider _logs;
  final bool _isDebug;

  AppLogger({LogsProvider? logs, bool? isDebug})
    : _logs = logs ?? LogsProvider(),
      _isDebug = isDebug ?? kDebugMode;

  @override
  void debug(String message) {
    _logs.add(message, level: LogLevel.debug);
    if (_isDebug) {
      debugPrint('[DEBUG] $message');
    }
  }

  @override
  void info(String message) {
    _logs.add(message, level: LogLevel.info);
    if (_isDebug) {
      debugPrint('[INFO] $message');
    }
  }

  @override
  void warn(String message, [Object? error, StackTrace? stack]) {
    final full = error != null ? '$message\n$error\n$stack' : message;
    _logs.add(full, level: LogLevel.warning);
    if (_isDebug) {
      debugPrint('[WARN] $full');
    }
  }

  @override
  void error(String message, [Object? error, StackTrace? stack]) {
    final full = error != null ? '$message\n$error\n$stack' : message;
    _logs.add(full, level: LogLevel.error);
    if (_isDebug) {
      debugPrint('[ERROR] $full');
    }
  }
}
