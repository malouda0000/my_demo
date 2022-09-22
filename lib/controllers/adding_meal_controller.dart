import 'package:get/get.dart';
import 'package:my_demo/get_pages.dart';
import 'package:my_demo/model/models/local_db.dart';
import 'package:my_demo/model/models/meal_detials_class.dart';

class AddingMealController extends GetxController {
  MyDb sqldp = MyDb();

  addMealToCart(
      // int indexOfTheMealDetails,
      // theMealDetailsClass,
      // List<MealDetailsClass> theMealDetailsClass,
      MealDetailsClass mealDetailsClass) async {
    var meal = mealDetailsClass;
    // final List<MealDetailsClass> foodListItems;

    int response = await sqldp.insertData('''
INSERT INTO usercart ( `price` , `count` , `ratings` , 
`starscount` , `type` , `title` , 
`prefdiscription` , `discription` , `image` )
VALUES ( " ${meal.mealPrice}" , 
" ${meal.mealCount}" ," ${meal.mealRating}" ,
" ${meal.mealStarsCount}" , " ${meal.mealType}" ,
" ${meal.mealTitle}" ," ${meal.mealPrefDiscription}" ,
" ${meal.mealDiscription}" ," ${meal.mealImg}"  )

''');

    if (response > 0) {
      Get.isSnackbarOpen ? () {} : Get.snackbar('', ' added succesfly ');

      // Get.toNamed(AppRoute.errorMessageScreen);

    } else {
      Get.toNamed(AppRoute.errorMessageScreen);
    }
    // final int indexOfTheMealDetails;

    // Database? response  = await   MyDb().db  ;

    // Database database = await MyDb. ;
  }
}
