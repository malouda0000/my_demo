import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../constans/app_color.dart';

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
          Get.snackbar(
            'share',
            'comming soon',
          );
        },
        icon: SvgPicture.asset('assets/icons/share.svg'),
      ),
      IconButton(
        onPressed: () {
          Get.snackbar(
            'more informations ',
            'comming soon',
          );
        },
        icon: SvgPicture.asset('assets/icons/more.svg'),
      ),
    ],
  );
}
