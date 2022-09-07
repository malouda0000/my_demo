import 'package:get/get.dart';
import 'package:get/get_navigation/src/dialog/dialog_route.dart';
import 'package:my_demo/data/model/local_db.dart';

MyDb mydb = MyDb();

class CartController extends GetxController {
  // var find = theListTileIndex;

  emptyMyCart() async {
    // await mydb.deleteMyDatabase();
    // int response = await mydb.deleteMyDatabase();

    /////////////
    ///

    // if (response > (0)) {
    //   update();

    //   return true;
    // } else {
    //   return false;
    // }
    // print('database deleted =========================');

    await mydb.deletData('''
DELETE FROM usercart
''');
    print('database is empty =========================');
    update();
  }

  Future<List<Map>> readData() async {
    List<Map> response = await mydb.readData("SELECT * FROM usercart");

    print('rereeeeeeeeeeeeeeeed data');

    print('$response');
    print('rereeeeeeeeeeeeeeeed data');
    return response;
  }

  deletItem(int id) async {
    await mydb.deletData('''

DELETE FROM 'usercart' WHERE id = $id

''');

    print('delete iiiitem ==========================');
    update();
  }

  selectAssetsImage(int id) async {
    await mydb.deletData('''

SELECT FROM 'usercart' WHERE id = $id

''');
    update();
  }
}
