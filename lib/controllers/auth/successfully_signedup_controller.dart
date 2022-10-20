import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/get_pages.dart';

abstract class SuccessfullySignedupController extends GetxController {
  goToSingIn();
}

class SuccessfullySignedupControllerImp extends SuccessfullySignedupController {
  GlobalKey<FormState> successfullySignedup = new GlobalKey<FormState>();

  @override
  goToSingIn() {
    Get.offAllNamed(AppRoute.signInScreen);
  }
}
