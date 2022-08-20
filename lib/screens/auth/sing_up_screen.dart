import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/constans/app_images.dart';
import 'package:my_demo/constans/constants.dart';
import 'package:my_demo/constans/routes.dart';
import 'package:my_demo/screens/auth/social_auth.dart';
import 'package:my_demo/screens/home/my_home_page.dart';
import 'package:my_demo/widgets/backgroundContainer.dart';
import 'package:my_demo/widgets/big_button.dart';
import 'package:my_demo/widgets/the_input_feaild.dart';

import 'dont_have_account.dart';
import 'or_row.dart';

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
                    color: AppColor.kPrimaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: AppColor.theMainLightColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        AppImages.mainIcon,
                        width: Get.width * 0.3,
                      ),
                    ),
                    emptySpace,
                    Text(
                      'PnukFood',
                      style: TextStyle(
                        color: AppColor.theMainLightColor,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    emptySpace,
                    TheIputFeaild(
                      isPassword: false,
                      textInputType: TextInputType.text,
                      theSize: Get.width,
                      theHint: 'email',
                      theLeadingIcon: Icons.email_outlined,
                      backgroundColor: AppColor.theMainLightColor,
                    ),
                    emptySpace,

                    TheIputFeaild(
                      isPassword: true,
                      textInputType: TextInputType.text,
                      theSize: Get.width,
                      theHint: 'password',
                      theLeadingIcon: Icons.password_rounded,
                      backgroundColor: AppColor.theMainLightColor,
                    ),
                    emptySpace,
                    TheIputFeaild(
                      isPassword: true,
                      textInputType: TextInputType.text,
                      theSize: Get.width,
                      theHint: 'reInter password',
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
                      theButtonTitle: 'Sing Up',
                      theLeadingIcon: Icons.login_rounded,

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
                      doYouHaveAccoun: 'Allredy have account  !!',
                      singOrLogin: 'SingIn Now',
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
