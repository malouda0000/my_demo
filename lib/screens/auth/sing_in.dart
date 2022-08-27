import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/constans/constants.dart';
import 'package:my_demo/constans/app_routes.dart';
import 'package:my_demo/controllers/singin_controller.dart';
import 'package:my_demo/localization/localization.dart';
import 'package:my_demo/screens/auth/social_auth.dart';
import 'package:my_demo/widgets/backgroundContainer.dart';
import 'package:my_demo/widgets/big_button.dart';
import 'package:my_demo/widgets/the_input_field.dart';

import '../../widgets/app_id.dart';
import 'dont_have_account.dart';
import 'or_row.dart';
import '../../../constans/app_color.dart';

class SingInScreen extends StatelessWidget {
  const SingInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SingInController(), fenix: true);
    SingInController singInController = Get.find();
    return Scaffold(
        // backgroundColor: AppColor.kPrimaryColor,
        body: Stack(
      children: [
        BackgrounContainer(),
        SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Card(
                  margin: EdgeInsets.all(15),
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        // boxShadow: [
                        //   BoxShadow(
                        //     offset: Offset(0, 4),
                        //     blurRadius: theDefaultRaduis,
                        //     color: AppColor.kTextBlacColor.withOpacity(0.70),
                        //     // color: Colors.red,
                        //   ),
                        // ],
                        color: AppColor.theMainLightColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AppId(titleColor: AppColor.theMainLightColor),
                        emptySpace,

                        TheInputField(
                          theInputType: TextInputType.text,
                          theBorderColor: AppColor.kPrimaryColor,
                          theBorderRadius: theDefaultRaduis,
                          theHient: AppLocal.email.tr,
                          theInputColor: AppColor.kTextColor,
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
                          theInputColor: AppColor.kTextColor,
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
                              singInController.singIn();
                            }

                            // Navigator.of(context).pushReplacement(
                            //     MaterialPageRoute(builder: (context) {
                            //   return MyHomePage();
                            // }));
                            ,
                            // theBackgrounColor: ksecondaryColor,
                            theButtonTitle: AppLocal.singIn.tr,
                            buttonTitleColor: AppColor.theMainLightColor,
                            theLeadingIcon: Icons.login_rounded,
                            leadingIconColor: AppColor.theMainLightColor,
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
                          doYouHaveAccoun: AppLocal.dontHaveAccountYet.tr,
                          singOrLogin: AppLocal.singUpNow.tr,
                          theFunc: () => Get.toNamed(AppRoute.singUpScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
