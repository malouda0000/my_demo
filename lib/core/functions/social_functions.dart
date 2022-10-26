import 'package:get/get.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/view/screens/Error/error_message_screen.dart';
import 'package:url_launcher/url_launcher.dart';

LaunchLinkedIn() async {
  Uri facebookUrl = Uri.parse(
    AppConstants.linkedIn,
  );

  if (!await launchUrl(facebookUrl)) {
    Get.to(ErrorMessageScreen());
  }
  ;
}

LaunchEmail() async {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: AppConstants.userEmail,
  );
  if (!await launchUrl(emailLaunchUri)) {
    Get.to(ErrorMessageScreen());
  }
  ;
}

LaunchPhone() async {
  Uri phoneNumber = Uri(
    scheme: 'tel',
    path: AppConstants.userPhone,
  );
  if (!await launchUrl(phoneNumber)) {
    Get.to(ErrorMessageScreen());
  }
  ;
}

LaunchGithub() async {
  // final Uri githubUri = Uri(
  //   scheme: 'https',
  //   path: 'https://github.com/malouda0000',
  // );

  Uri githubUri = Uri.parse(
    AppConstants.gitHub,
  );
  if (!await launchUrl(githubUri)) {
    Get.to(ErrorMessageScreen());
  }
  ;
}
