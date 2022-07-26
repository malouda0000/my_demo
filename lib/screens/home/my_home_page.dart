import 'package:flutter/material.dart';
import 'package:my_demo/screens/detials%20screen/detials_screen.dart';
import 'package:my_demo/screens/setting%20screen/setting_screen.dart';
import 'package:my_demo/widgets/bottom_nav_bar.dart';
import 'package:my_demo/screens/home/components/the_app_bar.dart';
import 'package:my_demo/screens/home/components/the_body.dart';
import 'package:my_demo/widgets/the_drawer.dart';
import 'package:my_demo/widgets/the_fap.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> ScaffoldGenralKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: TheDrawer(),
      appBar: TheAppBar(),
      // drawer: (),
      body: TheBody(),
      floatingActionButton: TheFap(),
      bottomNavigationBar: TheBottomeNavBar(),
    );
  }
}
