import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ThemeContorller extends GetxController {
  changeTheme() {
    Get.isDarkMode
        ? Get.changeTheme(ThemeData.light())
        : Get.changeTheme(ThemeData.dark());
  }
}
