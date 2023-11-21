import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/localization/localization.dart';
import 'package:my_demo/get_pages.dart';

abstract class VerifyCodeControllerForSuccSignup extends GetxController {
  emailTextValidator(String? text);

  goToSuccSignup();
}

class VerifyCodeControllerForSuccSignupImp
    extends VerifyCodeControllerForSuccSignup {
  GlobalKey<FormState> verifyCodeKeyForSignup = new GlobalKey<FormState>();

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
  goToSuccSignup() {
    if (verifyCodeKeyForSignup.currentState!.validate()) {
      Get.offAndToNamed(AppRoute.successfullySignedupScreen);
    }
  }

  @override
  void dispose() {
    super.dispose();
    signinEmailTextController.dispose();
  }
}
