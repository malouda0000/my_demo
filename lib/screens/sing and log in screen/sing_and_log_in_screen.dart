import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/constants.dart';
import 'package:my_demo/screens/home/my_home_page.dart';
import 'package:my_demo/widgets/big_button.dart';
import 'package:my_demo/widgets/the_input_feaild.dart';

import '../about screen/about_screen.dart';

final SizedBox emptySpace = SizedBox(
  height: 20,
  width: 20,
);

class SingInScreen extends StatelessWidget {
  const SingInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/hamburger.png',
                  height: 140,
                ),
                emptySpace,
                Text(
                  'PnukFood',
                  style: TextStyle(
                    color: kTextBlacColor,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                emptySpace,
                TheIputFeaild(
                  isPassword: false,
                  textInputType: TextInputType.name,
                  size: MediaQuery.of(context).size,
                  theHint: 'email',
                  theLeadingIcon: Icons.email_rounded,
                ),
                emptySpace,
                TheIputFeaild(
                  isPassword: true,
                  textInputType: TextInputType.text,
                  size: MediaQuery.of(context).size,
                  theHint: 'password',
                  theLeadingIcon: Icons.password_rounded,
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
                    theButtonTitle: 'LogIn',
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

                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: MaterialButton(
                    color: kTextBlacColor,
                    onPressed: () {
                      Get.offAllNamed(
                        '/homePage',
                      );
                      print('the new button tabded sucssfully');
                    },
                    child: Text(
                      'LogIn',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),

                emptySpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: kTextBlacColor,
                      width: size.width * .35,
                      height: 1,
                    ),
                    Text(
                      'OR',
                      style: TextStyle(
                          color: kTextBlacColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Container(
                      color: kTextBlacColor,
                      width: size.width * .35,
                      height: 1,
                    ),
                  ],
                ),
                emptySpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CommuincationIcon(
                      theIcon: Icons.facebook_rounded,
                      theUrlLanching: () {},
                    ),
                    CommuincationIcon(
                      theIcon: Icons.email_rounded,
                      theUrlLanching: () {},
                    ),
                    CommuincationIcon(
                      theIcon: Icons.share_location_outlined,
                      theUrlLanching: () {},
                    ),
                  ],
                ),
                emptySpace,
                RichText(
                  text: TextSpan(
                    style: TextStyle(color: kTextBlacColor),
                    children: [
                      TextSpan(
                        text: 'Don\'t have accout yet!! ',
                      ),
                      TextSpan(
                          children: [],
                          text: 'SingUp Now',
                          style: TextStyle(
                            color: kTextLightColor,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
