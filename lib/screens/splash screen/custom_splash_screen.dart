import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/constants.dart';

import '../sing and log in screen/sing_in.dart';

class CustomSplashScreen extends StatelessWidget {
  const CustomSplashScreen({Key? key}) : super(key: key);

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
              color: kPrimaryColor.withOpacity(.8),
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
              color: kPrimaryColor.withOpacity(.4),
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
              color: kPrimaryColor,
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
              color: kPrimaryColor.withOpacity(.7),
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
              color: kPrimaryColor.withOpacity(.4),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Container(
            alignment: Alignment.center,
            width: Get.width,
            height: Get.height,
            child: AppId(
              titleColor: kPrimaryColor,
            ))
      ],
    ));
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