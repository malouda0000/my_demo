import 'package:get/get.dart';
import 'package:my_demo/core/constants/app_routes.dart';
import 'package:my_demo/get_pages.dart';
import 'package:my_demo/main.dart';

class SingInController extends GetxController {
  singIn() async {
    await mySharedPrefes!.setBool('logIn', true);

    Get.offAllNamed(AppRoute.homePage);
  }
}
