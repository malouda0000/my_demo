import 'package:get/get.dart';
import 'package:my_demo/get_pages.dart';
import '../main.dart';

class AuthController extends GetxController {
  singup() async {
    await mySharedPrefes!.setBool('logIn', true);
    print('loged innnnnnnnnnn');

    Get.offAllNamed(AppRoute.homePage);
  }

  singIn() async {
    await mySharedPrefes!.setBool('logIn', true);
    print('loged innnnnnnnnnn');

    Get.offAllNamed(AppRoute.homePage);
  }

  singOut() async {
    await mySharedPrefes!.setBool('logIn', false);
    Get.offAllNamed(
      AppRoute.singInScreen,
    );
  }
/* no more need for the initalMiddelWare() Function */
  // initalMiddelWare() async {
  //   var logValue = await mySharedPrefes!.getBool('logIn');
  //   // var logValue = MyInitalBindings().dependencies().
  //   print(logValue);
  //   return logValue;
  // }

/* no more need for the firstTimeMiddelWare() Function */
  // firstTimeMiddelWare() async {
  //   var firstAppInit = await mySharedPrefes!.getString('firstAppInit');
  //   print(firstAppInit);
  //   return firstAppInit;
  // }
}
