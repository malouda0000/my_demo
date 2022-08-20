import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/constans/constants.dart';
import 'package:my_demo/constans/routes.dart';

class ReservedRightsRow extends StatelessWidget {
  const ReservedRightsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        'all rights reserved to : ',
        style: Theme.of(context).textTheme.bodyText1,
      ),
      GestureDetector(
        onTap: () {
          Get.toNamed(AppRoute.aboutScreen);
        },
        child: Text(
          'HMMAM HAMZA',
          style: TextStyle(
            color: AppColor.kPrimaryColor,
          ),
        ),
      )
    ]);
  }
}
