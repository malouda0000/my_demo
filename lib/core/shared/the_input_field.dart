import 'package:flutter/material.dart';

class TheInputField extends StatelessWidget {
  final String theHient;
  final Color theBorderColor, theInputColor;
  final double theBorderRadius, thePadding;
  final IconData theLeadingIcon;
  final bool isPassword;
  final TextInputType theInputType;

  const TheInputField({
    Key? key,
    required this.theHient,
    required this.theBorderColor,
    required this.theInputColor,
    required this.theBorderRadius,
    required this.thePadding,
    required this.theLeadingIcon,
    required this.isPassword,
    required this.theInputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: thePadding),
      // margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          color: theBorderColor,
        ),
        borderRadius: BorderRadius.circular(theBorderRadius),
      ),
      child: TextField(
        keyboardType: theInputType,
        obscureText: isPassword,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            theLeadingIcon,
            color: theInputColor,
          ),
          hintText: theHient,
          hintStyle: TextStyle(color: theInputColor),
        ),
      ),
    );
  }
}


// TheSearchBar


                          // isPassword: false,
                          // textInputType: TextInputType.name,
                          // theSize: Get.width,
                          // theHint: AppLocal.Email.tr,
                          // theLeadingIcon: Icons.email_outlined,
                          // backgroundColor: AppColor.theMainLightColor,




                         