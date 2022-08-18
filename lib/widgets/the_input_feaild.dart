import 'package:flutter/material.dart';
import 'package:my_demo/constants.dart';

class TheIputFeaild extends StatelessWidget {
  final Size size;
  final String theHint;
  final IconData theLeadingIcon;
  final TextInputType textInputType;
  final bool isPassword;
  // final TextEditingController controller;

  const TheIputFeaild({
    Key? key,
    required this.size,
    required this.theHint,
    required this.theLeadingIcon,
    required this.textInputType,
    required this.isPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: theMainLightColor,
      ),
      width: size.width,
      child: TextField(
        cursorColor: kPrimaryColor,
        enableSuggestions: true,
        keyboardType: textInputType,
        obscureText: isPassword,
        // controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: theHint,
          hintStyle: TextStyle(
            color: kTextBlacColor,
          ),
          prefixIcon: Icon(
            theLeadingIcon,
            color: kTextBlacColor,
          ),
        ),
      ),
    );
  }
}
