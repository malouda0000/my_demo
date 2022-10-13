import 'package:get/get.dart';
import 'package:my_demo/core/middleware/auth_middleware.dart';
import 'package:my_demo/core/services/binding.dart';
import 'package:my_demo/core/shared/custom_splash_screen.dart';
import 'package:my_demo/view/screens/Error/error_message_screen.dart';
import 'package:my_demo/view/screens/cart%20screen/cart_screen.dart';
import 'package:my_demo/view/screens/custom%20onbording/custom_onbording.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/food_menue_screen.dart';
import 'package:my_demo/view/screens/under%20development%20screen/under_development_screen.dart';
import 'package:my_demo/view/screens/about%20screen/about_screen.dart';
import 'package:my_demo/view/screens/auth/sign_in.dart';
import 'package:my_demo/view/screens/auth/sign_up_screen.dart';
import 'package:my_demo/view/screens/detials%20screen/detials_screen.dart';
import 'package:my_demo/view/screens/home/home_screen.dart';
import 'package:my_demo/view/screens/localization/localization_screen.dart';
import 'package:my_demo/view/screens/theme/theme_screen.dart';

class AppRoute {
  static const String customOnbordingScreen = '/';
  static const String customSplashScreen = '/splashScreen';
  static const String homePage = '/homePage';
  static const String signUpScreen = '/signUpScreen';
  static const String signInScreen = '/SinInScreen';
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
      name: AppRoute.customOnbordingScreen,
      page: () => const CustomOnBordingPageViewBuilder(),
      middlewares: [
        FirstTimeInit(),
      ],
    ),

    GetPage(
      name: AppRoute.signUpScreen,
      page: () => const SignUpScreen(),
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: AppRoute.signInScreen,
      page: () => const SignInScreen(),
      middlewares: [AuthMiddleWare()],
    ),
    // GetPage(
    //   name: AppRoute.introSliderScreen,
    //   page: () =>const IntroSliderPage(),
    //   // middlewares: [
    //   //   AuthMiddleWare(),
    //   // ],
    // ),
    GetPage(
      name: AppRoute.homePage,
      page: () => const HomeScreen(),
      // binding: LocalizationBindings(),
    ),
    GetPage(
      name: AppRoute.customSplashScreen,
      page: () => CustomSplashScreen(
        haveDiscription: false,
        progress: false,
      ),
    ),
    GetPage(
      name: AppRoute.detailsScreen,
      page: () => const DetialsScreen(),
    ),
    GetPage(
      name: AppRoute.themeScreen,
      page: () => const ThemeScreen(),
    ),
    GetPage(
      name: AppRoute.aboutScreen,
      page: () => const AboutScreen(),
      // bindings: [],
    ),
    GetPage(
      name: AppRoute.localizationScreen,
      page: () => const LocaliaztionScreen(),
      binding: LocalizationBindings(),
    ),
    GetPage(
      name: AppRoute.underDevelopmentScreen,
      page: () => const UnderDevelopment(),
    ),
    GetPage(
      name: AppRoute.foodMenueScreen,
      page: () => const FoodMenueScreen(),
      binding: AddingMealBindings(),
    ),
    GetPage(
      name: AppRoute.errorMessageScreen,
      page: () => const ErrorMessageScreen(),
    ),
    GetPage(
      name: AppRoute.cartScreen,
      page: () => const CartScreen(),
      binding: CartBindings(),
    ),
  ];
}
