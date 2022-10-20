import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/auth/reset_password_controller.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/localization/localization.dart';
import 'package:my_demo/core/shared/app_id.dart';
import 'package:my_demo/core/shared/big_button.dart';
import 'package:my_demo/core/shared/the_input_field.dart';

import 'package:my_demo/core/shared/title_builder.dart';
import 'package:my_demo/view/screens/auth/widgets/custom_auth_card.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp resetPasswordControllerImp =
        Get.put(ResetPasswordControllerImp());

    ///
    // String? signupEmailText, signupPasswordText, signupPassworConfText;

    return CustomAuthCard(
      authFealds: Form(
        // key: ResetPasswordControllerImp.signupKey,
        key: resetPasswordControllerImp.resetPasswordKey,
        child: Column(
          children: [
            AppId(),
            TitleBuilder(theTitle: 'reset password'),
            TheInputField(
              // new password text feild

              theValidator: (text) {
                // return resetPasswordControllerImp.reset();
                return resetPasswordControllerImp
                    .newPasswordTextValidator(text!);
              },
              theKey: resetPasswordControllerImp.newPasswordKey,
              theTextEditingController:
                  resetPasswordControllerImp.newPasswordTextController,
              theInputType: TextInputType.text,
              theHient: AppLocal.password.tr,
              theLeadingIcon: Icons.password_outlined,
              isPassword: true,
            ),
            emptySpace,
            TheInputField(
              // new password confirm text feiald

              theValidator: (text) {
                return resetPasswordControllerImp
                    .newPasswordConfTextValidator(text!);
              },
              theKey: resetPasswordControllerImp.newPasswordConfKey,
              theTextEditingController:
                  resetPasswordControllerImp.newPasswordConfTextController,
              theInputType: TextInputType.text,
              theHient: AppLocal.reinterPassword.tr,
              theLeadingIcon: Icons.password_outlined,
              isPassword: true,
            ),
            emptySpace,
            BigggButton(
              // reset password button
              theButtonTitle: AppLocal.done.tr,
              theLeadingIcon: Icons.done,
              onTaped: () {
                resetPasswordControllerImp.reset(
                    // resetPasswordControllerImp.newPasswordTextController.text

                    );
              },
            ),
            emptySpace,
            // OrRow(),
            // emptySpace,
            // SocialAuthRow(),
            // emptySpace,
            // DontHaveAccount(
            //   doYouHaveAccoun: AppLocal.allredyHaveAccount.tr,
            //   signOrLogin: AppLocal.signIn.tr,
            //   theFunc: () {
            //     resetPasswordControllerImp.goToSignIn();
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
