import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/home_screen_controller.dart';
import 'package:my_demo/get_pages.dart';
import 'package:my_demo/core/shared/the%20appbar/the_main_title_builder.dart';
import '../../constants/app_images.dart';
import '../../localization/localization.dart';

AppBar TheAppBar(BuildContext context) {
  HomeScreenControllerImp homeScreenControllerImp = Get.find();
  return AppBar(
    centerTitle: true,
    title: TheMainTitleBuilder(
        firstTitle: AppLocal.appNameFast.tr,
        secondTitle: AppLocal.appNameFood.tr),
    elevation: 0,
    leading: Builder(builder: (context) {
      return IconButton(
        icon: SvgPicture.asset(
          AppImages.menuImage,
          color: Theme.of(context).appBarTheme.iconTheme!.color,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      );
    }),
    actions: [
      IconButton(
        onPressed: () {
          Get.toNamed(AppRoute.underDevelopmentScreen);
        },
        icon: SvgPicture.asset(
          AppImages.notificationSvg,
          color: Theme.of(context).appBarTheme.iconTheme!.color,
        ),
      ),
      IconButton(
          onPressed: () async {
            await homeScreenControllerImp.changeHomeScreenBody(2);
          },
          icon: Icon(
            Icons.shop_2_rounded,
            color: Theme.of(context).appBarTheme.iconTheme!.color,
          )),
      const SizedBox(
        width: 5,
      )
    ],
  );
}
