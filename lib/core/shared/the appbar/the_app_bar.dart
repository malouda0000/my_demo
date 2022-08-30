import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/shared/the%20appbar/the_main_title_builder.dart';
import '../../constants/app_color.dart';
import '../../constants/app_images.dart';
import '../../localization/localization.dart';

AppBar TheAppBar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: AppColor.theMainLightColor,
    title: TheMainTitleBuilder(
        firstTitle: AppLocal.appNameFast.tr,
        secondTitle: AppLocal.appNameFood.tr),
    elevation: 0,
    leading: Builder(builder: (context) {
      return IconButton(
        icon: SvgPicture.asset(AppImages.menuImage),
        onPressed: () {
          // TheDrawer();
          Scaffold.of(context).openDrawer();
          // myKey.currentState?.openDrawer();

          // scaffoldKey.currentState.openEndDrawer();

          // TheDrawer();

          // Navigator.push(context, MaterialPageRoute(builder: (context) {
          //   return TheDrawer();
          // },),);
//

          // return   BuildContext();
//

          //  return BuildContext(
          //   return Scaffold.of(context).openEndDrawer(););

          // TheDrawerCaller();
        },
      );
    }),

    // leading: IconButton(
    //   icon: SvgPicture.asset(AppImages.menuImage),
    //   onPressed: () {
    //     myKey.currentState?.openDrawer();
    //   },
    // ),
    actions: [
      IconButton(
        onPressed: () {
          Get.defaultDialog(
            title: AppLocal.notifications.tr,
          );
        },
        icon: SvgPicture.asset(
          AppImages.notificationSvg,
        ),
      ),
      IconButton(
        onPressed: () {
          Get.snackbar(
            AppLocal.search.tr,
            AppLocal.commingSoon.tr,
          );
        },
        icon: SvgPicture.asset(
          AppImages.searchSvg,
        ),
      ),
    ],
  );
}
