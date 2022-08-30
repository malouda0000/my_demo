import 'package:get/get.dart';

import '../main.dart';
import '../view/screens/home/my_home_page.dart';

class SingupController extends GetxController {
  singup() async {
    await mySharedPrefes!.setBool('logIn', true);

    Get.offAll(MyHomePage());
  }
}
