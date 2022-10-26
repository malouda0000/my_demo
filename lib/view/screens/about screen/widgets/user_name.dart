import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/shared/title_builder.dart';
import '../../../../core/localization/localization.dart';

class UserName extends StatelessWidget {
  const UserName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Text(
    //   AppLocal.userName.tr.toUpperCase(),
    //   style: Theme.of(context)
    //       .textTheme
    //       .bodyText1
    //       ?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
    // );

    return TitleBuilder(
      theTitle: AppLocal.userName.tr,
    );
  }
}
