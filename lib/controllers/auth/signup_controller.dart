import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/functions/validator.dart';
import 'package:my_demo/core/localization/localization.dart';
import 'package:my_demo/get_pages.dart';
import 'package:my_demo/view/screens/auth/widgets/check_email_dialog.dart';

abstract class SignupController extends GetxController {
  emailTextValidator(String? text);
  passwordTextValidator(String? text);
  PasswordConfTextValidator(String? text);
  signup();
  goToVerifyEmailScreen();
  goToSignIn();
  showPasswordOnOff();
}

class SignupControllerImp extends SignupController {
  GlobalKey<FormState> signupKey = new GlobalKey<FormState>();
  bool dontShowPassword = true;
// bool dontShowRePassword = true;

  //
  late TextEditingController signupEmailController;
  late TextEditingController signupPasswordController;
  late TextEditingController signupPasswordConfController;
  //

  //
  Key signupEmailKey = new Key('');
  Key signupPasswordKey = new Key('');
  Key signupPasswordConfKey = new Key('');
  //

  @override
  void onInit() async {
    super.onInit();
    signupEmailController = TextEditingController();
    signupPasswordController = TextEditingController();
    signupPasswordConfController = TextEditingController();
  }

  @override
  signup() async {
    // await mySharedPrefes!.setBool('logIn', true);
    // print('loged innnnnnnnnnn');

    // Get.offAllNamed(AppRoute.homePage);

    if (signupKey.currentState!.validate()) {
      try {
        print('signing up =====================');
        final credential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: signupEmailController.text,
          password: signupPasswordController.text,
        );

        if (credential.user?.uid != null) {
          // GetSnackBar(
          //   message: 'check your email to verfiy it',
          // );
          await Get.offAllNamed(AppRoute.signInScreen)!.then((value) async {
            await checkYourEmailDialog();
          });
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          signupPasswordKey.printError();
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    }
  }

  @override
  emailTextValidator(String? text) {
    // text = signupEmailController.text;
    // if (text.length < 6) {
    //   return AppLocal.emailIsTooShourt.tr + '\n';
    // }
    // if (text.length > 50) {
    //   return AppLocal.emailIsTooLong.tr + '\n';
    // }
    // return null;
    return validator(text!, 6, 30, 'email');
  }

  @override
  passwordTextValidator(String? text) {
    text = signupPasswordController.text;

    if (text.length < 6) {
      return AppLocal.passwordIsTooShourt.tr + '\n';
    }
    if (text.length > 25) {
      return AppLocal.passwordIsTooLong.tr + '\n';
    }
    return null;
  }

  @override
  PasswordConfTextValidator(String? text) {
    text = signupPasswordConfController.text;

    if (signupPasswordController.text != text) {
      // first it makes sure that pass one
      // == pass two, and then contnue
      return AppLocal.passwordsAreNotEqual.tr + '\n';
    }
    return null;
  }

  @override
  goToVerifyEmailScreen() {
    if (signupKey.currentState!.validate()) {
      Get.offAllNamed(AppRoute.verifyCodeScreenForSignup);
    }
  }

  @override
  goToSignIn() {
    Get.offAllNamed(AppRoute.signInScreen);
  }

  @override
  showPasswordOnOff() {
    dontShowPassword == true
        ? dontShowPassword = false
        : dontShowPassword = true;
    update();
  }

  @override
  void dispose() {
    super.dispose();
    signupEmailController.dispose();
    signupPasswordController.dispose();
    signupPasswordConfController.dispose();
  }
}
