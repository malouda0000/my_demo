import 'package:flutter/material.dart';
// import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/food_menue_screen.dart';
import 'package:my_demo/view/screens/home/widgets/offers_and_discounts.dart';

class CategoresPage extends StatelessWidget {
  const CategoresPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        FoodMenueScreen(),
        // emptySpace,
        OffersAndDiscounts(),
      ],
    );
  }
}
