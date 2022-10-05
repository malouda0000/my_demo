import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/auth_controller.dart';
import 'package:my_demo/controllers/localization_controller.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/view/screens/auth/widgets/check_email_dialog.dart';
import 'package:my_demo/view/screens/auth/widgets/custom_auth_card.dart';
import 'package:my_demo/view/screens/auth/widgets/social_auth.dart';
import 'package:my_demo/get_pages.dart';
import '../../../core/constants/constants.dart';
import '../../../core/localization/localization.dart';
import '../../../core/shared/app_id.dart';
import '../../../core/shared/big_button.dart';
import '../../../core/shared/the_input_field.dart';
import 'widgets/dont_have_account.dart';
import 'widgets/or_row.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find();

    ///
    GlobalKey<FormState> signupKey = new GlobalKey<FormState>();

    //
    Key signupEmailKey = new Key('');
    Key signupPasswordKey = new Key('');
    Key signupPasswordConfKey = new Key('');

    ////
    TextEditingController signupEmailController = TextEditingController();
    TextEditingController signupPasswordController = TextEditingController();
    TextEditingController signupPasswordConfController =
        TextEditingController();

    ///
    // String? signupEmailText, signupPasswordText, signupPassworConfText;

    return CustomAuthCard(
      authFealds: Form(
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
                text = signupEmailController.text;
                if (text.length < 6) {
                  return AppLocal.emailIsTooShourt.tr + '\n';
                }
                if (text.length > 50) {
                  return AppLocal.emailIsTooLong.tr + '\n';
                }
                return null;
              },
              theKey: signupEmailKey,
              theTextEditingController: signupEmailController,
              theInputType: TextInputType.text,
              theHient: AppLocal.email.tr,
              theLeadingIcon: Icons.email_outlined,
              isPassword: false,
            ),
            emptySpace,
            TheInputField(
              // password text feiald

              theValidator: (text) {
                text = signupPasswordController.text;

                if (text.length < 6) {
                  return AppLocal.passwordIsTooShourt.tr + '\n';
                }
                if (text.length > 25) {
                  return AppLocal.passwordIsTooLong.tr + '\n';
                }
                return null;
              },
              theKey: signupPasswordKey,
              theTextEditingController: signupPasswordController,
              theInputType: TextInputType.text,
              theHient: AppLocal.password.tr,
              theLeadingIcon: Icons.password_outlined,
              isPassword: true,
            ),
            emptySpace,
            TheInputField(
              // confirm password text feiald
              theValidator: (text) {
                text = signupPasswordConfController.text;

                if (signupPasswordController.text != text) {
                  // first it makes sure that pass one
                  // == pass two, and then contnue
                  return AppLocal.passwordsAreNotEqual.tr + '\n';
                }
                return null;
              },
              theKey: signupPasswordConfKey,
              theTextEditingController: signupPasswordConfController,
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
              onTaped: () async {
                bool test = signupKey.currentState!.validate();

                if (test) {
                  // authController.signup();
                  try {
                    final credential = await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                      email: signupEmailController.text,
                      password: signupPasswordController.text,
                    );

                    if (credential.user?.uid != null) {
                      // GetSnackBar(
                      //   message: 'check your email to verfiy it',
                      // );
                      Get.offAllNamed(AppRoute.signInScreen);
                      checkYourEmailDialog(context);
                    }
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password') {
                      signupPasswordKey.printError();
                      print('The password provided is too weak.');
                    } else if (e.code == 'email-already-in-use') {
                      print('The account already exists for that email.');
                    }
                  } catch (e) {
                    print(e);
                  }
                }
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
              theFunc: () => Get.toNamed(AppRoute.signInScreen),
            ),
          ],
        ),
      ),
    );
  }
}
