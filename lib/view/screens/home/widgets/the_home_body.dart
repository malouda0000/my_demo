import 'package:flutter/material.dart';
import 'package:my_demo/view/screens/home/widgets/the_category_item.dart';
import 'package:my_demo/view/screens/home/widgets/the_search_bar.dart';

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
          TheSearchBar(),
          TheCategoryItem(),
          ItemCardBuilder(),
          // Center(child: Image.asset('assets/images/beyond-meat-mcdonalds.png',),),

          OffersAndDiscounts(),

          // BigItemCardBuilder(),
        ],
      ),
    );
  }
}
