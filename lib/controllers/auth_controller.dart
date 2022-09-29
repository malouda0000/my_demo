import 'package:get/get.dart';
import 'package:my_demo/get_pages.dart';
import '../main.dart';

class AuthController extends GetxController {
  signup() async {
    await mySharedPrefes!.setBool('logIn', true);
    print('loged innnnnnnnnnn');

    Get.offAllNamed(AppRoute.homePage);
  }

  signIn() async {
    await mySharedPrefes!.setBool('logIn', true);
    print('signedIn innnnnnnnnnn');

    Get.offAllNamed(AppRoute.homePage);
  }

  signOut() async {
    await mySharedPrefes!.setBool('logIn', false);
    Get.offAllNamed(
      AppRoute.signInScreen,
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
