import 'package:get/get.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/food_menue_screen.dart';

import '../view/screens/about screen/about_screen.dart';
import '../view/screens/home/my_home_page.dart';
import '../view/screens/setting/setting_screen.dart';

List<Function> MainAppScreens = [
  () => MyHomePage(),
  () => FoodMenueScreen(),
  () => SettingScreen(),
  () => AboutScreen(),
];

class BottomNvaBarController extends GetxController {
  int theCurrentIndex = 0;

  changeTap(index) async {
    theCurrentIndex = await index;
    await Get.to(MainAppScreens[index]);

    //  index = theCurrentIndex;
    update();
  }
}
