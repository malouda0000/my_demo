import 'package:get/get.dart';
import 'package:my_demo/controllers/adding_meal_controller.dart';
import 'package:my_demo/controllers/auth_controller.dart';
import 'package:my_demo/controllers/bottom_nav_bar_controller.dart';
import 'package:my_demo/controllers/cart_controller.dart';
import 'package:my_demo/controllers/localization_controller.dart';

class MyInitalBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartController(), fenix: true);
    Get.put(BottomNvaBarController(), permanent: true);
    Get.lazyPut(() => AuthController(), fenix: true);
  }
}

class AddingMealBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddingMealController(), fenix: true);
  }
}

class CartBindings implements Bindings {
  @override
  void dependencies() {}
}

class LocalizationBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(MylocalController());
  }
}
