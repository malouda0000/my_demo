import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/shared/bubles_background.dart';
import '../constants/app_color.dart';
import 'app_id.dart';

class CustomSplashScreen extends StatelessWidget {
  final bool progress, haveDiscription;
  String discription;
  CustomSplashScreen(
      {Key? key,
      required this.progress,
      required this.haveDiscription,
      this.discription = ''})
      : super(key: key);

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
                child: AppId(),
              ),
              emptySpace,
              if (progress)
                CircularProgressIndicator(
                  color: AppColor.kPrimaryColor,
                ),
              emptySpace,
              if (haveDiscription)
                Text(discription,
                    style: Theme.of(context).textTheme.titleLarge),
              emptySpace,
            ],
          ),
        ],
      ),
    );
  }
}
