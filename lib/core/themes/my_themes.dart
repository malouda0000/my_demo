import 'package:flutter/material.dart';
import 'package:my_demo/core/constants/app_color.dart';

class MyThemes {
  static ThemeData customLightTheme = ThemeData.light().copyWith(
    primaryColor: AppColor.kPrimaryColor,
    iconTheme: IconThemeData(color: AppColor.kTextColor),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.theMainLightColor,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColor.kTextColor),

      // shadowColor: AppColor.kPrimaryColor,

      shadowColor: AppColor.kTextColor.withOpacity(.5),
    ),
    bottomAppBarColor: AppColor.theMainLightColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColor.theMainLightColor,
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        color: AppColor.kTextColor,
        fontFamily: 'Cairo',
      ),
      bodyText2: TextStyle(
        color: AppColor.kTextColor,
        fontFamily: 'Cairo',
      ),
      headline6: TextStyle(
        color: AppColor.kTextColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'Cairo',
      ),
    ),
  );
  static ThemeData customDarkTheme = ThemeData.dark().copyWith(
    primaryColor: AppColor.kPrimaryColor,
    iconTheme: IconThemeData(
      color: AppColor.theMainLightColor,
    ),
    appBarTheme: AppBarTheme(
        // backgroundColor: AppColor.theMainLightColor,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColor.theMainLightColor)),

    shadowColor: AppColor.kTextColor,

    // shadowColor: Colors.grey[400]!.withOpacity(.5),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        color: AppColor.theMainLightColor,
        fontFamily: 'Cairo',
      ),
      bodyText2: TextStyle(
        color: AppColor.theMainLightColor,
        fontFamily: 'Cairo',
      ),
      headline6: TextStyle(
        color: AppColor.theMainLightColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'Cairo',
      ),
    ),
  );
}
