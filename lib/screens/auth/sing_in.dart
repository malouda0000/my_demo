import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/constans/constants.dart';
import 'package:my_demo/constans/routes.dart';
import 'package:my_demo/screens/auth/social_auth.dart';
import 'package:my_demo/screens/home/my_home_page.dart';
import 'package:my_demo/widgets/backgroundContainer.dart';
import 'package:my_demo/widgets/big_button.dart';
import 'package:my_demo/widgets/the_input_feaild.dart';

import '../../widgets/app_id.dart';
import 'dont_have_account.dart';
import 'or_row.dart';
import '../../../constans/app_color.dart';

class SingInScreen extends StatelessWidget {
  const SingInScreen({Key? key}) : super(key: key);

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
                    AppId(titleColor: AppColor.theMainLightColor),
                    emptySpace,
                    TheIputFeaild(
                      isPassword: false,
                      textInputType: TextInputType.name,
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
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: BigggButton(
                        onTaped: () => Get.offAll(MyHomePage())

                        // Navigator.of(context).pushReplacement(
                        //     MaterialPageRoute(builder: (context) {
                        //   return MyHomePage();
                        // }));
                        ,
                        // theBackgrounColor: ksecondaryColor,
                        theButtonTitle: 'SingIn',
                        theLeadingIcon: Icons.login_rounded,
                      ),

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
                      doYouHaveAccoun: 'Dot\'t have account yet !!',
                      singOrLogin: 'SingUp Now',
                      theFunc: () => Get.toNamed(AppRoute.singUpScreen),
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
