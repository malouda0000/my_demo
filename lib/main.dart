import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/bottom_nav_bar_controller.dart';
import 'package:my_demo/controllers/localization_controller.dart';
import 'package:my_demo/middleware/auth_middleware.dart';
import 'package:my_demo/screens/about%20screen/about_screen.dart';
import 'package:my_demo/screens/auth/sing_in.dart';
import 'package:my_demo/screens/auth/sing_up_screen.dart';
import 'package:my_demo/screens/detials%20screen/detials_screen.dart';
import 'package:my_demo/screens/intro%20slider/intro_slider.dart';
import 'package:my_demo/screens/localization/localization_screen.dart';
import 'package:my_demo/screens/splash%20screen/custom_splash_screen.dart';
import 'package:my_demo/screens/theme%20screen/theme_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../constans/app_color.dart';
import 'package:my_demo/constans/app_routes.dart';
import 'package:my_demo/screens/home/my_home_page.dart';
// import 'dart:async';
import 'localization/localization.dart';

// Future<SharedPreferences> LocalizationInformation = SharedPreferences.getInstance();
SharedPreferences? mySharedPrefes;
main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.put(BottomNvaBarController(), permanent: true);

  // Future<SharedPreferences> prefssfdsfdfd = SharedPreferences.getInstance();

  mySharedPrefes = await SharedPreferences.getInstance();
  // await GetStorage.init
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  // var prefs = SharedPreferences.getInstance();

  @override
  Widget build(BuildContext context) {
    MylocalController locallizationsController =
        Get.put(MylocalController(), permanent: true);
    // Get.put(MylocalController());
    // GetStorage box = GetStroage;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.introSliderScreen,
      title: 'Fast Food',
      getPages: [
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
      ],
      theme: ThemeData(
        // fontFamily: GoogleFonts.cairo().fontFamily,
        fontFamily: 'Cairo',
        primaryColor: AppColor.kPrimaryColor,

        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: AppColor.kTextColor),
          bodyText2: TextStyle(color: AppColor.kTextBlacColor),
        ),
      ),
      // darkTheme: ThemeData.dark(),
      locale: locallizationsController.initalLang,
      translations: TheLocalization(),
      home: MyHomePage(),
    );
  }
}



      // themeMode: ThemeMode.dark,

      // theme: ThemeData.dark(),

      // darkTheme: ThemeData(primaryColorDark: Colors.yellow),
//
//
//
//

//       theme: ThemeData(

// //
// //
//         // brightness: Brightness.dark,
//         // // primarySwatch: Colors.amber,
//         // primaryColor: Colors.indigo,
//         // // primaryColorDark: Colors.indigoAccent,
// //
// //
// //
// //

//         primaryColor: AppColor.kPrimaryColor,
//         scaffoldBackgroundColor: Colors.white,
//         textTheme: TextTheme(
//           body1: TextStyle(color: AppColor.ksecondaryColor),
//           body2: TextStyle(color: AppColor.ksecondaryColor),
//         ),
//       ),

//
//
//