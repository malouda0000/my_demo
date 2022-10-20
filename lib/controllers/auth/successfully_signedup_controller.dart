import 'package:get/get.dart';
import 'package:my_demo/get_pages.dart';

abstract class SuccessfullySignedupController extends GetxController {
  goToSingIn();
}

class SuccessfullySignedupControllerImp extends SuccessfullySignedupController {
  @override
  goToSingIn() {
    Get.offAllNamed(AppRoute.signInScreen);
  }
}
