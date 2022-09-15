import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/view/screens/setting/widgets/reserved_rights_row.dart';
import 'package:my_demo/view/screens/setting/widgets/settign_list_tile.dart';
import '../../../../core/constants/app_color.dart';
import 'package:my_demo/get_pages.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/localization/localization.dart';
import '../../../../core/shared/the_input_field.dart';

class SettingScreenBody extends StatelessWidget {
  SettingScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TextEditingController searchInSettingController;
    return ListView(
      padding: EdgeInsets.all(15),
      children: [
        TheInputField(
          theBorderColor: AppColor.kPrimaryColor,
          theBorderRadius: theDefaultRaduis,
          theHient: 'search',
          theInputColor: Theme.of(context).textTheme.headline6!.color!,
          theInputType: TextInputType.text,
          thePadding: theDefaultPadding,
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
          theFunction: () => Get.toNamed(AppRoute.themeScreen),
        ),
        SettingListTile(
          diviedIt: true,
          theTitle: AppLocal.helpAndSupport.tr,
          theIcon: Icons.support_outlined,
          theFunction: () {
            Get.snackbar(
              AppLocal.helpAndSupport.tr,
              AppLocal.commingSoon.tr,
            );
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
