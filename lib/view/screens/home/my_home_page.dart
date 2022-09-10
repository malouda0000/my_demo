import 'package:flutter/material.dart';
import 'package:my_demo/core/shared/the_drawer.dart';
import '../../../core/shared/bottom navigation bar/bottom_nav_bar.dart';
import '../../../core/shared/the appbar/the_app_bar.dart';
import 'widgets/the_home_body.dart';

// GlobalKey<ScaffoldState> myKey = GlobalKey();
// GlobalKey<ScaffoldState> myKey = GlobalKey<ScaffoldState>();

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // GlobalKey<ScaffoldState> ScaffoldGenralKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: myKey,
      drawer: const TheDrawer(),
      appBar: TheAppBar(),
      // drawer: (),
      body: const TheMainHomeBody(),
      // floatingActionButton: const TheFap(),
      bottomNavigationBar: const TheBottomNavBar(),
    );

    // return SettingScreen();
  }
}
