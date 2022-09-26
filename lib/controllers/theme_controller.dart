import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/themes/my_themes.dart';
import 'package:my_demo/main.dart';

//  bool themeMode =  mySharedPrefes!.getBool('dark');

class ThemeContorller extends GetxController {
  // ThemeData initalTheme = mySharedPrefes!.getBool('dark') == true
  //     ? MyThemes.customDarkTheme
  //     : MyThemes.customLightTheme;

  ThemeMode myThemeMode = mySharedPrefes!.getBool('dark') == true
      ? ThemeMode.dark
      : ThemeMode.light;

  changeThemeService() async {
    if (await Get.isDarkMode) {
      Get.changeTheme(MyThemes.customLightTheme);

      await mySharedPrefes!.setBool('dark', false);
      // print('theme changed to light theme');
    } else {
      Get.changeTheme(MyThemes.customDarkTheme);

      await mySharedPrefes!.setBool('dark', true);

      // print('theme changed to dark theme');
    }
  }
}
