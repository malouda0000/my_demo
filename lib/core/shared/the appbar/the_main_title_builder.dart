import 'package:flutter/material.dart';
import '../../constants/app_color.dart';

class TheMainTitleBuilder extends StatelessWidget {
  final String firstTitle;
  final String secondTitle;
  const TheMainTitleBuilder({
    Key? key,
    required this.firstTitle,
    required this.secondTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        // strutStyle: Theme.of(context).textTheme.titleMedium.copyWith(fontWeight: FontWeight.bold)
        text: TextSpan(
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            children: [
          TextSpan(
              text: firstTitle,
              style: TextStyle(
                color: AppColor.ksecondaryColor,
              )),
          TextSpan(
              style: TextStyle(
                // fontWeight: FontWeight.bold,
                color: AppColor.kPrimaryColor,
              ),
              text: secondTitle)
        ]));
  }
}
