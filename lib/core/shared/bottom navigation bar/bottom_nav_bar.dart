import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/bottom_nav_bar_controller.dart';
import 'package:my_demo/core/constants/app_color.dart';

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
                      Icons.home_rounded,
                    )),
                BottomNavigationBarItem(
                    label: 'menu',
                    icon: Icon(
                      Icons.food_bank_rounded,
                    )),
                BottomNavigationBarItem(
                    label: 'cart',
                    icon: Icon(
                      Icons.shop_2_rounded,
                    )),
                BottomNavigationBarItem(
                    label: 'setting',
                    icon: Icon(
                      Icons.settings_rounded,
                    )),
                BottomNavigationBarItem(
                    label: 'about',
                    icon: Icon(
                      Icons.more_rounded,
                    )),
              ],
            )));
  }
}
