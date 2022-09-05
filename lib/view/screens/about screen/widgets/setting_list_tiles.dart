import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/constants/app_routes.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/localization/localization.dart';
import 'package:my_demo/view/screens/setting/widgets/settign_list_tile.dart';

class MySettingListTiles extends StatelessWidget {
  const MySettingListTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: defaultElevation,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SettingListTile(
            diviedIt: true,
            theTitle: AppLocal.account.tr,
            theIcon: Icons.person_outline,
            theFunction: () => Get.toNamed(AppRoute.aboutScreen),
          ),
          SettingListTile(
            diviedIt: true,
            theTitle: AppLocal.notifications.tr,
            theIcon: Icons.notifications_outlined,
            theFunction: () => Get.toNamed(AppRoute.underDevelopmentScreen),
          ),
          SettingListTile(
            diviedIt: true,
            theTitle: AppLocal.priviceyAndSecurity.tr,
            theIcon: Icons.lock_outline,
            theFunction: () => Get.snackbar(
              AppLocal.priviceyAndSecurity.tr,
              AppLocal.commingSoon.tr,
            ),
          ),
          SettingListTile(
            diviedIt: false,
            theTitle: AppLocal.appearance.tr,
            theIcon: Icons.remove_red_eye_outlined,
            theFunction: () => Get.toNamed(AppRoute.themeScreen),
          ),
        ],
      ),
    );
  }
}
