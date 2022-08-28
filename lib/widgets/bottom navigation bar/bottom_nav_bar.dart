import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/bottom_nav_bar_controller.dart';
import '../../../constans/app_color.dart';

class TheBottomNavBar extends StatelessWidget {
  const TheBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // BottomNvaBarController bottomNavBarController = Get.find();
    return GetBuilder<BottomNvaBarController>(
        builder: ((bottomNavBarController) => BottomNavigationBar(
              currentIndex: bottomNavBarController.theCurrentIndex,
              backgroundColor: AppColor.theMainLightColor,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: AppColor.kPrimaryColor,
              unselectedItemColor: AppColor.kTextColor,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: (index) {
                bottomNavBarController.changeTap(index);
              },
              items: const [
                BottomNavigationBarItem(
                    label: 'home',
                    icon: Icon(
                      Icons.home_outlined,
                    )),
                BottomNavigationBarItem(
                    label: 'detials',
                    icon: Icon(
                      Icons.details_outlined,
                    )),
                BottomNavigationBarItem(
                    label: 'setting',
                    icon: Icon(
                      Icons.settings_outlined,
                    )),
                BottomNavigationBarItem(
                    label: 'about',
                    icon: Icon(
                      Icons.more_outlined,
                    )),
              ],
            )));
  }
}
