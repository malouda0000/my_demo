import 'package:flutter/material.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/view/screens/home/widgets/item_card_builder.dart';
import 'package:my_demo/view/screens/home/widgets/offers_and_discounts.dart';

class TempPage extends StatelessWidget {
  const TempPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        OffersAndDiscounts(),
        emptySpace,
        ItemCardBuilder(),
      ],
    );
  }
}
