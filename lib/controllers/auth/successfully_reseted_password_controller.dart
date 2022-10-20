import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/get_pages.dart';

abstract class SuccessfullyResetedPasswordController extends GetxController {
  goToSingIn();
}

class SuccessfullyResetedPasswordControllerImp
    extends SuccessfullyResetedPasswordController {
  GlobalKey<FormState> successfullyResetedPassword = new GlobalKey<FormState>();

  @override
  goToSingIn() {
    Get.offAllNamed(AppRoute.signInScreen);
  }
}
