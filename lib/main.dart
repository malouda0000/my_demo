import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/auth/auth_controller.dart';
import 'package:my_demo/controllers/localization_controller.dart';
import 'package:my_demo/controllers/theme_controller.dart';
import 'package:my_demo/core/middleware/auth_middleware.dart';
import 'package:my_demo/core/constants/my_themes.dart';
import 'package:my_demo/get_pages.dart';
import 'package:my_demo/core/services/binding.dart';
import 'package:my_demo/view/screens/account/user_account.dart';
// import 'package:my_demo/view/screens/auth/sign_in_screen.dart';
// import 'package:my_demo/view/screens/home/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/localization/localization.dart';
// import 'view/screens/auth/forget password/verify_code_screen_for_resetpass.dart';
// import 'package:firebase_core/firebase_core.dart';

SharedPreferences? mySharedPrefes;
main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.lazyPut(() => LocallizationsController());
  mySharedPrefes = await SharedPreferences.getInstance();
  Get.lazyPut(() => AuthController(), fenix: true);
  Get.lazyPut(() => ThemeContorller(), fenix: true);
  await AuthMiddleWare;
  FirebaseApp defaultApp = await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LocallizationsController locallizationsController = Get.find();
    ThemeContorller themeContorller = Get.find();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fast Food',
      getPages: GetPages().getpages,
      initialBinding: MyInitalBindings(),
      // initialRoute: AppRoute.signInScreen,
      theme: MyThemes.customLightTheme,
      darkTheme: MyThemes.customDarkTheme,
      themeMode: themeContorller.myThemeMode,
      locale: locallizationsController.initalLang,
      translations: TheLocalization(),
      // home: SuccessfullySignedupScreen(),
      // home: UserAccount(),
      // home: SuccessfullyResetedPasswordScreen(),
      // just i'll use home proberty for testing
    );
  }
}
