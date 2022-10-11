import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/bottom_nav_bar_controller.dart';

class TheBottomNavBar extends StatelessWidget {
  const TheBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // BottomNvaBarController  bottomNavBarController = Get.find();
    return GetBuilder<BottomNvaBarController>(
      builder: ((bottomNavBarController) => BottomNavigationBar(
            currentIndex: bottomNavBarController.theCurrentIndex,
            backgroundColor: Theme.of(context).bottomAppBarColor,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Theme.of(context).primaryColor,
            unselectedItemColor: Theme.of(context).iconTheme.color,
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
                  label: 'online food',
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
          )),
    );
  }
}
