import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constants/app_color.dart';
import '../../../../core/constants/app_routes.dart';
import '../../../../core/localization/localization.dart';

class ReservedRightsRow extends StatelessWidget {
  const ReservedRightsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        AppLocal.allRightsReserved.tr,
        style: Theme.of(context).textTheme.bodyText1,
      ),
      GestureDetector(
        onTap: () {
          Get.toNamed(AppRoute.aboutScreen);
        },
        child: Text(
          AppLocal.userName.tr,
          style: TextStyle(
            color: AppColor.kPrimaryColor,
          ),
        ),
      )
    ]);
  }
}
