import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/home_screen_controller.dart';
import 'package:my_demo/core/constants/app_color.dart';

class CustBottomNavItem extends StatelessWidget {
  final int theIndex;
  CustBottomNavItem({
    Key? key,
    required this.theIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(
        builder: ((homeScreenControllerImp) {
      return SizedBox(
        width: 65,
        child: MaterialButton(
          splashColor: Colors.transparent,

          animationDuration: Duration(
            seconds: 1,
          ),
          // minWidth: 0,
          onPressed: () {
            homeScreenControllerImp.changeHomeScreenBody(theIndex);
          },
          child: Row(
            children: [
              // theIndex == 0 ? Spacer() : SizedBox(),
              Icon(
                homeScreenControllerImp.bottomNavIcons[theIndex],
                color: theIndex == homeScreenControllerImp.currentHomeScreen
                    ? AppColor.kPrimaryColor
                    : AppColor.kTextColor,
                // size: theIndex == homeScreenControllerImp.currentHomeScreen
                //     ? 28
                //     : 20,

                size: 20,
              ),
              // theIndex == bottomNavBarControllerImp.mainAppScreens.length
              //     ? Spacer()
              //     : SizedBox(),
            ],
          ),
        ),
      );
    }));
  }
}
