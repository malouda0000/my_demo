import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/shared/bubles_background.dart';
import '../constants/app_color.dart';
import '../constants/app_routes.dart';
import 'app_id.dart';

class CustomSplashScreen extends StatefulWidget {
  const CustomSplashScreen({Key? key}) : super(key: key);

  @override
  State<CustomSplashScreen> createState() => _CustomSplashScreenState();
}

class _CustomSplashScreenState extends State<CustomSplashScreen> {
  // @override
  // void initState() {
  //   super.initState;
  //   Timer(
  //       Duration(
  //         seconds: 1.5.toInt(),
  //       ), () {
  //     Get.offAllNamed(AppRoute.homePage);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BublesBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: Get.width,
                // height: Get.height,
                child: AppId(
                  titleColor: AppColor.kPrimaryColor,
                ),
              ),
              CircularProgressIndicator(
                color: AppColor.kPrimaryColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
