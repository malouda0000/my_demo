import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:my_demo/main.dart';
import 'package:my_demo/screens/home/my_home_page.dart';

class SingInController extends GetxController {
  singIn() async {
    mySharedPrefes!.setBool('logIn', true);

    Get.offAll(MyHomePage());
  }
}
