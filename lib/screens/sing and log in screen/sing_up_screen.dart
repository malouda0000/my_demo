import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/constants.dart';
import 'package:my_demo/screens/home/my_home_page.dart';
import 'package:my_demo/screens/sing%20and%20log%20in%20screen/widgets/dont_have_account.dart';
import 'package:my_demo/screens/sing%20and%20log%20in%20screen/widgets/or_row.dart';
import 'package:my_demo/screens/sing%20and%20log%20in%20screen/widgets/social_auth.dart';
import 'package:my_demo/widgets/backgroundContainer.dart';
import 'package:my_demo/widgets/big_button.dart';
import 'package:my_demo/widgets/the_input_feaild.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: kPrimaryColor,
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
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: theMainLightColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        humburger,
                        width: Get.width * 0.3,
                      ),
                    ),
                    emptySpace,
                    Text(
                      'PnukFood',
                      style: TextStyle(
                        color: theMainLightColor,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    emptySpace,
                    TheIputFeaild(
                        isPassword: false,
                        textInputType: TextInputType.text,
                        size: MediaQuery.of(context).size,
                        theHint: 'email',
                        theLeadingIcon: Icons.email_outlined),
                    emptySpace,

                    TheIputFeaild(
                      isPassword: true,
                      textInputType: TextInputType.text,
                      size: MediaQuery.of(context).size,
                      theHint: 'password',
                      theLeadingIcon: Icons.password_rounded,
                    ),
                    emptySpace,
                    TheIputFeaild(
                      isPassword: true,
                      textInputType: TextInputType.text,
                      size: MediaQuery.of(context).size,
                      theHint: 'reInter password',
                      theLeadingIcon: Icons.password_rounded,
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
                      theFunc: () => Get.toNamed('/SinInScreen'),
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
