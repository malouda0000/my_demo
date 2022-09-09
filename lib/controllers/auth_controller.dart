import 'package:get/get.dart';
import 'package:my_demo/get_pages.dart';
import '../main.dart';

class AuthController extends GetxController {
  singup() async {
    await mySharedPrefes!.setBool('logIn', true);

    Get.offAllNamed(AppRoute.homePage);
  }

  singIn() async {
    await mySharedPrefes!.setBool('logIn', true);

    Get.offAllNamed(AppRoute.homePage);
  }
}
