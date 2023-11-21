import 'package:flutter/material.dart';
// import 'package:my_demo/core/shared/bottom%20navigation%20bar/bottom_nav_bar.dart';
import 'package:get/get.dart';
import 'package:my_demo/view/screens/setting/widgets/settign_list_tile.dart';
import 'package:my_demo/get_pages.dart';
import '../../../../core/localization/localization.dart';
import '../../../../core/shared/the_input_field.dart';
import '../../../core/shared/reserved_rights_row.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    Key searchSettingKey = new Key('');
    TextEditingController searchSettingTextEditingController =
        new TextEditingController();
    return ListView(
      padding: EdgeInsets.all(15),
      children: [
        TheInputField(
          theValidator: (p0) {
            return null;
          },
          theKey: searchSettingKey,
          theTextEditingController: searchSettingTextEditingController,
          theHient: AppLocal.search.tr,
          theInputType: TextInputType.text,
          isPassword: false,
          theLeadingIcon: Icons.search_rounded,
        ),
        const SizedBox(
          // height: size.height * .0,
          height: 10,
        ),
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
            theFunction: () {
              Get.toNamed(AppRoute.underDevelopmentScreen);
            }),
        SettingListTile(
          diviedIt: true,
          theTitle: AppLocal.priviceyAndSecurity.tr,
          theIcon: Icons.lock_outline,
          theFunction: () {
            Get.toNamed(AppRoute.underDevelopmentScreen);
          },
        ),
        SettingListTile(
          diviedIt: true,
          theTitle: AppLocal.appearance.tr,
          theIcon: Icons.remove_red_eye_outlined,
          theFunction: () => Get.toNamed(AppRoute.themeScreen),
        ),
        SettingListTile(
          diviedIt: true,
          theTitle: AppLocal.helpAndSupport.tr,
          theIcon: Icons.support_outlined,
          theFunction: () {
            Get.toNamed(AppRoute.underDevelopmentScreen);
          },
        ),
        SettingListTile(
          diviedIt: true,
          theTitle: AppLocal.aboutMe.tr,
          theIcon: Icons.info_outline,
          theFunction: () => Get.toNamed(AppRoute.aboutScreen),
        ),
        SettingListTile(
          diviedIt: true,
          theTitle: AppLocal.langushes.tr,
          theIcon: Icons.language,
          theFunction: () => Get.toNamed(AppRoute.localizationScreen),
        ),
        // const Spacer(),
        ReservedRightsRow(),
      ],
    );
  }
}
