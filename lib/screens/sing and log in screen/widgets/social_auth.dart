import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/constants.dart';
import 'package:my_demo/screens/about%20screen/widgets/communication_icon.dart';

class SocialAuthRow extends StatelessWidget {
  const SocialAuthRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CommuincationIcon(
          CommuincationIconTitle: 'faceBook',
          theIcon: Icons.facebook_rounded,
          iconColor: theMainLightColor,
          theUrlLanching: () {
            GetSnackBar(
              message: 'logIn with sochialmedia',
            );
          },

          // theUrlLanching: (){},
        ),
        CommuincationIcon(
          CommuincationIconTitle: 'email',
          theIcon: Icons.email_outlined,
          iconColor: theMainLightColor,
          theUrlLanching: () {
            GetSnackBar(
              message: 'logIn with sochialmedia',
            );
          },

          // theUrlLanching: (){},
        ),
        CommuincationIcon(
          CommuincationIconTitle: 'phone',
          theIcon: Icons.phone_outlined,
          iconColor: theMainLightColor,
          theUrlLanching: () {
            GetSnackBar(
              message: 'logIn with sochialmedia',
            );
          },

          // theUrlLanching: (){},
        ),
      ],
    );
  }
}
