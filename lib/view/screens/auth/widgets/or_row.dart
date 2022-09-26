import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/localization/localization.dart';

class OrRow extends StatelessWidget {
  const OrRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: Theme.of(context).textTheme.bodyText1!.color!,
          width: Get.width * .28,
          height: 1,
        ),
        Text(
          AppLocal.or.tr,
          style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1!.color!,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        Container(
          color: Theme.of(context).textTheme.bodyText1!.color!,
          width: Get.width * .28,
          height: 1,
        ),
      ],
    );
  }
}
