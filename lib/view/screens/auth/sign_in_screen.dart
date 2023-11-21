import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/auth/signin_controller.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/view/screens/auth/widgets/custom_auth_card.dart';
import 'package:my_demo/view/screens/auth/widgets/social_auth.dart';
import '../../../core/constants/constants.dart';
import '../../../core/localization/localization.dart';
import '../../../core/shared/app_id.dart';
import '../../../core/shared/big_button.dart';
import '../../../core/shared/the_input_field.dart';
import 'widgets/dont_have_account.dart';
import 'widgets/or_row.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignInControllerImp signInControllerImp = Get.put(SignInControllerImp());

    ///

    return CustomAuthCard(
      authFealds: Form(
        key: signInControllerImp.signinKey,
        child: Column(
          children: [
            AppId(),
            const SizedBox(
              height: 20,
            ),
            TheInputField(
              // email input field
              theValidator: (text) {
                return signInControllerImp.emailTextValidator(text);
              },
              theKey: signInControllerImp.signinEmailKey,
              theTextEditingController:
                  signInControllerImp.signinEmailTextController,
              theInputType: TextInputType.text,
              theHient: AppLocal.email.tr,
              theLeadingIcon: Icons.email_outlined,
              isPassword: false,
            ),
            emptySpace,
            GetBuilder<SignInControllerImp>(builder: (signInControllerImp) {
              return TheInputField(
                // password input field
                theValidator: (text) {
                  return signInControllerImp.passwordTextValidator(text);
                },
                theKey: signInControllerImp.signinPasswordKey,
                theTextEditingController:
                    signInControllerImp.signinPasswordTextController,
                theInputType: TextInputType.text,
                theHient: AppLocal.password.tr,
                theLeadingIcon: Icons.password_outlined,
                isPassword: signInControllerImp.dontShowPassword,
                onIconTap: () {
                  signInControllerImp.showPasswordOnOff();
                },
              );
            }),
            emptySpace,
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: BigggButton(
                // signin button
                onTaped: () async {
                  signInControllerImp.signIn();
                },
                theButtonTitle: AppLocal.signIn.tr,
                theLeadingIcon: Icons.login_rounded,
              ),

              // child: MaterialButton(
              //     child: Text('tab me'),
              //     onPressed: () {
              //       () => Get.to(MyHomePage());
              //     }),
            ),
            emptySpace,
            DontHaveAccount(
                doYouHaveAccoun: 'forget your password!!',
                signOrLogin: 'reset password',
                theFunc: () {
                  signInControllerImp.goToForgetPassword();
                }),
            emptySpace,
            OrRow(),
            emptySpace,
            SocialAuthRow(),
            emptySpace,
            DontHaveAccount(
              doYouHaveAccoun: AppLocal.dontHaveAccountYet.tr,
              signOrLogin: AppLocal.signUpNow.tr,
              theFunc: () {
                signInControllerImp.goToSignUp();
              },
            ),
            Center(
              child: GestureDetector(
                  onTap: () {
                    signInControllerImp.fackSignIn();
                  },
                  child: Text(
                    'signIn for debuging',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: AppColor.kPrimaryColor,
                        ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
