import 'dart:io';

import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._instance();

  DatabaseHelper._instance();

  Future<void> init() async {
    _appDocumentDirectory = await path_provider.getApplicationDocumentsDirectory();
  }

  late final Directory _appDocumentDirectory;
  late String _pathDB;
  late Database _db;
}