import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constans/app_color.dart';

class OrRow extends StatelessWidget {
  const OrRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: AppColor.theMainLightColor,
          width: Get.width * .32,
          height: 1,
        ),
        Text(
          'OR',
          style: TextStyle(
              color: AppColor.theMainLightColor,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        Container(
          color: AppColor.theMainLightColor,
          width: Get.width * .32,
          height: 1,
        ),
      ],
    );
  }
}
