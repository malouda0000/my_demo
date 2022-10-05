import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/constants/app_color.dart';

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
        Icon(
          theIcon,
          size: 80,
          color: AppColor.kPrimaryColor,
        ),
        Text(
          dialogDiscription == null ? 'discription' : dialogDiscription,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    ),
    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MaterialButton(
            // confirm button
            color: AppColor.kPrimaryColor,

            onPressed: onConfirmFunc,
            child: Text(
              onConfirmName == null ? '' : onConfirmName,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          MaterialButton(
            // dismiss button
            color: AppColor.kPrimaryColor,
            onPressed: onDismissFunc,
            child: Text(
              onDismissName == null ? '' : onDismissName,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ],
      ),
    ],
  );
}
