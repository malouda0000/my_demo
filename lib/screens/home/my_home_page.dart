import 'package:flutter/material.dart';
import 'package:my_demo/widgets/bottom%20navigation%20bar/bottom_nav_bar.dart';
import 'package:my_demo/widgets/the%20appbar/the_app_bar.dart';
import 'package:my_demo/screens/home/widgets/the_body.dart';
import 'package:my_demo/widgets/the_drawer.dart';

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
