import 'package:get/get.dart';
import 'package:my_demo/controllers/adding_meal_controller.dart';
import 'package:my_demo/controllers/api_controller.dart';
import 'package:my_demo/controllers/bottom_nav_bar_controller.dart';
import 'package:my_demo/controllers/cart_controller.dart';
import 'package:my_demo/controllers/localization_controller.dart';

class MyInitalBindings implements Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(() => CartController(), fenix: true);
    await Get.put(BottomNvaBarController(), permanent: true);
    // Get.lazyPut(() => AuthController(), fenix: true);
    Get.lazyPut(() => ApiController(), fenix: true);
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
