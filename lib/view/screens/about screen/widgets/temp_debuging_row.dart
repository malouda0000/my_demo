import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/main.dart';
import '../../../../core/constants/app_color.dart';
import '../../../../core/constants/app_routes.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/localization/localization.dart';

class TempDebugingRow extends StatelessWidget {
  const TempDebugingRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: defaultElevation,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
                      AppRoute.singInScreen,
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
                  onPressed: () {
                    Get.offAllNamed(
                      AppRoute.introSliderScreen,
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
                    'print sharedprf.logIn value',
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
                    await mySharedPrefes!.setBool('logIn', false);
                    Get.offAllNamed(
                      AppRoute.singInScreen,
                    );
                  },
                  child: Text(
                    'Sing out',
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
