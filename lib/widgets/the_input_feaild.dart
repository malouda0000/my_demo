import 'package:flutter/material.dart';
import '../../../constans/app_color.dart';

class TheIputFeaild extends StatelessWidget {
  final double theSize;
  final String theHint;
  final IconData theLeadingIcon;
  final TextInputType textInputType;
  final bool isPassword;
  final Color backgroundColor;
  // final TextEditingController controller;

  const TheIputFeaild({
    Key? key,
    required this.theSize,
    required this.theHint,
    required this.theLeadingIcon,
    required this.textInputType,
    required this.isPassword,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor,
      ),
      width: theSize,
      child: TextField(
        cursorColor: AppColor.kPrimaryColor,
        enableSuggestions: true,
        keyboardType: textInputType,
        obscureText: isPassword,
        // controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: theHint,
          hintStyle: Theme.of(context).textTheme.bodyText1,
          prefixIcon: Icon(
            theLeadingIcon,
            color: AppColor.kTextColor,
          ),
        ),
      ),
    );
  }
}
