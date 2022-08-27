import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/screens/home/my_home_page.dart';

import '../main.dart';

class SingupController extends GetxController {
  singup() async {
    mySharedPrefes!.setBool('logIn', true);

    Get.offAll(MyHomePage());
  }
}
