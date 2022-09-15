import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:my_demo/get_pages.dart';
import '../../../../core/constants/app_color.dart';

AppBar DetialsScreenAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: AppColor.kPrimaryColor,
    leading: IconButton(
      onPressed: () {
        Get.back();
      },
      icon: const Icon(
        Icons.arrow_back,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {
          Get.to(AppRoute.underDevelopmentScreen);
        },
        icon: SvgPicture.asset(
          'assets/icons/share.svg',
        ),
      ),
      IconButton(
        onPressed: () {
          Get.to(AppRoute.underDevelopmentScreen);
        },
        icon: SvgPicture.asset(
          'assets/icons/more.svg',
        ),
      ),
    ],
  );
}
