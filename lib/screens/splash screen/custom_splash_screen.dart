import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constans/app_color.dart';
import 'package:my_demo/constans/routes.dart';
import '../../widgets/app_id.dart';

class CustomSplashScreen extends StatefulWidget {
  const CustomSplashScreen({Key? key}) : super(key: key);

  @override
  State<CustomSplashScreen> createState() => _CustomSplashScreenState();
}

class _CustomSplashScreenState extends State<CustomSplashScreen> {
  @override
  void initState() {
    super.initState;
    Timer(Duration(seconds: 1.5.toInt()), () {
      Get.offAllNamed(AppRoute.homePage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -150,
            left: -150,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: AppColor.kPrimaryColor.withOpacity(.8),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: -400,
            right: -600,
            child: Container(
              width: 700,
              height: 700,
              decoration: BoxDecoration(
                color: AppColor.kPrimaryColor.withOpacity(.4),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom: -550,
            left: -200,
            child: Container(
              width: 700,
              height: 700,
              decoration: BoxDecoration(
                color: AppColor.kPrimaryColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom: -400,
            right: -600,
            child: Container(
              width: 700,
              height: 700,
              decoration: BoxDecoration(
                color: AppColor.kPrimaryColor.withOpacity(.7),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: -300,
            child: Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                color: AppColor.kPrimaryColor.withOpacity(.4),
                shape: BoxShape.circle,
              ),
            ),
          ),
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






// // 
//       Stack(
//         alignment: Alignment.center,
//         children: [
//           Positioned(
//             top: 0.0,
//             left: 0.0,
//             child: Container(
//               width: Get.width * 0.2,
//               decoration:
//                   BoxDecoration(color: Colors.red, shape: BoxShape.circle),
//             ),
//           ),
//           Positioned(
//             child: Container(
//               width: Get.width * 0.5,
//               decoration:
//                   BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
//             ),
//           ),
//           Positioned(
//             top: 40,
//             left: 30,
//             child: Container(
//               width: Get.width * 0.2,
//               decoration: BoxDecoration(
//                   color: Colors.deepPurple, shape: BoxShape.circle),
//             ),
//           ),
//         ],
//       ),