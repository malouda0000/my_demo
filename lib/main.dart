import 'package:flutter/material.dart';
import 'package:my_demo/constants.dart';
import 'package:my_demo/screens/home/my_home_page.dart';
// import 'dart:ffi';

//  var size = MediaQuery.of(context).size;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

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

//         primaryColor: kPrimaryColor,
//         scaffoldBackgroundColor: Colors.white,
//         textTheme: TextTheme(
//           body1: TextStyle(color: ksecondaryColor),
//           body2: TextStyle(color: ksecondaryColor),
//         ),
//       ),

//
//
//

      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: ksecondaryColor),
          bodyText2: TextStyle(color: ksecondaryColor),
        ),
      ),

      home: const MyHomePage(),
    );
  }
}
