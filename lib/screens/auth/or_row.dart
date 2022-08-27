import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/localization/localization.dart';
import '../../../constans/app_color.dart';

class OrRow extends StatelessWidget {
  const OrRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: AppColor.kTextColor,
          width: Get.width * .28,
          height: 1,
        ),
        Text(
          AppLocal.or.tr,
          style: TextStyle(
              color: AppColor.kTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        Container(
          color: AppColor.kTextColor,
          width: Get.width * .28,
          height: 1,
        ),
      ],
    );
  }
}
