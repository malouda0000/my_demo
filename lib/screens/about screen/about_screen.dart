import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/constans/app_routes.dart';
import 'package:my_demo/localization/localization.dart';
import 'package:my_demo/screens/about%20screen/widgets/user_image.dart';
import 'package:my_demo/screens/about%20screen/widgets/user_name.dart';
import 'package:my_demo/screens/setting/widgets/settign_list_tile.dart';
import 'package:my_demo/widgets/bottom%20navigation%20bar/bottom_nav_bar.dart';
import 'package:my_demo/widgets/the%20appbar/the_app_bar.dart';
import 'package:my_demo/widgets/communication_row.dart';
import 'package:my_demo/widgets/title_builder.dart';
import 'package:my_demo/constans/constants.dart';

import 'widgets/temp_debuging_row.dart';
import '../../../constans/app_color.dart';
// import 'package:flutter_remix/flutter_remix.dart';

// final Uri _url = Uri.parse('tel:+1-555-010-999');

// Future<void> _launchUrl() async {
//   if (!await launchUrl(_url)) {
//     throw GetSnackBar(
//       title: 'Could not launch $_url',
//     );
//   }
// }

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TheAppBar(),
      // drawer: (),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(10),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              emptySpace,
              UserImage(),
              emptySpace,
              UserName(),
              const Divider(
                color: AppColor.kPrimaryColor,
                thickness: 1,
              ),
              SettingListTile(
                diviedIt: true,
                theTitle: AppLocal.account.tr,
                theIcon: Icons.person_outline,
                theFunction: () {
                  Get.toNamed(AppRoute.aboutScreen);
                },
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
                    AppLocal.commingSoon,
                  );
                },
              ),
              SettingListTile(
                diviedIt: false,
                theTitle: AppLocal.appearance.tr,
                theIcon: Icons.remove_red_eye_outlined,
                theFunction: () {
                  Get.toNamed(AppRoute.themeScreen);
                },
              ),
              const Divider(
                thickness: 1,
              ),
              Column(
                children: [
                  TitleBuilder(
                    theTitle: AppLocal.feelFreeToContacMe.tr,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CommunicationRow(),
                  emptySpace,
                  TempDebugingRow(),
                ],
              ),
            ],
          ),
        ],
      ),
      // floatingActionButton: const TheFap(),
      bottomNavigationBar: const TheBottomNavBar(),
    );
  }
}
