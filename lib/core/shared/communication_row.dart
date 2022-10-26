import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/functions/social_functions.dart';
import '../../view/screens/about screen/widgets/communication_icon.dart';
import '../localization/localization.dart';

class CommunicationRow extends StatelessWidget {
  const CommunicationRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CommuincationIcon(
          theIcon: Icons.work_outline,

          // theUrlLanching: () => LaunchFacebook(),
          theUrlLanching: () {
            LaunchLinkedIn();
          },

          CommuincationIconTitle: AppLocal.linkedIn.tr,

          // theUrlLanching: (){},
        ),
        const SizedBox(
          width: 20,
        ),
        CommuincationIcon(
          theIcon: Icons.email_outlined,
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
