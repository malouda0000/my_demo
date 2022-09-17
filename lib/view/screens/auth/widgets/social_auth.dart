import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/view/screens/about%20screen/widgets/communication_icon.dart';
import '../../../../core/localization/localization.dart';
import '../../about screen/widgets/communication_icon.dart';

class SocialAuthRow extends StatelessWidget {
  const SocialAuthRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CommuincationIcon(
          CommuincationIconTitle: AppLocal.facebook.tr,
          theIcon: Icons.facebook_rounded,

          theUrlLanching: () {
            GetSnackBar(
              message: 'logIn with sochialmedia',
            );
          },

          // theUrlLanching: (){},
        ),
        CommuincationIcon(
          CommuincationIconTitle: AppLocal.email.tr,
          theIcon: Icons.email_outlined,

          theUrlLanching: () {
            GetSnackBar(
              message: 'logIn with sochialmedia',
            );
          },

          // theUrlLanching: (){},
        ),
        CommuincationIcon(
          CommuincationIconTitle: AppLocal.phone.tr,
          theIcon: Icons.phone_outlined,

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
