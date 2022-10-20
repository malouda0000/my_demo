import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/auth/successfully_reseted_password_controller.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/shared/app_id.dart';
import 'package:my_demo/core/shared/big_button.dart';
import 'package:my_demo/core/shared/title_builder.dart';
import 'package:my_demo/view/screens/auth/widgets/custom_auth_card.dart';

GlobalKey<FormState> successfullyResetedPassword = new GlobalKey<FormState>();

class SuccessfullyResetedPasswordScreen extends StatelessWidget {
  const SuccessfullyResetedPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessfullyResetedPasswordControllerImp
        successfullyResetedPasswordControllerImp =
        Get.put(SuccessfullyResetedPasswordControllerImp());

    return CustomAuthCard(
      authFealds: Form(
        key: successfullyResetedPassword,
        child: Column(
          children: [
            AppId(),
            TitleBuilder(theTitle: 'password reseted successfully'),
            Container(
              padding: EdgeInsets.all(theDefaultPadding),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColor.kPrimaryColor,
                  )),
              child: Icon(
                Icons.done_rounded,
                size: 40,
                color: AppColor.kPrimaryColor,
              ),
            ),
            emptySpace,
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: BigggButton(
                // go sign in page
                onTaped: () async {
                  successfullyResetedPasswordControllerImp.goToSingIn();
                },
                theButtonTitle: 'go to singIn',
                theLeadingIcon: Icons.logout_rounded,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
