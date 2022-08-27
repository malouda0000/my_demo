import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constans/app_color.dart';

import '../../screens/about screen/about_screen.dart';
import '../../screens/detials screen/detials_screen.dart';
import '../../screens/home/my_home_page.dart';
import '../../screens/setting/setting_screen.dart';

List<Function> MainAppScreens = [
  () => MyHomePage(),
  () => DetialsScreen(),
  () => SettingScreen(),
  () => AboutScreen(),
];

class TheBottomNavBar extends StatelessWidget {
  const TheBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int theCurrentIndex = 0;
    return BottomNavigationBar(
        backgroundColor: AppColor.theMainLightColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColor.kPrimaryColor,
        unselectedItemColor: AppColor.kTextColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: theCurrentIndex,
        onTap: (index) {
          // setState(() {
          // });
          Get.to(MainAppScreens[index]);
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
        ]);
  }
}
