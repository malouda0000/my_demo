import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/auth/verify_code_controller_for_reset_pass.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/shared/app_id.dart';
import 'package:my_demo/core/shared/big_button.dart';
import 'package:my_demo/core/shared/title_builder.dart';
import 'package:my_demo/view/screens/auth/widgets/custom_auth_card.dart';
import 'package:otp_text_field/style.dart';

import 'package:otp_text_field/otp_text_field.dart';

class VerifyCodeScreenForResetPass extends StatelessWidget {
  const VerifyCodeScreenForResetPass({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerForResetPassImp verifyCodeControllerForResetPassImp =
        Get.put(VerifyCodeControllerForResetPassImp());

    return CustomAuthCard(
      authFealds: Form(
        key: verifyCodeControllerForResetPassImp.verifyCodeKeyForResetPass,
        child: Column(
          children: [
            AppId(),
            TitleBuilder(theTitle: 'enter verification code'),
            // emptySpace,

            OTPTextField(
              length: 6,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 50,
              outlineBorderRadius: theDefaultRaduis,
              keyboardType: TextInputType.numberWithOptions(),
              otpFieldStyle: OtpFieldStyle(
                // disabledBorderColor:
                // backgroundColor: AppColor.kPrimaryColor.withOpacity(.2),
                // disabledBorderColor: AppColor.kPrimaryColor,

                borderColor: AppColor.kPrimaryColor,
                enabledBorderColor: AppColor.kPrimaryColor,
              ),
              style: TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            emptySpace,
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: BigggButton(
                // verifyButton
                onTaped: () {
                  verifyCodeControllerForResetPassImp.goToResetPassword();
                },
                theButtonTitle: 'verify',
                theLeadingIcon: Icons.done_rounded,
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
            //     verifyCodeControllerForResetPassImp.goToSignUp();
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
