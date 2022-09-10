import 'package:flutter/material.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/shared/the_input_field.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/food_menue_screen.dart';
import 'package:my_demo/view/screens/home/widgets/the_category_item.dart';

import 'item_card_builder.dart';
import 'offers_and_discounts.dart';

class TheMainHomeBody extends StatefulWidget {
  const TheMainHomeBody({Key? key}) : super(key: key);

  @override
  State<TheMainHomeBody> createState() => _TheMainHomeBodyState();
}

class _TheMainHomeBodyState extends State<TheMainHomeBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: theDefaultPadding,
            ),
            child: TheInputField(
              theBorderColor: AppColor.kPrimaryColor,
              theBorderRadius: theDefaultRaduis,
              theHient: 'search',
              theInputColor: AppColor.kTextColor,
              theInputType: TextInputType.text,
              thePadding: theDefaultPadding,
              isPassword: false,
              theLeadingIcon: Icons.search_rounded,
            ),
          ),
          TheCategoryItem(),
          ItemCardBuilder(),
          // Center(child: Image.asset('assets/images/beyond-meat-mcdonalds.png',),),

          OffersAndDiscounts(),
          // emptySpace,
          // BigItemCardBuilder(),
          FoodMenueScreen(),
        ],
      ),
    );
  }
}
