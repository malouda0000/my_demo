import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/bottom_nav_bar_controller.dart';
import 'package:my_demo/get_pages.dart';
import 'package:my_demo/core/shared/the%20appbar/the_main_title_builder.dart';
import 'package:my_demo/view/screens/home/my_home_page.dart';
import '../../constants/app_images.dart';
import '../../localization/localization.dart';

AppBar TheAppBar(BuildContext context) {
  BottomNvaBarController bottomNavBarController = Get.find();
  return AppBar(
    // backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
    centerTitle: true,
    // backgroundColor: AppColor.theMainLightColor,
    title: TheMainTitleBuilder(
        firstTitle: AppLocal.appNameFast.tr,
        secondTitle: AppLocal.appNameFood.tr),
    elevation: 0,
    leading: Builder(builder: (context) {
      return IconButton(
        icon: SvgPicture.asset(
          AppImages.menuImage,
          // color: AppColor.kTextColor,

          color: Theme.of(context).appBarTheme.iconTheme!.color,
        ),
        onPressed: () {
          // TheDrawer();
          Scaffold.of(context).openDrawer();
          // myKey.currentState!.openDrawer();
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
          // color: AppColor.kTextColor,
          color: Theme.of(context).appBarTheme.iconTheme!.color,
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
            // color: AppColor.kTextColor,

            color: Theme.of(context).appBarTheme.iconTheme!.color,
          )),
      const SizedBox(
        width: 5,
      )
    ],
  );
}
