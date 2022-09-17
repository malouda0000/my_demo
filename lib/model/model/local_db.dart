import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDb {
  static Database? _db;
  Future<Database?> get db async {
    if (_db == null) {
      _db = await initaldb();
      return _db;
    } else {
      return _db;
    }
  }

  initaldb() async {
    String defualtPath = await getDatabasesPath();
    // String? myDbName = 'fastfood.db';
    String path = join(defualtPath, 'fastfood.db');
    Database fastFood = await openDatabase(path,
        onCreate: _onCreate, version: 1, onUpgrade: _onUpgrade);
    return fastFood;
  }

  _onCreate(Database ff, int verson) async {
    // Batch mybatch;
    await ff.execute('''
CREATE TABLE "usercart" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "price" INTEGER NOT NULL,
  "count" INTEGER NOT NULL,
  "ratings" INTEGER NOT NULL,
  "starscount" INTEGER NOT NULL,
  "type" TEXT NOT NULL,
  "title" TEXT NOT NULL,
  "prefdiscription" TEXT NOT NULL,
  "discription" TEXT NOT NULL,
  "image" TEXT NOT NULL
)

''');
    print('usercart table created ========================');
  }

  _onUpgrade(Database db, int oldverson, int newverson) {
    print('onUpgrade ============================');
  }

  readData(sql) async {
    Database? mydb = await db;
    Future<List> response = mydb!.rawQuery(sql);
    return response;
  }

  insertData(sql) async {
    Database? mydb = await db;

    Future<int> response = mydb!.rawInsert(sql);
    return response;
  }

  deletData(sql) async {
    Database? mydb = await db;
    Future<int> response = mydb!.rawDelete(sql);
    return response;
  }

  updateData(sql) async {
    Database? mydb = await db;

    Future<int> response = mydb!.rawUpdate(sql);
    return response;
  }

  deleteMyDatabase() async {
    String defualtPath = await getDatabasesPath();
    // String? myDbName = 'fastfood.db';
    String path = join(defualtPath, 'fastfood.db');
    // var response = await deleteDatabase(path);
    await deleteDatabase(path);
  }
}
