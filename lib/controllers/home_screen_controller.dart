import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController {
  onPageChanged(int index);
}

class HomeScreenControllerImp extends HomeScreenController {
  late PageController pageController;
  int currentPage = 0;

  @override
  void onInit() {
    pageController = PageController();

    print('homeContr is initlaized ============================');

    super.onInit();
  }

  @override
  onPageChanged(int index) {
    currentPage = index;

    print('page is changed ============================');
    update();
  }
}
