import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/constants.dart';

class OrRow extends StatelessWidget {
  const OrRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: theMainLightColor,
          width: Get.width * .32,
          height: 1,
        ),
        Text(
          'OR',
          style: TextStyle(
              color: theMainLightColor,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        Container(
          color: theMainLightColor,
          width: Get.width * .32,
          height: 1,
        ),
      ],
    );
  }
}
