import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/localization/localization.dart';
import 'package:my_demo/get_pages.dart';

abstract class VerifyCodeControllerForResetPass extends GetxController {
  emailTextValidator(String? text);

  goToResetPassword();
}

class VerifyCodeControllerForResetPassImp
    extends VerifyCodeControllerForResetPass {
  //
  Key signinEmailKey = new Key('');
  //
  //
  late TextEditingController signinEmailTextController;
  //

  @override
  void onInit() {
    signinEmailTextController = TextEditingController();
  }

  @override
  emailTextValidator(String? text) {
    text = signinEmailTextController.text;
    if (text.length < 6) {
      return AppLocal.emailIsTooShourt.tr + '\n';
    }
    if (text.length > 50) {
      return AppLocal.emailIsTooLong.tr + '\n';
    }
    return null;
  }

  @override
  goToResetPassword() {
    Get.offAndToNamed(AppRoute.resetPasswordScreen);
  }

  @override
  void dispose() {
    signinEmailTextController.dispose();
  }
}
