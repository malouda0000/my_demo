import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constans/app_color.dart';
import 'package:my_demo/constans/routes.dart';
import 'package:my_demo/routesPluse.dart';
import 'package:my_demo/screens/home/my_home_page.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.customSplashScreen,
      title: 'Flutter Demo',
// initialRoute: ,

// no need for get pages when iam using routes:
      // getPages: [
      //   GetPage(name: '/homePage', page: () => const MyHomePage()),
      //   GetPage(name: '/InroSliderScreen', page: () => IntroSliderPage()),
      //   GetPage(name: '/singUpScreen', page: () => const SingUpScreen()),
      //   GetPage(name: '/SinInScreen', page: () => const SingInScreen()),
      //   GetPage(name: '/detailsScreen', page: () => const DetialsScreen()),
      //   GetPage(name: '/settingScreen', page: () => const SettingScreen()),
      //   GetPage(name: '/aboutScreen', page: () => const AboutScreen()),
      //   GetPage(name: '/themeScreen', page: () => const ThemeScreen()),
      //   GetPage(name: '/splashScreen', page: () => const CustomSplashScreen()),
      // ],

      routes: routesPluse,

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

      home: MyHomePage(),
    );
  }
}
