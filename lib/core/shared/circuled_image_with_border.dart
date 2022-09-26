import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/constants/app_images.dart';
import '../../../../core/constants/app_color.dart';

class CircularImageWithBorder extends StatelessWidget {
  String? imagePath = null;
  final String? content;

  CircularImageWithBorder({Key? key, this.imagePath, this.content})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: Get.width * .30,
      decoration: BoxDecoration(
        // color: Colors.red,
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 5,
          ),
        ],
        shape: BoxShape.circle,
        border: Border.all(width: 2, color: AppColor.kPrimaryColor),
      ),
      child: Container(
        alignment: Alignment.center,
        height: Get.width * 0.28,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: AppColor.kPrimaryColor),
          color: Colors.cyanAccent,
          shape: BoxShape.circle,
          image: imagePath != null
              ? DecorationImage(
                  image: AssetImage(imagePath!),
                  fit: BoxFit.fitHeight,
                )
              : DecorationImage(
                  image: AssetImage(AppImages.burger),
                  fit: BoxFit.fitHeight,
                ),
        ),
      ),
      // : Text(content!),
    );

    // Container(
    //   // height: MediaQuery.of(context).size.width * 0.32,
    //   constraints: BoxConstraints.loose(Get.size),
    //   height: Get.height * .5,
    //   width: Get.width * .5,
    //   decoration: BoxDecoration(
    //       color: Colors.red,
    //       // boxShadow: [
    //       //   BoxShadow(
    //       //     offset: Offset(0, 4),
    //       //     blurRadius: 10,
    //       //     color: AppColor.kPrimaryColor.withOpacity(0.70),
    //       //   ),
    //       // ],
    //       shape: BoxShape.circle,
    //       border: Border.all(width: 2, color: AppColor.kPrimaryColor)),

    //   child: SizedBox(
    //     height: 200,
    //     width: 200,
    //     child: Container(
    //       height: 100,
    //       width: 100,
    //       color: Colors.greenAccent,
    //     ),
    //   ),
    //   // child: Container(
    //   //   height: MediaQuery.of(context).size.width * 0.3,
    //   //   decoration: BoxDecoration(
    //   //     color: Colors.cyanAccent,
    //   //     shape: BoxShape.circle,
    //   //     image: DecorationImage(
    //   //       image: AssetImage(AppImages.userImage),
    //   //       fit: BoxFit.fitHeight,
    //   //     ),
    //   //   ),
    //   // ),
    // );
  }
}
