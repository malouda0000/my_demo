import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/auth/signup_controller.dart';
import 'package:my_demo/view/screens/auth/widgets/custom_auth_card.dart';
import 'package:my_demo/view/screens/auth/widgets/social_auth.dart';
import '../../../core/constants/constants.dart';
import '../../../core/localization/localization.dart';
import '../../../core/shared/app_id.dart';
import '../../../core/shared/big_button.dart';
import '../../../core/shared/the_input_field.dart';
import 'widgets/dont_have_account.dart';
import 'widgets/or_row.dart';

GlobalKey<FormState> signupKey = new GlobalKey<FormState>();

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignupControllerImp signupControllerImp = Get.put(SignupControllerImp());

    ///
    // String? signupEmailText, signupPasswordText, signupPassworConfText;

    return CustomAuthCard(
      authFealds: Form(
        // key: signupControllerImp.signupKey,
        key: signupKey,
        child: Column(
          children: [
            AppId(),
            const SizedBox(
              height: 20,
            ),
            TheInputField(
              // email text feiald

              theValidator: (text) {
                return signupControllerImp.emailTextValidator(text);
              },
              theKey: signupControllerImp.signupEmailKey,
              theTextEditingController:
                  signupControllerImp.signupEmailController,
              theInputType: TextInputType.text,
              theHient: AppLocal.email.tr,
              theLeadingIcon: Icons.email_outlined,
              isPassword: false,
            ),
            emptySpace,
            TheInputField(
              // password text feiald

              theValidator: (text) {
                return signupControllerImp.passwordTextValidator(text);
              },
              theKey: signupControllerImp.signupPasswordKey,
              theTextEditingController:
                  signupControllerImp.signupPasswordController,
              theInputType: TextInputType.text,
              theHient: AppLocal.password.tr,
              theLeadingIcon: Icons.password_outlined,
              isPassword: true,
            ),
            emptySpace,
            TheInputField(
              // confirm password text feiald
              theValidator: (text) {
                return signupControllerImp.PasswordConfTextValidator(text);
              },
              theKey: signupControllerImp.signupPasswordConfKey,
              theTextEditingController:
                  signupControllerImp.signupPasswordConfController,
              theInputType: TextInputType.text,
              // theBorderColor: AppColor.kPrimaryColor,
              // theBorderRadius: ,
              theHient: AppLocal.password.tr,
              // theInputColor: Theme.of(context).textTheme.bodyText1!.color!,
              theLeadingIcon: Icons.password_outlined,

              isPassword: true,
            ),
            emptySpace,
            BigggButton(
              // signup button
              theButtonTitle: AppLocal.signUp.tr,
              theLeadingIcon: Icons.login_rounded,
              // onTaped: signupControllerImp.signup(),
              onTaped: () async {
                // bool test = signupKey.currentState!.validate();

                // if (test) {
                //   // authController.signup();
                //   signupControllerImp.signup();
                // };

                signupControllerImp.goToVerifyEmailScreen();
              },
            ),
            emptySpace,
            OrRow(),
            emptySpace,
            SocialAuthRow(),
            emptySpace,
            DontHaveAccount(
              doYouHaveAccoun: AppLocal.allredyHaveAccount.tr,
              signOrLogin: AppLocal.signIn.tr,
              theFunc: () {
                signupControllerImp.goToSignIn();
              },
            ),
          ],
        ),
      ),
    );
  }
}
