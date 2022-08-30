import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/app_color.dart';

class BottomeNavBarIcon extends StatelessWidget {
  final String theNamedRout;
  final IconData theNavBarIcon;
  const BottomeNavBarIcon({
    Key? key,
    required this.theNamedRout,
    required this.theNavBarIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.offAllNamed(theNamedRout);
      },
      icon: Icon(theNavBarIcon),
      iconSize: 25,
      color: AppColor.kPrimaryColor,
    );
  }
}
