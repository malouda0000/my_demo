import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/auth_controller.dart';
import 'package:my_demo/controllers/localization_controller.dart';
import 'package:my_demo/controllers/theme_controller.dart';
import 'package:my_demo/core/middleware/auth_middleware.dart';
import 'package:my_demo/core/themes/my_themes.dart';
import 'package:my_demo/get_pages.dart';
import 'package:my_demo/core/services/binding.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/localization/localization.dart';

SharedPreferences? mySharedPrefes;
main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.lazyPut(() => MylocalController());
  mySharedPrefes = await SharedPreferences.getInstance();
  Get.lazyPut(() => AuthController(), fenix: true);
  Get.lazyPut(() => ThemeContorller(), fenix: true);
  await AuthMiddleWare;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MylocalController locallizationsController = Get.find();
    ThemeContorller themeContorller = Get.find();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fast Food',
      getPages: GetPages().getpages,
      initialBinding: MyInitalBindings(),
      // initialRoute: AppRoute.homePage,
      theme: MyThemes.customLightTheme,
      darkTheme: MyThemes.customDarkTheme,
      themeMode: themeContorller.myThemeMode,
      locale: locallizationsController.initalLang,
      translations: TheLocalization(),
      // home: MyHomePage(),
      // offcourse you can't use home prob with the middleware
    );
  }
}
