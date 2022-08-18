import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          size: Get.size,
          theHint: 'search',
          theLeadingIcon: Icons.search_rounded,
        ),
        const SizedBox(
          // height: size.height * .0,
          height: 10,
        ),
        SettingListTile(
          diviedIt: true,
          theTitle: 'Account',
          theIcon: Icons.person_outline,
          theFunction: () => Get.toNamed('/aboutScreen'),
        ),
        SettingListTile(
          diviedIt: true,
          theTitle: 'Notification',
          theIcon: Icons.notifications_outlined,
          theFunction: () {},
        ),
        SettingListTile(
          diviedIt: true,
          theTitle: 'Privacy & Security',
          theIcon: Icons.lock_outline,
          theFunction: () {},
        ),
        SettingListTile(
          diviedIt: true,
          theTitle: 'Appearance',
          theIcon: Icons.remove_red_eye_outlined,
          theFunction: () {
            Get.toNamed('/themeScreen');
          },
        ),
        SettingListTile(
          diviedIt: true,
          theTitle: 'heop & suppourt',
          theIcon: Icons.support_outlined,
          theFunction: () {},
        ),
        SettingListTile(
          diviedIt: true,
          theTitle: 'about',
          theIcon: Icons.info_outline,
          theFunction: () => Get.toNamed('/aboutScreen'),
        ),
        // const Spacer(),
        ReservedRightsRow(),
      ],
    );
  }
}
