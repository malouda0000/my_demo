import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/constants/app_images.dart';
import '../../../../core/constants/app_color.dart';

class CircularImageWithBorder extends StatelessWidget {
  String? imagePath = null;
  final String? content;
  final bool showSmallCirlIcon;
  final IconData? theSmallCirlIcon;
  final void Function()? iconPressed;

  CircularImageWithBorder(
      {Key? key,
      this.imagePath,
      this.content,
      required this.showSmallCirlIcon,
      required this.theSmallCirlIcon,
      required this.iconPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageContainer(imagePath: imagePath),
        showSmallCirlIcon == true
            ? SmallCirlcIcon(
                iconPressed: iconPressed, theSmallCirlIcon: theSmallCirlIcon)
            : SizedBox(),
      ],
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

class SmallCirlcIcon extends StatelessWidget {
  const SmallCirlcIcon({
    Key? key,
    required this.iconPressed,
    required this.theSmallCirlIcon,
  }) : super(key: key);

  final void Function()? iconPressed;
  final IconData? theSmallCirlIcon;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        // padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: AppColor.kTextColor,
                blurRadius: 5,
                offset: Offset(-1, -1)),
            BoxShadow(
                color: AppColor.kTextColor,
                blurRadius: 5,
                offset: Offset(-1, 1)),
            BoxShadow(
                color: AppColor.kTextColor,
                blurRadius: 5,
                offset: Offset(1, -1)),
            BoxShadow(
                color: AppColor.kTextColor,
                blurRadius: 5,
                offset: Offset(1, 1)),
          ],
          shape: BoxShape.circle,
          // color: AppColor.kTextColor,
          color: AppColor.kPrimaryColor,
        ),
        child: IconButton(
          iconSize: 20,
          // color: AppColor.kPrimaryColor,
          // color: AppColor.kTextColor,

          onPressed: iconPressed == null ? () {} : iconPressed,
          icon: Icon(
            theSmallCirlIcon == null
                ? Icons.mode_edit_outline_rounded
                : theSmallCirlIcon,
          ),
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  final String? imagePath;

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
  }
}
