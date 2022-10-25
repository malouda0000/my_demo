import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/functions/validator.dart';
import 'package:my_demo/core/localization/localization.dart';
import 'package:my_demo/get_pages.dart';
import 'package:my_demo/main.dart';
import 'package:my_demo/view/screens/auth/widgets/check_email_dialog.dart';
import 'package:my_demo/view/screens/auth/widgets/my_dialog.dart';

abstract class SignInController extends GetxController {
  emailTextValidator(String? text);
  passwordTextValidator(String? text);
  showPasswordOnOff();
  signIn();
  fackSignIn();
  goToSignUp();
  goToForgetPassword();
}

class SignInControllerImp extends SignInController {
  GlobalKey<FormState> signinKey = new GlobalKey<FormState>();
  bool dontShowPassword = true;

  //
  Key signinEmailKey = new Key('');
  Key signinPasswordKey = new Key('');
  //
  //
  late TextEditingController signinEmailTextController;
  late TextEditingController signinPasswordTextController;
  //

  @override
  void onInit() {
    signinEmailTextController = TextEditingController();
    signinPasswordTextController = TextEditingController();
  }

  @override
  emailTextValidator(String? text) {
    // this is old validator, which i manually write it
    // text = signinEmailTextController.text;
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
    text = signinPasswordTextController.text;

    if (text.length < 6) {
      return AppLocal.passwordIsTooShourt.tr + '\n';
    }
    if (text.length > 30) {
      return AppLocal.passwordIsTooLong.tr + '\n';
    }
    return null;

    // return validator(text!, 6, 30, 'password');
  }

  @override
  showPasswordOnOff() {
    dontShowPassword == true
        ? dontShowPassword = false
        : dontShowPassword = true;
    update();
  }

  @override
  signIn() async {
    if (signinKey.currentState?.validate() != null) {
      if (signinKey.currentState!.validate()) {
        // await mySharedPrefes!.setBool('logIn', true);
        print('signedIn innnnnnnnnnn');
        // Get.offAllNamed(AppRoute.homePage);

        bool test = signinKey.currentState!.validate();

        if (test) {
          // authController.signIn();
          try {
            final credential =
                await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: signinEmailTextController.text,
              password: signinPasswordTextController.text,
            );
            // print(credential);

            if (credential.user!.emailVerified == false) {
              // await FirebaseAuth.instance.setLanguageCode(
              //   locallizationsController.emailVerLang(),
              // );
              // await credential.user!.sendEmailVerification();
              // User? user = FirebaseAuth.instance.currentUser;
              // await user!.sendEmailVerification();

              checkYourEmailDialog();
              print('email not vervied ============');
            } else {
              Get.offAllNamed(
                AppRoute.mainScreen,
              );

              print('email is vervied ============');
            }
          } on FirebaseAuthException catch (e) {
            if (e.code == 'user-not-found') {
              print('No user found for that email.');

              myDialog(
                context,
                'error ',
                Icons.email,
                'no user found for that email',
                'dismiss',
                'confirm',
                () {
                  Get.back();
                },
                () {
                  Get.back();
                },
              );
            } else if (e.code == 'wrong-password') {
              print('Wrong password provided for that user.');
            }
          }
        }
      }
    }
  }

  @override
  fackSignIn() async {
    // this func used for debuging, and it will be removed in
    // the final product !!!
    await mySharedPrefes!.setBool('logIn', true);
    print('signedIn innnnnnnnnnn');
    Get.offAllNamed(AppRoute.mainScreen);
  }

  goToSignUp() {
    Get.offAllNamed(AppRoute.signUpScreen);
  }

  @override
  goToForgetPassword() {
    Get.offAllNamed(AppRoute.forgetPasswordScreen);
  }

  @override
  void dispose() {
    signinEmailTextController.dispose();
    signinPasswordTextController.dispose();
  }
}
