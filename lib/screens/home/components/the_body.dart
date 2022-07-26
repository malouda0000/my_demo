import 'package:flutter/material.dart';
import 'package:my_demo/screens/home/components/item_card_builder.dart';
import 'package:my_demo/screens/home/components/offers_and_discounts.dart';
import 'package:my_demo/screens/home/components/the_category_item.dart';
import 'package:my_demo/screens/home/components/the_search_bar.dart';

class TheBody extends StatefulWidget {
  TheBody({Key? key}) : super(key: key);

  @override
  State<TheBody> createState() => _TheBodyState();
}

class _TheBodyState extends State<TheBody> {
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
        ],
      ),
    );
  }
}
