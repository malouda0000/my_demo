import 'package:flutter/material.dart';
import 'package:my_demo/core/constants/app_color.dart';

class MyThemes {
  static ThemeData customLightTheme = ThemeData.light().copyWith(
    // colorScheme: ColorScheme.light().copyWith(
    //   // shadow: AppColor.kPrimaryColor,

    // ),
    // splashColor: AppColor.kPrimaryColor,
    shadowColor: AppColor.kTextColor.withOpacity(.3),
    primaryColor: AppColor.kPrimaryColor,
    iconTheme: IconThemeData(color: AppColor.kTextColor),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.theMainLightColor,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColor.kTextColor),
    ),
    // bottomAppBarColor: AppColor.theMainLightColor,
    bottomAppBarTheme: BottomAppBarTheme(color: AppColor.theMainLightColor),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColor.theMainLightColor,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColor.kTextColor,
        fontFamily: 'Cairo',
      ),
      bodyMedium: TextStyle(
        color: AppColor.kTextColor,
        fontFamily: 'Cairo',
      ),
      bodySmall: TextStyle(
        color: AppColor.kTextColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'Cairo',
      ),
    ),
  );
  static ThemeData customDarkTheme = ThemeData.dark().copyWith(
    shadowColor: Colors.black.withOpacity(.7),
    primaryColor: AppColor.kPrimaryColor,
    iconTheme: IconThemeData(
      color: AppColor.theMainLightColor,
    ),
    appBarTheme: AppBarTheme(
      // backgroundColor: AppColor.theMainLightColor,
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppColor.theMainLightColor,
      ),
    ),

    // shadowColor: Colors.grey[400]!.withOpacity(.5),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColor.theMainLightColor,
        fontFamily: 'Cairo',
      ),
      bodyMedium: TextStyle(
        color: AppColor.theMainLightColor,
        fontFamily: 'Cairo',
      ),
      bodySmall: TextStyle(
        color: AppColor.theMainLightColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'Cairo',
      ),
    ),
  );
}
