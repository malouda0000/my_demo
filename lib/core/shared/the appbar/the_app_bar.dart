import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/bottom_nav_bar_controller.dart';
import 'package:my_demo/core/constants/app_routes.dart';
import 'package:my_demo/get_pages.dart';
import 'package:my_demo/core/shared/the%20appbar/the_main_title_builder.dart';
import '../../constants/app_color.dart';
import '../../constants/app_images.dart';
import '../../localization/localization.dart';

AppBar TheAppBar() {
  BottomNvaBarController bottomNavBarController = Get.find();
  return AppBar(
    centerTitle: true,
    backgroundColor: AppColor.theMainLightColor,
    title: TheMainTitleBuilder(
        firstTitle: AppLocal.appNameFast.tr,
        secondTitle: AppLocal.appNameFood.tr),
    elevation: 0,
    leading: Builder(builder: (context) {
      return IconButton(
        icon: SvgPicture.asset(
          AppImages.menuImage,
          color: AppColor.kTextColor,
        ),
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
          Get.toNamed(AppRoute.underDevelopmentScreen);
        },
        icon: SvgPicture.asset(
          AppImages.notificationSvg,
          color: AppColor.kTextColor,
        ),
      ),
      IconButton(
          onPressed: () async {
            // Get.toNamed(AppRoute.cartScreen);
            //  bottomNavBarController.theCurrentIndex = 2;
            await bottomNavBarController.changeTap(2);
          },
          icon: Icon(
            Icons.shop_2_rounded,
            color: AppColor.kTextColor,
          )),
      const SizedBox(
        width: 5,
      )
    ],
  );
}
