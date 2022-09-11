import 'package:flutter/material.dart';
import 'package:my_demo/core/shared/bottom%20navigation%20bar/bottom_nav_bar.dart';
import 'package:my_demo/core/shared/the%20appbar/the_app_bar.dart';
import 'package:my_demo/view/screens/setting/widgets/setting_screen_body.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: theMainLightColor,
        // drawer: Drawer(backgroundColor: kPrimaryColor),
        // appBar: AppBar(
        //   elevation: 0,
        //   // leading: IconButton(
        //   //   onPressed: () {
        //   //     // Get.back();
        //   //     Get.back();
        //   //   },
        //   //   icon: const Icon(
        //   //     Icons.arrow_back,
        //   //     color: kPrimaryColor,
        //   //   ),
        //   // ),

        //   // leading: Icon(
        //   //   Icons.arrow_back,
        //   //   color: kPrimaryColor,
        //   // ),
        //   backgroundColor: theMainLightColor,
        //   centerTitle: true,
        //   title: const Text(
        //     'Setting',
        //     style: TextStyle(
        //       color: kPrimaryColor,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        // ),

        // appBar: TheAppBar({Key? key}) ,
        body: SettingScreenBody(),
        bottomNavigationBar: const TheBottomNavBar(),
      ),
    );
  }
}
