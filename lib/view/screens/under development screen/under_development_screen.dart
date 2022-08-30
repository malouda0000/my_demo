import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/localization/localization.dart';
import 'package:my_demo/core/shared/bubles_background.dart';
import '../../../core/constants/app_color.dart';
import '../../../core/constants/constants.dart';

class UnderDevelopment extends StatelessWidget {
  const UnderDevelopment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BublesBackground(),
          Center(
            child: Card(
              // semanticContainer: false,
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.all(theDefaultPadding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  // shrinkWrap: true,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.developer_mode_rounded,
                      color: AppColor.kPrimaryColor,
                      size: Get.width * .5,
                    ),
                    emptySpace,
                    emptySpace,
                    Text(
                      AppLocal.thisPageIsUnderDevelopment.tr,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppColor.kPrimaryColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
