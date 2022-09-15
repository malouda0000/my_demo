import 'package:get/get.dart';
import 'package:my_demo/core/services/binding.dart';
import 'package:my_demo/core/shared/custom_splash_screen.dart';
import 'package:my_demo/view/screens/Error/error_message_screen.dart';
import 'package:my_demo/view/screens/cart%20screen/cart_screen.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/food_menue_screen.dart';
import 'package:my_demo/view/screens/under%20development%20screen/under_development_screen.dart';
import 'view/screens/intro slider/intro_slider.dart';
import 'package:my_demo/middleware/auth_middleware.dart';
import 'package:my_demo/view/screens/about%20screen/about_screen.dart';
import 'package:my_demo/view/screens/auth/sing_in.dart';
import 'package:my_demo/view/screens/auth/sing_up_screen.dart';
import 'package:my_demo/view/screens/detials%20screen/detials_screen.dart';
import 'package:my_demo/view/screens/home/my_home_page.dart';
import 'package:my_demo/view/screens/intro%20slider/intro_slider.dart';
import 'package:my_demo/view/screens/localization/localization_screen.dart';
import 'package:my_demo/view/screens/theme%20screen/theme_screen.dart';

class AppRoute {
  static const String introSliderScreen = '/';
  static const String customSplashScreen = '/splashScreen';
  static const String homePage = '/homePage';
  static const String singUpScreen = '/singUpScreen';
  static const String singInScreen = '/SinInScreen';
  static const String detailsScreen = '/detailsScreen';
  static const String settingScreen = '/settingScreen';
  static const String themeScreen = '/themeScreen';
  static const String aboutScreen = '/aboutScreen';
  static const String localizationScreen = '/localizationScreen';
  static const String underDevelopmentScreen = '/underDevelopmentScreen';
  static const String foodMenueScreen = '/foodMenueScreen';
  static const String errorMessageScreen = '/errorMessageScreen';
  static const String cartScreen = '/cartScreen';
}

class GetPages {
  List<GetPage<dynamic>>? getpages = [
    GetPage(
      name: AppRoute.introSliderScreen,
      page: () => IntroSliderPage(),
      middlewares: [
        // AuthMiddleWare(),
      ],
    ),
    GetPage(
      name: AppRoute.customSplashScreen,
      page: () => CustomSplashScreen(),
    ),
    GetPage(
      name: AppRoute.homePage,
      page: () => MyHomePage(),
      // binding: LocalizationBindings(),
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
      // bindings: [],
    ),
    GetPage(
      name: AppRoute.localizationScreen,
      page: () => LocaliaztionScreen(),
      binding: LocalizationBindings(),
    ),
    GetPage(
      name: AppRoute.underDevelopmentScreen,
      page: () => UnderDevelopment(),
    ),
    GetPage(
      name: AppRoute.foodMenueScreen,
      page: () => FoodMenueScreen(),
      binding: AddingMealBindings(),
    ),
    GetPage(
      name: AppRoute.errorMessageScreen,
      page: () => ErrorMessageScreen(),
    ),
    GetPage(
      name: AppRoute.cartScreen,
      page: () => CartScreen(),
      binding: CartBindings(),
    ),
  ];
}
