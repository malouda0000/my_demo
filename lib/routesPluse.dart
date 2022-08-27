import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/constans/app_routes.dart';
import 'package:my_demo/middleware/auth_middleware.dart';
import 'package:my_demo/screens/about%20screen/about_screen.dart';
import 'package:my_demo/screens/auth/sing_in.dart';
import 'package:my_demo/screens/auth/sing_up_screen.dart';
import 'package:my_demo/screens/detials%20screen/detials_screen.dart';
import 'package:my_demo/screens/home/my_home_page.dart';
import 'package:my_demo/screens/intro%20slider/intro_slider.dart';
import 'package:my_demo/screens/localization/localization_screen.dart';
import 'package:my_demo/screens/setting/setting_screen.dart';
import 'package:my_demo/screens/theme%20screen/theme_screen.dart';
import 'package:my_demo/screens/splash%20screen/custom_splash_screen.dart';

// Map<String, Widget Function(BuildContext)> routesPluse = {
//   // AppRoute.introSliderScreen: (context) => IntroSliderPage(),
//   // middleware[AuthMiddleWare()],
//   AppRoute.customSplashScreen: (context) => CustomSplashScreen(),
//   AppRoute.homePage: (context) => MyHomePage(),
//   AppRoute.singUpScreen: (context) => SingUpScreen(),
//   AppRoute.singInScreen: (context) => SingInScreen(),
//   AppRoute.detailsScreen: (context) => DetialsScreen(),
//   AppRoute.settignScreen: (context) => SettingScreen(),
//   AppRoute.themeScreen: (context) => ThemeScreen(),
//   AppRoute.aboutScreen: (context) => AboutScreen(),
//   AppRoute.localizationScreen: (context) => LocaliaztionScreen(),
// };

final routesPluse = [
  GetPage(
    name: AppRoute.introSliderScreen,
    page: () => IntroSliderPage(),
    middlewares: [
      AuthMiddleWare(),
    ],
  ),
  GetPage(
      name: AppRoute.customSplashScreen,
      page: () => CustomSplashScreen(),
      middlewares: []),
  GetPage(
    name: AppRoute.homePage,
    page: () => MyHomePage(),
  ),
  GetPage(
    name: AppRoute.singUpScreen,
    page: () => SingUpScreen(),
  ),
  GetPage(
    name: AppRoute.singInScreen,
    page: () => SingInScreen(),
  ),
  GetPage(
    name: AppRoute.detailsScreen,
    page: () => DetialsScreen(),
  ),
  GetPage(
    name: AppRoute.themeScreen,
    page: () => ThemeScreen(),
  ),
  GetPage(
    name: AppRoute.aboutScreen,
    page: () => AboutScreen(),
  ),
  GetPage(
    name: AppRoute.localizationScreen,
    page: () => LocaliaztionScreen(),
  ),
];
