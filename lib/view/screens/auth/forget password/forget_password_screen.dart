import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/auth/forget_password_controller.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/localization/localization.dart';
import 'package:my_demo/core/shared/app_id.dart';
import 'package:my_demo/core/shared/big_button.dart';
import 'package:my_demo/core/shared/the_input_field.dart';
import 'package:my_demo/core/shared/title_builder.dart';
import 'package:my_demo/view/screens/auth/widgets/custom_auth_card.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp forgetPasswordControllerImp =
        Get.put(ForgetPasswordControllerImp());

    return CustomAuthCard(
      authFealds: Form(
        key: forgetPasswordControllerImp.forgetPasswordKey,
        child: Column(
          children: [
            AppId(),
            TitleBuilder(theTitle: 'enter your email'),
            TheInputField(
              // email input field
              theValidator: (text) {
                return forgetPasswordControllerImp.emailTextValidator(text);
              },
              theKey: forgetPasswordControllerImp.signinEmailKey,
              theTextEditingController:
                  forgetPasswordControllerImp.signinEmailTextController,
              theInputType: TextInputType.text,
              theHient: AppLocal.email.tr,
              theLeadingIcon: Icons.email_outlined,
              isPassword: false,
            ),
            emptySpace,
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: BigggButton(
                // send me forget password email
                onTaped: () {
                  forgetPasswordControllerImp.goToVerifCode();
                },
                theButtonTitle: 'send res pass email',
                theLeadingIcon: Icons.password_rounded,
              ),
            ),
            emptySpace,
            // OrRow(),
            // emptySpace,
            // SocialAuthRow(),
            // emptySpace,
            // DontHaveAccount(
            //   doYouHaveAccoun: AppLocal.dontHaveAccountYet.tr,
            //   signOrLogin: AppLocal.signUpNow.tr,
            //   theFunc: () {
            //     forgetPasswordControllerImp.goToSignUp();
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
