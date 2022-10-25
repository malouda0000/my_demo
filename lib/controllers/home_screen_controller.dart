import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/view/screens/about%20screen/about_screen.dart';
import 'package:my_demo/view/screens/cart%20screen/cart_screen.dart';
import 'package:my_demo/view/screens/home/home_screen.dart';
import 'package:my_demo/view/screens/meals%20from%20api/meals_from_api.dart';
import 'package:my_demo/view/screens/setting/setting_screen.dart';

abstract class HomeScreenController extends GetxController {
  onPageChanged(int index);
  onPageJumpededTo(int index);

  /* 
    changeHomeScreen() is for changing the body
    of the main scaffold
  */
  changeHomeScreenBody(int index);
}

class HomeScreenControllerImp extends GetxController {
  /* 
    used for the home screen and its pages 
    and taps, like bigburgger, hotdoge, pitzaa,
  */
  late PageController pageController;
  int currentPage = 0;

  /*
    used for the for the bottom nav bar, and changing the 
    body of the main scaffold
  */
  int currentHomeScreen = 0;

  List<IconData> bottomNavIcons = [
    /* 
    used for the bottom navigation bar
    */
    Icons.home_rounded,
    Icons.food_bank_rounded,
    Icons.shop_2_rounded,
    Icons.settings_rounded,
    Icons.more_rounded,
  ];
  List<Widget> mainAppScreens = [
    /*
this are the body of the main scaffold, and they are changed
when you chang the bottom nav bar icon, or on pressing the bottom nav bar

    */
    HomeScreen(),
    MealsFromApi(),
    CartScreen(),
    SettingScreen(),
    AboutScreen(),
  ];
  int theCurrentIndex = 0;

  changeHomeScreenBody(index) {
/*
used to change the body of the main scaffold 
*/
    currentHomeScreen = index;
    // Get.offAll(MainAppScreens[index]);
    update();
  }

  @override
  void onInit() {
    pageController = PageController();

    print('homeContr is initlaized ============================');

    super.onInit();
  }

  onPageJumpededTo(int index) {
    // i have used two methodes to animate and jump to pages
    // i'm not sure why i can't use the same one for changing
    // the index and the current page, and also animate the home page
    // view builder. so at the end i used two methodes.
    // and this is method No : 1 .
    currentPage = index;
    pageController.jumpToPage(
      index,
      // curve: Curves.slowMiddle,
      // duration: Duration(
      //   milliseconds: 500,
      // ),
    );

    print('page has jumpded to $index ============================ ');
    update();
  }

  onPageChanged(int index) {
    // i have used two methodes to animate and jump to pages
    // i'm not sure why i can't use the same one for changing
    // the index and the current page, and also animate the home page
    // view builder. so at the end i used two methodes.
    // and this is method No : 2 .
    print("onPageChanged");
    currentPage = index;

    // pageController.animateToPage(currentPage,
    //     duration: Duration(milliseconds: 900), curve: Curves.easeInOut);

    pageController.animateToPage(
      currentPage,
      duration: Duration(milliseconds: 900),
      curve: Curves.easeInOut,
    );

    print('page is changed to $index ============================ ');
    update();
  }

  // onPageJumpededTo(int index) async {
  //   await pageController
  //       .animateToPage(
  //         index,
  //         curve: Curves.slowMiddle,
  //         duration: Duration(
  //           milliseconds: 500,
  //         ),
  //       )
  //       .then((value) => {currentPage = index})
  //       .then((value) => {update});

  //   print('page has jumpded to $index ============================ ');
  //   update();
  // }
}
