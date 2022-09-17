import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/localization/localization.dart';
import 'package:my_demo/core/shared/the_input_field.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(theDefaultPadding),
      child: TheInputField(
        theBorderColor: AppColor.kPrimaryColor,
        theBorderRadius: theDefaultRaduis,
        theHient: AppLocal.search.tr,
        theInputColor: Theme.of(context).textTheme.bodyText1!.color!,
        theInputType: TextInputType.text,
        thePadding: theDefaultPadding,
        isPassword: false,
        theLeadingIcon: Icons.search_rounded,
      ),
    );
  }
}
