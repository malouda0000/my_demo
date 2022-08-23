import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/constans/app_images.dart';
import 'package:my_demo/constans/constants.dart';
import 'package:my_demo/constans/routes.dart';
import 'package:my_demo/localization/localization.dart';
import 'package:my_demo/screens/auth/social_auth.dart';
import 'package:my_demo/screens/home/my_home_page.dart';
import 'package:my_demo/widgets/app_id.dart';
import 'package:my_demo/widgets/backgroundContainer.dart';
import 'package:my_demo/widgets/big_button.dart';
import 'package:my_demo/widgets/the_input_feaild.dart';

import 'dont_have_account.dart';
import 'or_row.dart';
import '../../../constans/app_color.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: AppColor.kPrimaryColor,
        body: Stack(
      children: [
        BackgrounContainer(),
        Center(
          child: Padding(
            padding: EdgeInsets.all(25),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: theDefaultRaduis,
                        color: AppColor.kTextBlacColor,
                        // color: Colors.red,
                      ),
                    ],
                    color: AppColor.theMainLightColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppId(titleColor: AppColor.theMainLightColor),

                    emptySpace,
                    TheIputFeaild(
                      isPassword: false,
                      textInputType: TextInputType.text,
                      theSize: Get.width,
                      theHint: AppLocal.Email.tr,
                      theLeadingIcon: Icons.email_outlined,
                      backgroundColor: AppColor.theMainLightColor,
                    ),
                    emptySpace,

                    TheIputFeaild(
                      isPassword: true,
                      textInputType: TextInputType.text,
                      theSize: Get.width,
                      theHint: AppLocal.password.tr,
                      theLeadingIcon: Icons.password_rounded,
                      backgroundColor: AppColor.theMainLightColor,
                    ),
                    emptySpace,
                    TheIputFeaild(
                      isPassword: true,
                      textInputType: TextInputType.text,
                      theSize: Get.width,
                      theHint: AppLocal.reinterPassword.tr,
                      theLeadingIcon: Icons.password_rounded,
                      backgroundColor: AppColor.theMainLightColor,
                    ),
                    emptySpace,
                    BigggButton(
                      onTaped: () => Get.offAll(MyHomePage())

                      // Navigator.of(context).pushReplacement(
                      //     MaterialPageRoute(builder: (context) {
                      //   return MyHomePage();
                      // }));
                      ,
                      // theBackgrounColor: ksecondaryColor,
                      theButtonTitle: AppLocal.singUp.tr,
                      theLeadingIcon: Icons.login_rounded,

                      leadingIconColor: AppColor.theMainLightColor,

                      buttonTitleColor: AppColor.theMainLightColor,

                      // child: MaterialButton(
                      //     child: Text('tab me'),
                      //     onPressed: () {
                      //       () => Get.to(MyHomePage());
                      //     }),
                    ),

                    // BigggButton(
                    //   onTaped: () {
                    //     Get.offAll(() => MyHomePage());
                    //     print('tabeded');
                    //     // Navigator.of(context).pushReplacement(
                    //     //     MaterialPageRoute(builder: (context) {
                    //     //   return MyHomePage();
                    //     // }));
                    //   },
                    //   // theBackgrounColor: ksecondaryColor,
                    //   theButtonTitle: 'LogIn',
                    //   theLeadingIcon: Icons.login_rounded,
                    // ),

                    emptySpace,
                    OrRow(),
                    emptySpace,
                    SocialAuthRow(),
                    emptySpace,
                    DontHaveAccount(
                      doYouHaveAccoun: AppLocal.allredyHaveAccount.tr,
                      singOrLogin: AppLocal.singIn.tr,
                      theFunc: () => Get.toNamed(AppRoute.singInScreen),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
