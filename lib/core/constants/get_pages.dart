import 'package:get/get.dart';
import 'package:my_demo/core/shared/custom_splash_screen.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/food_menue_screen.dart';
import 'package:my_demo/view/screens/under%20development%20screen/under_development_screen.dart';

import '../../view/screens/intro slider/intro_slider.dart';
import 'app_routes.dart';
import 'package:my_demo/middleware/auth_middleware.dart';
import 'package:my_demo/view/screens/about%20screen/about_screen.dart';
import 'package:my_demo/view/screens/auth/sing_in.dart';
import 'package:my_demo/view/screens/auth/sing_up_screen.dart';
import 'package:my_demo/view/screens/detials%20screen/detials_screen.dart';
import 'package:my_demo/view/screens/home/my_home_page.dart';
import 'package:my_demo/view/screens/intro%20slider/intro_slider.dart';
import 'package:my_demo/view/screens/localization/localization_screen.dart';
import 'package:my_demo/view/screens/theme%20screen/theme_screen.dart';

class GetPages {
  List<GetPage<dynamic>>? getpages = [
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
    GetPage(
      name: AppRoute.underDevelopmentScreen,
      page: () => UnderDevelopment(),
    ),
    GetPage(
      name: AppRoute.foodMenueScreen,
      page: () => FoodMenueScreen(),
    ),
  ];
}
