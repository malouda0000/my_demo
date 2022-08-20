import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/constans/routes.dart';

import '../../../constans/app_color.dart';

class TempDebugingRow extends StatelessWidget {
  const TempDebugingRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                color: AppColor.kPrimaryColor,
                onPressed: () {
                  Get.offAllNamed(
                    AppRoute.singInScreen,
                  );
                  print('the new button tabded sucssfully');
                },
                child: Text(
                  'debug SingIn Screen',
                  style: TextStyle(
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
                color: AppColor.kPrimaryColor,
                onPressed: () {
                  Get.offAllNamed(
                    AppRoute.introSliderScreen,
                  );
                  print('the new button tabded sucssfully');
                },
                child: Text(
                  'debug the Slider Screen',
                  style: TextStyle(
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
                color: AppColor.kPrimaryColor,
                onPressed: () {
                  Get.toNamed(
                    AppRoute.customSplashScreen,
                  );
                },
                child: Text(
                  'debug the splashScreen',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    // fontSize: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
