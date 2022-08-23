import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:my_demo/constans/app_images.dart';
import '../../../constans/app_color.dart';
import '../../../localization/localization.dart';

class TheSearchBar extends StatelessWidget {
  const TheSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        // margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.kPrimaryColor,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            icon: SvgPicture.asset(AppImages.searchSvg),
            hintText: AppLocal.search.tr,
            hintStyle: const TextStyle(color: AppColor.ksecondaryColor),
          ),
        ),
      ),
    );
  }
}
