import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/localization/localization.dart';

class UserName extends StatelessWidget {
  const UserName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppLocal.userName.tr.toUpperCase(),
      style: Theme.of(context)
          .textTheme
          .bodyText1
          ?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
