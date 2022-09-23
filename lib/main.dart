import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/auth_controller.dart';
import 'package:my_demo/controllers/localization_controller.dart';
import 'package:my_demo/controllers/theme_controller.dart';
import 'package:my_demo/core/middleware/auth_middleware.dart';
import 'package:my_demo/core/themes/my_themes.dart';
import 'package:my_demo/get_pages.dart';
import 'package:my_demo/core/services/binding.dart';
// import 'package:my_demo/middleware/auth_middleware.dart';
// import 'package:my_demo/view/screens/about%20screen/about_screen.dart';
// import 'package:my_demo/view/screens/auth/sing_in.dart';
// import 'package:my_demo/view/screens/auth/sing_up_screen.dart';
// import 'package:my_demo/view/screens/detials%20screen/detials_screen.dart';
// import 'package:my_demo/view/screens/intro%20slider/intro_slider.dart';
// import 'package:my_demo/view/screens/localization/localization_screen.dart';
// import 'package:my_demo/view/screens/theme%20screen/theme_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/localization/localization.dart';
// import 'core/shared/custom_splash_screen.dart';

// GlobalKey<ScaffoldState> myKey = GlobalKey();

SharedPreferences? mySharedPrefes;
main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.lazyPut(() => MylocalController());
  mySharedPrefes = await SharedPreferences.getInstance();
  Get.lazyPut(() => AuthController(), fenix: true);
  Get.lazyPut(() => ThemeContorller(), fenix: true);
  await AuthMiddleWare;

  // ThemeData initalTheme = await mySharedPrefes!.getBool('dark') == true
  //     ? MyThemes.customDarkTheme
  //     : MyThemes.customLightTheme;

  // await AuthMiddleWare;

  // Future<SharedPreferences> prefssfdsfdfd = SharedPreferences.getInstance();

  // await GetStorage.init
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // var scaffoldKey = GlobalKey<ScaffoldState>();
  MyApp({Key? key}) : super(key: key);
  // var prefs = SharedPreferences.getInstance();

  @override
  Widget build(BuildContext context) {
// final GlobalKey<ScaffoldState> myKey = GlobalKey();
    MylocalController locallizationsController = Get.find();
    ThemeContorller themeContorller = Get.find();
    // Get.put(MylocalController());
    // GetStorage box = GetStroage;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fast Food',
      getPages: GetPages().getpages,
      initialBinding: MyInitalBindings(),
      initialRoute: AppRoute.cartScreen,
      // theme: themeContorller.initalTheme,

      theme: MyThemes.customLightTheme,

      darkTheme: MyThemes.customDarkTheme,
      themeMode: themeContorller.myThemeMode,
      // theme: MyThemes.customDarkTheme,
      // theme: MyThemes.customLightTheme,
      // darkTheme: ThemeData.dark(),
      locale: locallizationsController.initalLang,
      translations: TheLocalization(),
      // home: MyHomePage(),
      // offcourse you can't use home prob with the middleware
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