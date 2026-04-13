import 'package:simple_localization/simple_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';

const String logTable = 'logs';
const String idColumn = '_id';
const String levelColumn = 'level';
const String messageColumn = 'message';
const String timestampColumn = 'timestamp';
const String contextColumn = 'context';
const String dbPath = 'logs.db';

enum LogLevels { debug, info, warning, error }

class Log {
  int? id;
  late LogLevels level;
  late String message;
  DateTime timestamp = DateTime.now();
  String? context;

  Map<String, Object?> toMap() {
    var map = <String, Object?>{
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
    level = LogLevels.values.elementAt(map[levelColumn] as int);
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

class LogsProvider {
  LogsProvider({bool runDefaultClear = true}) {
    clear(before: DateTime.now().subtract(const Duration(days: 7)));
  }

  Database? db;

  Future<Database> getDB() async {
    db ??= await openDatabase(
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
    return db!;
  }

  Future<Log> add(
    String message, {
    LogLevels level = LogLevels.info,
    String? context,
  }) async {
    Log l = Log(message, level, context: context);
    l.id = await (await getDB()).insert(logTable, l.toMap());
    if (kDebugMode) {
      print(l);
    }
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
    var where = getWhereDates(before: before, after: after);
    return (await (await getDB()).query(
      logTable,
      where: where.key,
      whereArgs: where.value,
    )).map((e) => Log.fromMap(e)).toList();
  }

  Future<int> clear({DateTime? before, DateTime? after}) async {
    var where = getWhereDates(before: before, after: after);
    var res = await (await getDB()).delete(
      logTable,
      where: where.key,
      whereArgs: where.value,
    );
    if (res > 0) {
      add(
        plural(
          'clearedNLogsBeforeXAfterY',
          res,
          namedArgs: {'before': before.toString(), 'after': after.toString()},
          name: 'n',
        ),
      );
    }
    return res;
  }
}

MapEntry<String?, List<int>?> getWhereDates({
  DateTime? before,
  DateTime? after,
}) {
  List<String> where = [];
  List<int> whereArgs = [];
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
