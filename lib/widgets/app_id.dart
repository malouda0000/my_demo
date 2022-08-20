import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/constans/app_images.dart';

import '../constans/constants.dart';

class AppId extends StatelessWidget {
  final Color titleColor;
  const AppId({Key? key, required this.titleColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
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
            color: titleColor,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
