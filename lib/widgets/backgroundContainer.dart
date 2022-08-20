import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/constans/constants.dart';

class BackgrounContainer extends StatelessWidget {
  const BackgrounContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColor.theMainLightColor),
      width: Get.width,
      height: Get.height,
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
                decoration: BoxDecoration(
                    color: AppColor.kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ))),
          ),
          Flexible(
              flex: 2,
              child: Container(
                  // color: AppColor.theMainLightColor,
                  ))
        ],
      ),
    );
  }
}
