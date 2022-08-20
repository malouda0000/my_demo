import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/constans/constants.dart';
import 'package:my_demo/constans/routes.dart';
import 'package:my_demo/screens/setting/widgets/reserved_rights_row.dart';
import 'package:my_demo/screens/setting/widgets/settign_list_tile.dart';
import 'package:my_demo/widgets/the_input_feaild.dart';

class SettingScreenBody extends StatelessWidget {
  SettingScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TextEditingController searchInSettingController;
    return ListView(
      padding: EdgeInsets.all(15),
      children: [
        TheIputFeaild(
          // controller: searchInSettingController,
          isPassword: false,
          textInputType: TextInputType.name,
          theSize: Get.width,
          theHint: 'search',
          theLeadingIcon: Icons.search_rounded,
          backgroundColor: AppColor.ksecondaryColor,
        ),
        const SizedBox(
          // height: size.height * .0,
          height: 10,
        ),
        SettingListTile(
          diviedIt: true,
          theTitle: 'Account',
          theIcon: Icons.person_outline,
          theFunction: () => Get.toNamed(AppRoute.aboutScreen),
        ),
        SettingListTile(
          diviedIt: true,
          theTitle: 'Notification',
          theIcon: Icons.notifications_outlined,
          theFunction: () {
            Get.snackbar(
              'Notificatins',
              'comming soon',
            );
          },
        ),
        SettingListTile(
          diviedIt: true,
          theTitle: 'Privacy & Security',
          theIcon: Icons.lock_outline,
          theFunction: () {
            Get.snackbar(
              'privacy',
              'comming soon',
            );
          },
        ),
        SettingListTile(
          diviedIt: true,
          theTitle: 'Appearance',
          theIcon: Icons.remove_red_eye_outlined,
          theFunction: () {
            Get.toNamed(AppRoute.themeScreen);
          },
        ),
        SettingListTile(
          diviedIt: true,
          theTitle: 'help & suppourt',
          theIcon: Icons.support_outlined,
          theFunction: () {
            Get.snackbar(
              'suppourt',
              'comming soon',
            );
          },
        ),
        SettingListTile(
          diviedIt: true,
          theTitle: 'about',
          theIcon: Icons.info_outline,
          theFunction: () => Get.toNamed(AppRoute.aboutScreen),
        ),
        // const Spacer(),
        ReservedRightsRow(),
      ],
    );
  }
}
