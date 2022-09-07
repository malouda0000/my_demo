import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/adding_meal_controller.dart';
import 'package:my_demo/controllers/bottom_nav_bar_controller.dart';
import 'package:my_demo/controllers/cart_controller.dart';
import 'package:my_demo/controllers/localization_controller.dart';
import 'package:my_demo/core/constants/get_pages.dart';
// import 'package:my_demo/middleware/auth_middleware.dart';
// import 'package:my_demo/view/screens/about%20screen/about_screen.dart';
// import 'package:my_demo/view/screens/auth/sing_in.dart';
// import 'package:my_demo/view/screens/auth/sing_up_screen.dart';
// import 'package:my_demo/view/screens/detials%20screen/detials_screen.dart';
import 'package:my_demo/view/screens/home/my_home_page.dart';
// import 'package:my_demo/view/screens/intro%20slider/intro_slider.dart';
// import 'package:my_demo/view/screens/localization/localization_screen.dart';
// import 'package:my_demo/view/screens/theme%20screen/theme_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/constants/app_color.dart';
import 'core/localization/localization.dart';
// import 'core/shared/custom_splash_screen.dart';

// final GlobalKey<ScaffoldState> myKey = GlobalKey();

SharedPreferences? mySharedPrefes;
main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.put(BottomNvaBarController(), permanent: true);
  await Get.put(AddingMealController(), permanent: true);
  await Get.put(CartController(), permanent: true);

  // Future<SharedPreferences> prefssfdsfdfd = SharedPreferences.getInstance();

  mySharedPrefes = await SharedPreferences.getInstance();
  // await GetStorage.init
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // var scaffoldKey = GlobalKey<ScaffoldState>();
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
      // initialRoute: AppRoute.introSliderScreen,
      // initialRoute: AppRoute.foodMenueScreen,
      title: 'Fast Food',
      getPages: GetPages().getpages,
      theme: ThemeData(
        // fontFamily: GoogleFonts.cairo().fontFamily,
        fontFamily: 'Cairo',
        primaryColor: AppColor.kPrimaryColor,

        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: AppColor.kTextColor),
          bodyText2: TextStyle(color: AppColor.kTextColor),
          headline6: TextStyle(
            color: AppColor.kTextColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
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