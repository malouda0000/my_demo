import 'package:flutter/material.dart';
import 'package:my_demo/core/constants/app_color.dart';

class CustomRating extends StatelessWidget {
  final Color ratingColor = AppColor.kPrimaryColor;
  const CustomRating({
    Key? key,
    ratingColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: ratingColor,
    );
  }
}
