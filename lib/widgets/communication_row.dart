import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:my_demo/constants.dart';
// import 'package:my_demo/screens/Error/error_message_screen.dart';
import 'package:my_demo/screens/about%20screen/widgets/communication_icon.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher_string.dart';
// import 'package:url_launcher/link.dart';

class CommunicationRow extends StatelessWidget {
  const CommunicationRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CommuincationIcon(
          theIcon: Icons.work_outline,
          iconColor: kPrimaryColor,
          // theUrlLanching: () => LaunchFacebook(),
          theUrlLanching: () {
            // LaunchFacebook();
          },

          CommuincationIconTitle: 'linkedIn',

          // theUrlLanching: (){},
        ),
        const SizedBox(
          width: 20,
        ),
        CommuincationIcon(
          theIcon: Icons.email_outlined,
          iconColor: kPrimaryColor,
          theUrlLanching: () {
            // LaunchEmail();
          },
          CommuincationIconTitle: 'Email',
        ),
        const SizedBox(
          width: 20,
        ),
        CommuincationIcon(
          CommuincationIconTitle: 'callme',
          iconColor: kPrimaryColor,
          theIcon: Icons.call_outlined,
          theUrlLanching: () {
            // launchPhone();
          },
        ),
        const SizedBox(
          width: 20,
        ),
        CommuincationIcon(
          CommuincationIconTitle: 'github',
          iconColor: kPrimaryColor,
          theIcon: Icons.control_point,
          theUrlLanching: () {},
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}

// LaunchFacebook() async {
//   String url = 'https://linkedin.com/in/hummam-mohamed-hamza';

//   if (await canLaunchUrlString(url)) {
//     await launchUrlString(url);
//   } else {
//     return Get.to(() => ErrorMessageScreen());
//   }
//   ;
// }

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
