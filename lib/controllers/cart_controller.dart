import 'package:get/get.dart';
import 'package:my_demo/data/model/local_db.dart';

MyDb mydb = MyDb();

class CartController extends GetxController {
  // var find = theListTileIndex;
  Future<List<Map>> readData() async {
    List<Map> response = await mydb.readData("SELECT * FROM usercart");

    return response;
  }

  emptyMyCart() async {
    // await mydb.deletData();
  }

  deletItem(int id) async {
    await mydb.deletData('''

DELETE FROM 'usercart' WHERE id = $id

''');
    update();
  }
}
