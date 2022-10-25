import 'package:get/get.dart';
import 'package:my_demo/core/middleware/auth_middleware.dart';
import 'package:my_demo/core/services/binding.dart';
import 'package:my_demo/core/shared/custom_splash_screen.dart';
import 'package:my_demo/main_screen.dart';
import 'package:my_demo/view/screens/Error/error_message_screen.dart';
import 'package:my_demo/view/screens/auth/forget%20password/forget_password_screen.dart';
import 'package:my_demo/view/screens/auth/forget%20password/reset_password_screen.dart';
import 'package:my_demo/view/screens/auth/forget%20password/verify_code_screen_for_resetpass.dart';
import 'package:my_demo/view/screens/auth/forget%20password/verify_code_screen_for_signup.dart';
import 'package:my_demo/view/screens/cart%20screen/cart_screen.dart';
import 'package:my_demo/view/screens/custom%20onbording/custom_onbording.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/food_menue_screen.dart';
import 'package:my_demo/view/screens/under%20development%20screen/under_development_screen.dart';
import 'package:my_demo/view/screens/about%20screen/about_screen.dart';
import 'package:my_demo/view/screens/auth/sign_in_screen.dart';
import 'package:my_demo/view/screens/auth/sign_up_screen.dart';
import 'package:my_demo/view/screens/detials%20screen/detials_screen.dart';
import 'package:my_demo/view/screens/localization/localization_screen.dart';
import 'package:my_demo/view/screens/theme/theme_screen.dart';

import 'view/screens/auth/forget password/succesfully_reseted_password_screen.dart';
import 'view/screens/auth/forget password/successfully_signedup_screen.dart';

class AppRoute {
  // app inital
  static const String customOnbordingScreen = '/';
  static const String customSplashScreen = '/splashScreen';

  // auth
  static const String signUpScreen = '/signUpScreen';
  static const String signInScreen = '/SinInScreen';
  static const String forgetPasswordScreen = '/forgetPasswordScreen';
  static const String verifyCodeScreenForRestPass =
      '/verifyCodeScreenForResetPass';
  static const String verifyCodeScreenForSignup = '/verifyCodeScreenForSignup';
  static const String resetPasswordScreen = '/resetPasswordScreen';
  static const String succResetedPasswordScreen = '/succResetedPasswordScreen';
  static const String successfullySignedupScreen = '/succSignedupScreen';

  // main screens
  static const String mainScreen = '/mainScreen';
  static const String detailsScreen = '/detailsScreen';
  static const String settingScreen = '/settingScreen';
  static const String foodMenueScreen = '/foodMenueScreen';
  static const String cartScreen = '/cartScreen';
  static const String aboutScreen = '/aboutScreen';

// seconders screens
  static const String themeScreen = '/themeScreen';
  static const String localizationScreen = '/localizationScreen';
  static const String underDevelopmentScreen = '/underDevelopmentScreen';
  static const String errorMessageScreen = '/errorMessageScreen';
}

class GetPages {
  // initaling app
  List<GetPage<dynamic>>? getpages = [
    GetPage(
      name: AppRoute.customOnbordingScreen,
      page: () => const CustomOnBordingPageViewBuilder(),
      middlewares: [
        FirstTimeInit(),
      ],
    ),

// auth screens
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

    GetPage(
      name: AppRoute.forgetPasswordScreen,
      page: () => const ForgetPasswordScreen(),
    ),

    GetPage(
      name: AppRoute.verifyCodeScreenForRestPass,
      page: () => const VerifyCodeScreenForResetPass(),
    ),

    GetPage(
      name: AppRoute.verifyCodeScreenForSignup,
      page: () => const VerifyCodeScreenForSignup(),
    ),
    GetPage(
      name: AppRoute.resetPasswordScreen,
      page: () => const ResetPasswordScreen(),
    ),

    GetPage(
      name: AppRoute.succResetedPasswordScreen,
      page: () => const SuccessfullyResetedPasswordScreen(),
    ),

    GetPage(
      name: AppRoute.successfullySignedupScreen,
      page: () => const SuccessfullySignedupScreen(),
    ),

    // main screens
    GetPage(
      name: AppRoute.mainScreen,
      page: () => const MainScreen(),
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
