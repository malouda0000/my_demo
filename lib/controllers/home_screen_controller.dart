import 'dart:developer';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

// abstract class HomeScreenController extends GetxController {
//   onPageChanged(int index);
// }

class HomeScreenControllerImp extends GetxController {
  late PageController pageController;
  int currentPage = 0;

  @override
  void onInit() {
    pageController = PageController();

    print('homeContr is initlaized ============================');

    super.onInit();
  }

  onPageChanged(int index) {
    print("onPageChanged");
    currentPage = index;

    // pageController.animateToPage(currentPage,
    //     duration: Duration(milliseconds: 900), curve: Curves.easeInOut);

    pageController.animateToPage(currentPage,
        duration: Duration(milliseconds: 900), curve: Curves.easeInOut);

    print('page is changed to $index ============================ ');
    update();
  }
}
