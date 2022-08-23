import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_demo/localization/localization.dart';
import '../../../constans/app_color.dart';
import 'package:my_demo/widgets/the%20appbar/widgets/the_main_title_builder.dart';

import '../../constans/app_images.dart';

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

    // Text(
    //   'punkfood',
    //   style: TextStyle(color: kPrimaryColor),
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
