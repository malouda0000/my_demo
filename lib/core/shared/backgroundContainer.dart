import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/app_color.dart';

class MyBackgrounContainer extends StatelessWidget {
  const MyBackgrounContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
      width: Get.width,
      height: Get.height,
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Container(
              height: Get.height * .4,
              width: Get.width,
              decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ))),
          Container(
            height: Get.height * .4,
            width: Get.width,

            // color: AppColor.theMainLightColor,
          )
        ],
      ),
    );
  }
}
