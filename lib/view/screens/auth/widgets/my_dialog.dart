import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/shared/big_button.dart';

// this is customzable dialog, which i'll use for many thinks
myDialog(
  BuildContext context,
  String? theTitle,
  IconData? theIcon,
  String? dialogDiscription,
  String? onDismissName,
  String? onConfirmName,
  final void Function()? onDismissFunc,
  onConfirmFunc,
) {
  Get.defaultDialog(
    title: theTitle == null ? 'Dilaog' : theTitle,
    titleStyle: Theme.of(context).textTheme.headline6,
    content: Column(
      children: [
        theIcon != null
            ? Icon(
                theIcon,
                size: 80,
                color: AppColor.kPrimaryColor,
              )
            : emptySpace,
        Text(
          dialogDiscription == null ? '' : dialogDiscription,
          maxLines: 3,
          style: Theme.of(context).textTheme.bodyText1!,
        ),
      ],
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(
          theDefaultPadding,
        ),
        child: Column(
          children: [
            if (onConfirmName != null)
              BigggButton(
                // confirm button

                theLeadingIcon: Icons.done_rounded,
                theButtonTitle: onConfirmName,
                onTaped: onConfirmFunc == null ? null : onConfirmFunc,
              ),
            emptySpace,
            BigggButton(
              // dismiss button
              theLeadingIcon: Icons.arrow_back_rounded,
              theButtonTitle: onDismissName != null ? onDismissName : 'dismiss',
              onTaped: onDismissFunc != null
                  ? onDismissFunc
                  : () {
                      Get.back();
                    },
            ),
          ],
        ),
      )

      // if (onConfirmName != null)
      //   MaterialButton(
      //     // confirm button
      //     color: AppColor.kPrimaryColor,
      //     onPressed: onConfirmFunc == null ? null : onConfirmFunc,
      //     child: Text(
      //       onConfirmName,
      //       style: Theme.of(context).textTheme.bodyText1,
      //     ),
      //   ),

      // MaterialButton(
      //   // dismiss button
      //   color: AppColor.kPrimaryColor,
      //   onPressed: onDismissFunc != null
      //       ? onDismissFunc
      //       : () {
      //           Get.back();
      //         },
      //   child: Text(
      //     onDismissName != null ? onDismissName : 'dismiss',
      //     style: Theme.of(context).textTheme.bodyText1,
      //   ),
      // ),
    ],
  );
}
