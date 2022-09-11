import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/get_pages.dart';
import 'package:my_demo/core/shared/the_drawer.dart';
import '../constants/app_color.dart';
import '../constants/app_routes.dart';
import '../localization/localization.dart';

class DrawerHeaderplus extends StatelessWidget {
  const DrawerHeaderplus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bodyTextTow = Theme.of(context).textTheme.bodyText2;
    return UserAccountsDrawerHeader(
      currentAccountPicture: CircleAvatar(
        child: GestureDetector(
          onTap: () => Get.offAllNamed(AppRoute.aboutScreen),
          child: Container(
            // height: MediaQuery.of(context).size.width * 0.3,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/me.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ),
      ),
      accountName: Text(
        AppLocal.userName.tr,
        style: bodyTextTow,
      ),
      accountEmail: Text(
        accountEmail,
        style: bodyTextTow,
      ),
      otherAccountsPictures: [
        GestureDetector(
          onTap: () {
            Get.offAllNamed(AppRoute.aboutScreen);
          },
          child: Icon(
            Icons.person_outline,
            // color: Colors.white,
            // color: AppColor.kTextBlacColor,
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.snackbar(
              'save',
              AppLocal.commingSoon.tr,
            );
          },
          child: Icon(
            Icons.save_outlined,
            // color: Colors.white,
            // color: AppColor.kTextBlacColor,
          ),
        )
      ],
    );
  }
}
