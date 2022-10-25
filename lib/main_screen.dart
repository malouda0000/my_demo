import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/home_screen_controller.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/shared/bottom%20navigation%20bar/bottom_nav_bar.dart';
import 'package:my_demo/core/shared/bottom%20navigation%20bar/widgets/cust_bott_nav_item.dart';
import 'package:my_demo/core/shared/the%20appbar/the_app_bar.dart';
import 'package:my_demo/core/shared/the_drawer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    // Get.put(BottomNvaBarControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (homeScreenControllerImp) {
      return Scaffold(
        // backgroundColor: Colors.indigo,
        // key: myKey,
        drawer: const TheDrawer(),
        appBar: TheAppBar(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColor.kPrimaryColor,
          onPressed: () {},
          child: CustBottomNavItem(
            theIndex: 2,
          ),
        ),
        bottomNavigationBar: TheBottomNavBar(),
        body: homeScreenControllerImp.mainAppScreens
            .elementAt(homeScreenControllerImp.currentHomeScreen),
      );
    });
  }
}
