import 'package:get/get.dart';
import 'package:my_demo/main.dart';

import '../view/screens/home/my_home_page.dart';

class SingInController extends GetxController {
  singIn() async {
    await mySharedPrefes!.setBool('logIn', true);

    Get.offAll(MyHomePage());
  }
}
