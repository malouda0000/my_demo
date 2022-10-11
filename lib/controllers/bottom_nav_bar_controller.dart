import 'package:get/get.dart';
import 'package:my_demo/view/screens/cart%20screen/cart_screen.dart';
import 'package:my_demo/view/screens/home/home_screen.dart';
import 'package:my_demo/view/screens/meals%20from%20api/meals_from_api.dart';

import '../view/screens/about screen/about_screen.dart';
import '../view/screens/setting/setting_screen.dart';

List<Function> MainAppScreens = [
  () => HomeScreen(),
  () => MealsFromApi(),

  // () => FoodMenueScreen(),
  () => CartScreen(),
  () => SettingScreen(),
  () => AboutScreen(),
];

class BottomNvaBarController extends GetxController {
  int theCurrentIndex = 0;

  changeTap(index) async {
    theCurrentIndex = index;
    await Get.offAll(MainAppScreens[index]);

    //  index = theCurrentIndex;
    update();
  }
}
