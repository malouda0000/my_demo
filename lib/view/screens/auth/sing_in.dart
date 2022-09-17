import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/auth_controller.dart';
import 'package:my_demo/view/screens/auth/widgets/custom_auth_card.dart';
import 'package:my_demo/view/screens/auth/widgets/social_auth.dart';
import '../../../core/constants/app_color.dart';
import 'package:my_demo/get_pages.dart';
import '../../../core/constants/constants.dart';
import '../../../core/localization/localization.dart';
import '../../../core/shared/app_id.dart';
import '../../../core/shared/big_button.dart';
import '../../../core/shared/the_input_field.dart';
import 'widgets/dont_have_account.dart';
import 'widgets/or_row.dart';

class SingInScreen extends StatelessWidget {
  const SingInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find();
    return CustomAuthCard(
      authFealds: Column(
        children: [
          AppId(),
          const SizedBox(
            height: 20,
          ),
          TheInputField(
            theInputType: TextInputType.text,
            theBorderColor: AppColor.kPrimaryColor,
            theBorderRadius: theDefaultRaduis,
            theHient: AppLocal.email.tr,
            theInputColor: Theme.of(context).textTheme.bodyText1!.color!,
            theLeadingIcon: Icons.email_outlined,
            thePadding: theDefaultPadding,
            isPassword: false,
          ),
          emptySpace,
          TheInputField(
            theInputType: TextInputType.text,
            theBorderColor: AppColor.kPrimaryColor,
            theBorderRadius: theDefaultRaduis,
            theHient: AppLocal.password.tr,
            theInputColor: Theme.of(context).textTheme.bodyText1!.color!,
            theLeadingIcon: Icons.password_outlined,
            thePadding: theDefaultPadding,
            isPassword: true,
          ),
          emptySpace,
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: BigggButton(
              onTaped: () {
                authController.singIn();
              }

              // Navigator.of(context).pushReplacement(
              //     MaterialPageRoute(builder: (context) {
              //   return MyHomePage();
              // }));
              ,
              // theBackgrounColor: ksecondaryColor,
              theButtonTitle: AppLocal.singIn.tr,

              theLeadingIcon: Icons.login_rounded,
            ),

            // child: MaterialButton(
            //     child: Text('tab me'),
            //     onPressed: () {
            //       () => Get.to(MyHomePage());
            //     }),
          ),
          emptySpace,
          OrRow(),
          emptySpace,
          SocialAuthRow(),
          emptySpace,
          DontHaveAccount(
            doYouHaveAccoun: AppLocal.dontHaveAccountYet.tr,
            singOrLogin: AppLocal.singUpNow.tr,
            theFunc: () => Get.toNamed(AppRoute.singUpScreen),
          ),
        ],
      ),
    );
  }
}
