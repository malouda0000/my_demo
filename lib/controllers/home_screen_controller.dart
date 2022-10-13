import 'dart:developer';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController {
  onPageChanged(int index);
}

class HomeScreenControllerImp extends GetxController {
  late PageController pageController;
  int currentPage = 0;

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
