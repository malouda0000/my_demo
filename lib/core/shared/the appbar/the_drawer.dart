import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/get_pages.dart';
import '../../../view/screens/setting/widgets/reserved_rights_row.dart';
import '../../../view/screens/setting/widgets/settign_list_tile.dart';
import '../../constants/app_color.dart';
import '../../localization/localization.dart';
import '../big_button.dart';
import 'drawer_header_plus.dart';

String accountName = '3'.tr;
String accountEmail = 'Hamam.hamza85@gmail.com';
// final GlobalKey<ScaffoldState> myKey = GlobalKey();

class TheDrawer extends StatelessWidget {
  const TheDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // key: myKey,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const DrawerHeaderplus(),
          SettingListTile(
            diviedIt: true,
            theTitle: AppLocal.account.tr,
            theIcon: Icons.person_outline,
            theFunction: () => Get.offAllNamed(AppRoute.aboutScreen),
          ),
          SettingListTile(
            diviedIt: true,
            theTitle: AppLocal.notifications.tr,
            theIcon: Icons.notifications_outlined,
            theFunction: () {
              Get.snackbar(
                AppLocal.notifications.tr,
                AppLocal.commingSoon.tr,
              );
            },
          ),
          SettingListTile(
            diviedIt: true,
            theTitle: AppLocal.priviceyAndSecurity.tr,
            theIcon: Icons.lock_outline,
            theFunction: () {
              Get.snackbar(
                AppLocal.priviceyAndSecurity.tr,
                AppLocal.commingSoon.tr,
              );
            },
          ),
          SettingListTile(
            diviedIt: true,
            theTitle: AppLocal.appearance.tr,
            theIcon: Icons.remove_red_eye_outlined,
            theFunction: () {
              Get.toNamed(AppRoute.themeScreen);
            },
          ),
          //
          //
          //
          //
          //

          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonBar(
                children: [
                  BigggButton(
                      leadingIconColor: AppColor.theMainLightColor,
                      buttonTitleColor: AppColor.theMainLightColor,
                      theLeadingIcon: Icons.settings_outlined,
                      theButtonTitle: AppLocal.settings.tr,
                      onTaped: () {
                        Get.toNamed(AppRoute.settignScreen);
                      }),
                ],
              )
            ],
          ),

          SizedBox(
            height: 15,
          ),

          ReservedRightsRow(),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
