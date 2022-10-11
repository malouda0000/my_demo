import 'package:flutter/material.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/shared/title_builder.dart';
import 'package:my_demo/view/screens/home/widgets/custom_search_bar.dart';
import 'package:my_demo/view/screens/home/widgets/item_card_builder.dart';
import 'package:my_demo/view/screens/home/widgets/offers_and_discounts.dart';

class BigBurgurePage extends StatelessWidget {
  const BigBurgurePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSearchBar(),
        ItemCardBuilder(),
        OffersAndDiscounts(),
        emptySpace,
        TitleBuilder(theTitle: 'more offers'),
        emptySpace,
        ItemCardBuilder(),
      ],
    );
  }
}
