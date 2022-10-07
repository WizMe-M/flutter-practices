import 'dart:async';
import 'dart:io';

import 'package:practice_2/common/database_request.dart';
import 'package:practice_2/data/model/role.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:path/path.dart' as path;

class DatabaseHelper {
  static const dbName = 'bookstore.db';
  static final instance = DatabaseHelper._instance();

  late final Directory _appDocumentDirectory;
  late String _pathDB;
  late Database _db;

  DatabaseHelper._instance();

  Future<void> init() async {
    _appDocumentDirectory = await path_provider.getApplicationDocumentsDirectory();

    _pathDB = path.join(_appDocumentDirectory.path, dbName);

    if (Platform.isAndroid || Platform.isIOS || Platform.isFuchsia) {
      _db = await openDatabase(
        _pathDB,
        singleInstance: true,
        onCreate: (db, version) async => await onCreateDatabase(db),
        onUpgrade: (db, oldVersion, newVersion) async => await onUpdateDatabase(db),
      );
    } else {}
  }

  Future<void> onCreateDatabase(Database db) async => await createTables(db);

  Future<void> onUpdateDatabase(Database db) async {
    var tables = await db.rawQuery('SELECT name from splite_master;');
    for (var table in DatabaseRequest.tables.reversed) {
      if (tables.where((element) => element['name'] == table).isNotEmpty) {
        await _db.execute(DatabaseRequest.deleteTableQuery(table));
      }
    }
    await createTables(db);
  }

  Future<void> onDropDatabase() async {
    _db.close();
    if (Platform.isAndroid || Platform.isIOS || Platform.isFuchsia) {
      deleteDatabase(_pathDB);
    }
    else {}
  }

  Future<void> createTables(Database db) async {
    for (var table in DatabaseRequest.createTablesQueries) {
      await db.execute(table);
    }

    await onInitTables(db);
  }

  Future<void> onInitTables(Database db) async {
    try {
      db.insert(
          DatabaseRequest.tableRole, Role(name: 'Администратор').toJson());
      db.insert(DatabaseRequest.tableRole, Role(name: 'Пользователь').toJson());
    } on DatabaseException catch (e) {
      print('Таблица ролей отсутствует!!!');
      print(e);
    }
  }
}
