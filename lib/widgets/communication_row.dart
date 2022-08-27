import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/localization/localization.dart';
import '../../../constans/app_color.dart';
import 'package:my_demo/screens/about%20screen/widgets/communication_icon.dart';
import 'package:url_launcher/url_launcher.dart';
import '../screens/Error/error_message_screen.dart';

class CommunicationRow extends StatelessWidget {
  const CommunicationRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CommuincationIcon(
          theIcon: Icons.work_outline,
          iconColor: AppColor.kPrimaryColor,
          // theUrlLanching: () => LaunchFacebook(),
          theUrlLanching: () {
            LaunchFacebook();
          },

          CommuincationIconTitle: AppLocal.linkedIn.tr,

          // theUrlLanching: (){},
        ),
        const SizedBox(
          width: 20,
        ),
        CommuincationIcon(
          theIcon: Icons.email_outlined,
          iconColor: AppColor.kPrimaryColor,
          theUrlLanching: () {
            // LaunchEmail();
            LaunchEmail();
          },
          CommuincationIconTitle: AppLocal.email.tr,
        ),
        const SizedBox(
          width: 20,
        ),
        CommuincationIcon(
          CommuincationIconTitle: AppLocal.callMe.tr,
          iconColor: AppColor.kPrimaryColor,
          theIcon: Icons.call_outlined,
          theUrlLanching: () {
            // launchPhone();
            LaunchPhone();
          },
        ),
        const SizedBox(
          width: 20,
        ),
        CommuincationIcon(
          CommuincationIconTitle: AppLocal.myGithub.tr,
          iconColor: AppColor.kPrimaryColor,
          theIcon: Icons.control_point,
          theUrlLanching: () {
            LaunchGithub();
          },
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}

LaunchFacebook() async {
  Uri facebookUrl = Uri.parse('https://linkedin.com/in/hummam-mohamed-hamza');

  if (!await launchUrl(facebookUrl)) {
    Get.to(ErrorMessageScreen());
  }
  ;
}

LaunchEmail() async {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'hamam.hamza85@gmail.com',
  );
  if (!await launchUrl(emailLaunchUri)) {
    Get.to(ErrorMessageScreen());
  }
  ;
}

LaunchPhone() async {
  Uri phoneNumber = Uri(
    scheme: 'tel',
    path: '+249928722310',
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

  Uri githubUri = Uri.parse('https://github.com/malouda0000');
  if (!await launchUrl(githubUri)) {
    Get.to(ErrorMessageScreen());
  }
  ;
}



// LaunchEmail() async {
//   // Uri url;

//   final mailtoUri = Uri(
//     path: 'hamam.hamza85@gmail.com',
//   );
//   print(mailtoUri); // mailto:John.Doe@example.com?subject=Example

//   if (await canLaunchUrl(mailtoUri)) {
//     await LaunchEmail();
//   } else {
//     return Get.to(() => ErrorMessageScreen());
//   }

//   ;
// }

// launchPhone() async {
//   // Uri url;

//   final mailtoUri = Uri(
//     path: 'hamam.hamza85@gmail.com',
//   );
//   print(mailtoUri); // mailto:John.Doe@example.com?subject=Example

//   if (await canLaunchUrl(mailtoUri)) {
//     await LaunchEmail();
//   } else {
//     return Get.to(() => ErrorMessageScreen());
//   }

//   ;
// }
