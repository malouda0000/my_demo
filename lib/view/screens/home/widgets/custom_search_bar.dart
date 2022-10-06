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
    Key searchMealKey = new Key('');
    TextEditingController searchMealTextEditingController =
        new TextEditingController();
    return Padding(
      padding: EdgeInsets.all(theDefaultPadding),
      child: TheInputField(
        theValidator: (p0) {},
        theKey: searchMealKey,
        theTextEditingController: searchMealTextEditingController,
        theHient: AppLocal.search.tr,
        theInputType: TextInputType.text,
        isPassword: false,
        theLeadingIcon: Icons.search_rounded,
      ),
    );
  }
}
