import 'package:flutter/material.dart';
import 'package:my_demo/screens/home/widgets/item_card_builder.dart';
import 'package:my_demo/screens/home/widgets/offers_and_discounts.dart';
import 'package:my_demo/screens/home/widgets/the_category_item.dart';
import 'package:my_demo/screens/home/widgets/the_search_bar.dart';

class TheBody extends StatefulWidget {
  const TheBody({Key? key}) : super(key: key);

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
        children: const [
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
