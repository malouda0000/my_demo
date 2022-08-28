import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/constans/app_color.dart';
import 'package:my_demo/constans/app_routes.dart';
import 'package:my_demo/screens/setting/widgets/reserved_rights_row.dart';
import 'package:my_demo/screens/setting/widgets/settign_list_tile.dart';
import 'package:my_demo/widgets/big_button.dart';
import 'package:my_demo/widgets/the%20drawer/widgets/drawer_header_plus.dart';

import '../../localization/localization.dart';

String accountName = '3'.tr;
String accountEmail = 'Hamam.hamza85@gmail.com';

class TheDrawer extends StatelessWidget {
  const TheDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                // alignment: MainAxisAlignment.spaceBetween,
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

          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //             children: [
          //               // DrawerItem(),
          //               // DrawerItem(),
          //               InkWell(
          //                 onTap: () {},
          //                 child:  Text('setting'),
          //               ),
          //               // Spacer(),

          // //
          // //
          // //
          // //
          // //
          // //

          //               //  Divider(
          //               //   color: Colors.red,
          //               //   thickness: 3,
          //               //   height: 2,
          //               //   indent: 3,
          //               //   endIndent: 4,
          //               // ),
          // //
          // //

          //               Container(
          //                 height: 50,
          //                 width: 20,
          //                 color: Colors.amber,
          //               ),
          //               // Spacer(),
          //               InkWell(
          //                 onTap: () {},
          //                 child:  Text('advance settings'),
          //               )
          //             ],
          //           ),

          //
          //
          //
          //
          //

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
