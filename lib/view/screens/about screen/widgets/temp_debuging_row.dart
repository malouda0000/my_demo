import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/auth_controller.dart';
import 'package:my_demo/get_pages.dart';
import 'package:my_demo/core/shared/title_builder.dart';
import 'package:my_demo/main.dart';
import '../../../../core/constants/app_color.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/localization/localization.dart';

class TempDebugingRow extends StatelessWidget {
  const TempDebugingRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find();
    return Card(
      elevation: theDefaultElevation,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          emptySpace,
          TitleBuilder(theTitle: 'devloping card'),
          emptySpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MaterialButton(
                  color: AppColor.kTextColor,
                  onPressed: () {
                    Get.offAllNamed(
                      AppRoute.signInScreen,
                    );
                  },
                  child: Text(
                    AppLocal.debugSinIng.tr,
                    style: TextStyle(
                      color: AppColor.kPrimaryColor,

                      fontWeight: FontWeight.bold,
                      // fontSize: 30,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MaterialButton(
                  color: AppColor.kTextColor,
                  onPressed: () async {
                    await mySharedPrefes!.setBool('firstAppInit', false);

                    Get.offAllNamed(
                      AppRoute.customOnbordingScreen,
                    );
                  },
                  child: Text(
                    AppLocal.debugSplashScreen.tr,
                    style: TextStyle(
                      color: AppColor.kPrimaryColor,

                      fontWeight: FontWeight.bold,
                      // fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MaterialButton(
                  color: AppColor.kTextColor,
                  onPressed: () {
                    Get.toNamed(
                      AppRoute.customSplashScreen,
                    );
                  },
                  child: Text(
                    AppLocal.debugSplach.tr,
                    style: TextStyle(
                      color: AppColor.kPrimaryColor,

                      fontWeight: FontWeight.bold,
                      // fontSize: 30,
                    ),
                  ),
                ),
              ),
              emptySpace,
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MaterialButton(
                  color: AppColor.kTextColor,
                  onPressed: () {
                    print(mySharedPrefes!.getBool('logIn') == null
                        ? 'null'
                        : mySharedPrefes!.getBool('logIn'));
                  },
                  child: Text(
                    'sharedprf.logIn value',
                    style: TextStyle(
                      color: AppColor.kPrimaryColor,

                      fontWeight: FontWeight.bold,
                      // fontSize: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
          emptySpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MaterialButton(
                  color: AppColor.kTextColor,
                  onPressed: () async {
                    await authController.signOut();
                  },
                  child: Text(
                    'Sign out',
                    style: TextStyle(
                      color: AppColor.kPrimaryColor,

                      fontWeight: FontWeight.bold,
                      // fontSize: 30,
                    ),
                  ),
                ),
              ),
              emptySpace,
            ],
          ),
        ],
      ),
    );
  }
}
