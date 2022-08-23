import 'package:flutter/material.dart';
import 'package:my_demo/constans/routes.dart';
import 'package:my_demo/screens/about%20screen/about_screen.dart';
import 'package:my_demo/screens/auth/sing_in.dart';
import 'package:my_demo/screens/auth/sing_up_screen.dart';
import 'package:my_demo/screens/detials%20screen/detials_screen.dart';
import 'package:my_demo/screens/home/my_home_page.dart';
import 'package:my_demo/screens/intro%20slider/intro_slider.dart';
import 'package:my_demo/screens/localization/localization_screen.dart';
import 'package:my_demo/screens/setting/setting_screen.dart';
import 'package:my_demo/screens/setting/theme_screen.dart';
import 'package:my_demo/screens/splash%20screen/custom_splash_screen.dart';

Map<String, Widget Function(BuildContext)> routesPluse = {
  AppRoute.introSliderScreen: (context) => IntroSliderPage(),
  AppRoute.customSplashScreen: (context) => CustomSplashScreen(),
  AppRoute.homePage: (context) => const MyHomePage(),
  AppRoute.singUpScreen: (context) => const SingUpScreen(),
  AppRoute.singInScreen: (context) => const SingInScreen(),
  AppRoute.detailsScreen: (context) => const DetialsScreen(),
  AppRoute.settignScreen: (context) => const SettingScreen(),
  AppRoute.themeScreen: (context) => const ThemeScreen(),
  AppRoute.aboutScreen: (context) => const AboutScreen(),
  AppRoute.localizationScreen: (context) => const LocaliaztionScreen(),
};
