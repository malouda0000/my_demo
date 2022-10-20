import 'package:flutter/material.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/constants/constants.dart';

class TheInputField extends StatelessWidget {
  final String? Function(String?)? theValidator;
  final TextEditingController? theTextEditingController;
  final Key? theKey;
  final String theHient;
  // final Color theBorderColor, theInputColor;
  // final double theBorderRadius, thePadding;
  final IconData theLeadingIcon;
  final void Function()? onIconTap;
  final bool isPassword;
  final TextInputType theInputType;

  const TheInputField({
    Key? key,
    required this.theValidator,
    required this.theTextEditingController,
    required this.theKey,
    required this.theHient,
    // required this.theBorderColor,
    // required this.theInputColor,
    // required this.theBorderRadius,
    // required this.thePadding,
    required this.theLeadingIcon,
    required this.isPassword,
    required this.theInputType,
    this.onIconTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: theDefaultPadding),
      // margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.kPrimaryColor,
        ),
        borderRadius: BorderRadius.circular(theDefaultRaduis),
      ),
      child: TextFormField(
        validator: theValidator,

// onSubmitted: ,
        key: theKey,
        controller: theTextEditingController,

        keyboardType: theInputType,
        obscureText: isPassword == false ? false : true,
        style: Theme.of(context).textTheme.bodyText1,
        decoration: InputDecoration(
          fillColor: AppColor.kPrimaryColor.withOpacity(.2),
          border: InputBorder.none,
          icon: GestureDetector(
            onTap: onIconTap,
            child: Icon(
              theLeadingIcon,
              color: Theme.of(context).textTheme.bodyText1!.color!,
            ),
          ),
          hintText: theHient,
          hintStyle: Theme.of(context).textTheme.bodyText1!,
          errorStyle: TextStyle(
            fontFamily: Theme.of(context).textTheme.bodyText1!.fontFamily,
          ),
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




                         