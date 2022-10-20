import 'package:get/get.dart';
import 'package:my_demo/get_pages.dart';

abstract class SuccessfullyResetedPasswordController extends GetxController {
  goToSingIn();
}

class SuccessfullyResetedPasswordControllerImp
    extends SuccessfullyResetedPasswordController {
  @override
  goToSingIn() {
    Get.offAllNamed(AppRoute.signInScreen);
  }
}
