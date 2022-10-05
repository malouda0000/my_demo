import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/localization/localization.dart';
import 'package:my_demo/core/shared/communication_row.dart';
import 'package:my_demo/view/screens/auth/widgets/my_send_email_vervication.dart';

resendVerEmailDialog(BuildContext context) {
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
          AppLocal.checkTheSpam.tr,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        emptySpace,
        GestureDetector(
          onTap: () {
            LaunchEmail();
          },
          child: Center(
            child: Container(
              // send me feedback container
              padding: EdgeInsets.symmetric(
                horizontal: theDefaultPadding,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColor.kPrimaryColor,
                ),
                borderRadius: BorderRadius.circular(theDefaultRaduis),
              ),
              child: Text(
                AppLocal.sendFeedback.tr,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: AppColor.kPrimaryColor),
              ),
            ),
          ),
        ),
      ],
    ),
    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MaterialButton(
            // i'll check button
            color: AppColor.kPrimaryColor,
            onPressed: () {
              Get.back();

              // Get.snackbar(
              //   AppLocal.illCheck.tr,
              //   AppLocal.commingSoon.tr,
              // );
            },
            child: Text(
              AppLocal.illCheck.tr,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          MaterialButton(
            // resend email button
            color: AppColor.kPrimaryColor,
            onPressed: () async {
              Get.back();
              await mySendEmailVervication();
              // Get.snackbar(
              //     AppLocal.resendEmail.tr, 'email sended, check your inbox');
            },
            child: Text(
              AppLocal.resendEmail.tr,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ],
      ),
    ],
  );
}
