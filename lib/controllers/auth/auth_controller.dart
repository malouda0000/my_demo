import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:my_demo/get_pages.dart';
import '../../main.dart';

class AuthController extends GetxController {
  fackSignOut() async {
    await mySharedPrefes!.setBool('logIn', false);
    // To sign out a user, call signOut():
    // await FirebaseAuth.instance.signOut();

    Get.offAllNamed(
      AppRoute.signInScreen,
    );
  }

  // signIn() async {
  // }

  signOut() async {
    await mySharedPrefes!.setBool('logIn', false);
    // To sign out a user, call signOut():
    await FirebaseAuth.instance.signOut();

    Get.offAllNamed(
      AppRoute.signInScreen,
    );
  }

  deletAccount() async {
// signout and delet your account
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      await user.delete().then((value) {
        signOut();
      });
    } else {
      GetSnackBar(
        title: '',
        message: 'unKnown Error',
      );
    }
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
