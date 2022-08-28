import 'package:my_demo/screens/about%20screen/about_screen.dart';
import 'package:my_demo/screens/detials%20screen/detials_screen.dart';
import 'package:my_demo/screens/home/my_home_page.dart';
import 'package:my_demo/screens/setting/setting_screen.dart';
import 'package:get/get.dart';

List<Function> MainAppScreens = [
  () => MyHomePage(),
  () => DetialsScreen(),
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
