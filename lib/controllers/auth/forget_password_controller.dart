import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/functions/validator.dart';
import 'package:my_demo/get_pages.dart';

abstract class ForgetPasswordController extends GetxController {
  emailTextValidator(String? text);
  goToVerifCode();
  // goToResetPassword();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  GlobalKey<FormState> forgetPasswordKey = new GlobalKey<FormState>();

  //
  Key signinEmailKey = new Key('');
  //
  //
  late TextEditingController signinEmailTextController;
  //

  @override
  void onInit() {
    super.onInit();
    signinEmailTextController = TextEditingController();
  }

  @override
  emailTextValidator(String? text) {
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

  goToVerifCode() {
    if (forgetPasswordKey.currentState!.validate()) {
      Get.offAllNamed(AppRoute.verifyCodeScreenForRestPass);
    }
  }

  // goToResetPassword() {
  //   Get.offAllNamed(AppRoute.resetPasswordScreen);
  // }

  @override
  void dispose() {
    super.dispose();
    signinEmailTextController.dispose();
  }
}
