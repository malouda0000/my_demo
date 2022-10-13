import 'package:get/get.dart';
import 'package:my_demo/model/models/local_db.dart';
import 'package:my_demo/model/models/meal_detials_class.dart';

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

  Future<List<MealDetailsClass>> readData() async {
    List<Map> response = await mydb.readData("SELECT * FROM usercart");

    return List.generate(response.length, (i) {
      return MealDetailsClass(
        mealTitle: response[i]['title'],
        mealPrefDiscription: response[i]['prefdiscription'],
        mealDiscription: response[i]['discription'],
        mealType: response[i]['type'],
        mealImg: response[i]['image'],
        //
        //
        mealPrice: response[i]['price'],
        mealCount: response[i]['count'],
        mealRating: response[i]['ratings'],
        mealStarsCount: response[i]['starscount'],
      );
    });
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

  doesUserCartEmpty() async {
    List<Map> response = await mydb.readData("SELECT * FROM usercart");
    return response.length == 0 ? true : false;
  }
}
