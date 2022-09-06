import 'package:get/get.dart';
import 'package:my_demo/data/model/local_db.dart';
import 'package:sqflite/sqlite_api.dart';

MyDb mydb = MyDb();

class cartController extends GetxController {
  emptyMyCart() async {
    // await mydb.deletData();
  }
}
