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

  singOut() async {
    await mySharedPrefes!.setBool('logIn', false);
    Get.offAllNamed(
      AppRoute.singInScreen,
    );
  }

  initalMiddelWare() async {
    var logValue = await mySharedPrefes!.getBool('logIn');
    // var logValue = MyInitalBindings().dependencies().
    print(logValue);
    return logValue;
  }
}
