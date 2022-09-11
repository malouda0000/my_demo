import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/themes/themes.dart';
import 'package:my_demo/main.dart';

//  bool themeMode =  mySharedPrefes!.getBool('dark');

class ThemeContorller extends GetxController {
  ThemeData initalTheme = mySharedPrefes!.getBool('dark') == true
      ? MyThemes.customDarkTheme
      : MyThemes.customLightTheme;

  myThemeServece() async {
    if (Get.isDarkMode) {
      Get.changeTheme(MyThemes.customLightTheme);

      await mySharedPrefes!.setBool('dark', false);
    } else {
      Get.changeTheme(MyThemes.customDarkTheme);

      await mySharedPrefes!.setBool('dark', true);
    }
  }
}
