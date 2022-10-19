import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/get_pages.dart';

import '../../main.dart';

abstract class SignInController extends GetxController {
  signIn();
  // fackSignOut();
  onInit();
  @override
  void dispose();
  goToSignUp();
}

class SignInControllerImp extends SignInController {
  ////
  late TextEditingController signinEmailTextController;
  late TextEditingController signinPasswordTextController;

  goToSignUp() {
    Get.offAllNamed(AppRoute.signUpScreen);
  }

  @override
  signIn() async {
    await mySharedPrefes!.setBool('logIn', true);
    print('signedIn innnnnnnnnnn');

    Get.offAllNamed(AppRoute.homePage);
  }

  @override
  void onInit() {
    signinEmailTextController = TextEditingController();
    signinPasswordTextController = TextEditingController();
  }

  @override
  void dispose() {
    signinEmailTextController.dispose();
    signinPasswordTextController.dispose();
  }
}
