import 'package:get/get.dart';
import 'package:my_demo/core/constants/app_routes.dart';
import 'package:my_demo/get_pages.dart';
import '../main.dart';

class SingupController extends GetxController {
  singup() async {
    await mySharedPrefes!.setBool('logIn', true);

    Get.offAllNamed(AppRoute.homePage);
  }
}
