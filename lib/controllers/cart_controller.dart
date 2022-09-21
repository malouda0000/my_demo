import 'package:get/get.dart';
import 'package:my_demo/model/models/local_db.dart';

MyDb mydb = MyDb();

class CartController extends GetxController {
  // var find = theListTileIndex;

  emptyMyCart() async {
    await mydb.deletData('''
DELETE FROM usercart
''');
    print('database is empty =========================');
    update();

    Get.isSnackbarOpen
        ? Get.snackbar('', 'sadStory!! please comeback soon ')
        : null;
  }

  orderMeals() async {
    await mydb.deletData('''
DELETE FROM usercart
''');
    print('database is empty =========================');
    update();
    Get.isSnackbarOpen ? Get.snackbar('order', 'meals are on way ') : null;
  }

  Future<List<Map>> readData() async {
    List<Map> response = await mydb.readData("SELECT * FROM usercart");

    // print('rereeeeeeeeeeeeeeeed data');
    // print('$response');
    // print('rereeeeeeeeeeeeeeeed data');
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
