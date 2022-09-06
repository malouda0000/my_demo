import 'package:get/get.dart';
import 'package:my_demo/view/screens/cart%20screen/cart_screen.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/food_menue_screen.dart';

import '../view/screens/about screen/about_screen.dart';
import '../view/screens/home/my_home_page.dart';
import '../view/screens/setting/setting_screen.dart';

List<Function> MainAppScreens = [
  () => MyHomePage(),
  () => FoodMenueScreen(),
  () => TempCartScreen(),
  () => SettingScreen(),
  () => AboutScreen(),
];

class BottomNvaBarController extends GetxController {
  int theCurrentIndex = 0;

  changeTap(index) {
    theCurrentIndex = index;
    Get.offAll(MainAppScreens[index]);

    //  index = theCurrentIndex;
    update();
  }
}
