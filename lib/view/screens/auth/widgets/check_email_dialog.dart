import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/localization/localization.dart';
import 'package:my_demo/view/screens/auth/widgets/resend_email_dialog.dart';
import 'package:my_demo/view/screens/auth/widgets/my_send_email_vervication.dart';

checkYourEmailDialog(BuildContext context) async {
  mySendEmailVervication();

  return Get.defaultDialog(
    title: AppLocal.confirmYourEmail.tr,
    titleStyle: Theme.of(context).textTheme.headline6,
    content: Column(
      children: [
        Icon(
          Icons.email_rounded,
          size: 80,
          color: AppColor.kPrimaryColor,
        ),
        Text(
          AppLocal.checkYourInbox.tr,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    ),
    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MaterialButton(
            color: AppColor.kPrimaryColor,
            onPressed: () {
              Get.back();
              resendVerEmailDialog(context);
            },
            child: Text(
              AppLocal.noEmailReciveded.tr,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          MaterialButton(
            color: AppColor.kPrimaryColor,
            onPressed: () {
              // Get.offAllNamed(AppRoute.signInScreen);
              Get.back();
            },
            child: Text(
              AppLocal.done.tr,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ],
      ),
    ],
  );
}
