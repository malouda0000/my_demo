import 'package:get/get.dart';
import 'package:my_demo/get_pages.dart';
import 'package:my_demo/main.dart';

class SingInController extends GetxController {
  singIn() async {
    await mySharedPrefes!.setBool('logIn', true);

    Get.offAllNamed(AppRoute.homePage);
  }
}
