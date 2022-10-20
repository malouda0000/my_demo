import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/localization/localization.dart';
import 'package:my_demo/get_pages.dart';

abstract class ResetPasswordController extends GetxController {
  newPasswordTextValidator(String? text);
  newPasswordConfTextValidator(String? text);
  reset(String? text);
  goToSignIn();
  goToSuccessfullyResetedPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  //
  late TextEditingController newPasswordTextController;
  late TextEditingController newPasswordConfTextController;
  //

  //
  Key newPasswordKey = new Key('');
  Key newPasswordConfKey = new Key('');
  //

  @override
  void onInit() async {
    newPasswordTextController = TextEditingController();
    newPasswordConfTextController = TextEditingController();
  }

  @override
  reset(String? text) async {
// reset the password
  }

  @override
  newPasswordTextValidator(String? text) {
    text = newPasswordTextController.text;

    if (text.length < 6) {
      return AppLocal.passwordIsTooShourt.tr + '\n';
    }
    if (text.length > 25) {
      return AppLocal.passwordIsTooLong.tr + '\n';
    }
    return null;
  }

  @override
  newPasswordConfTextValidator(String? text) {
    text = newPasswordConfTextController.text;

    if (newPasswordTextController.text != text) {
      // first it makes sure that pass one
      // == pass two, and then contnue
      return AppLocal.passwordsAreNotEqual.tr + '\n';
    }
    return null;
  }

  @override
  goToSignIn() {}

  @override
  void dispose() {
    newPasswordTextController.dispose();
    newPasswordConfTextController.dispose();
  }

  @override
  goToSuccessfullyResetedPassword() {
    Get.offAllNamed(
      AppRoute.succResetedPasswordScreen,
    );
  }
}
