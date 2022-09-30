import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/localization_controller.dart';

mySendEmailVervication() async {
  LocallizationsController locallizationsController = Get.find();

  /* seding email to verify user, and sending it in the user lang */
  await FirebaseAuth.instance.setLanguageCode(
    locallizationsController.emailVerLang(),
  );
  final user = FirebaseAuth.instance.currentUser;
  await user?.sendEmailVerification();

//
//
}
