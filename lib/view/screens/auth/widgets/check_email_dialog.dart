import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/localization/localization.dart';
import 'package:my_demo/view/screens/auth/widgets/resend_email_dialog.dart';
import 'package:my_demo/view/screens/auth/widgets/my_send_email_vervication.dart';

BuildContext context = context;
checkYourEmailDialog() async {
  mySendEmailVervication();

  return Get.defaultDialog(
    title: AppLocal.confirmYourEmail.tr,
    titleStyle: Theme.of(context).textTheme.titleLarge,
    content: Column(
      children: [
        Icon(
          Icons.email_rounded,
          size: 80,
          color: AppColor.kPrimaryColor,
        ),
        Text(
          AppLocal.checkYourInbox.tr,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    ),
    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MaterialButton(
            // no email reciveded button
            color: AppColor.kPrimaryColor,
            onPressed: () async {
              Get.back();
              await resendVerEmailDialog(context);
            },
            child: Text(
              AppLocal.noEmailReciveded.tr,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          MaterialButton(
            // done button
            color: AppColor.kPrimaryColor,
            onPressed: () {
              // Get.offAllNamed(AppRoute.signInScreen);
              Get.back();
            },
            child: Text(
              AppLocal.done.tr,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    ],
  );
}
