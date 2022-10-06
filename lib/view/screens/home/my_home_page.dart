import 'package:flutter/material.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/shared/bottom%20navigation%20bar/bottom_nav_bar.dart';
import 'package:my_demo/core/shared/title_builder.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/food_menue_screen.dart';
import 'package:my_demo/view/screens/home/widgets/custom_search_bar.dart';
import 'package:my_demo/view/screens/home/widgets/item_card_builder.dart';
import 'package:my_demo/view/screens/home/widgets/offers_and_discounts.dart';
import 'package:my_demo/view/screens/home/widgets/the_category_item.dart';
import '../../../core/shared/the appbar/the_app_bar.dart';
import '../../../core/shared/the_drawer.dart';

// GlobalKey<ScaffoldState> myKey = GlobalKey();
GlobalKey<ScaffoldState> myKey = GlobalKey<ScaffoldState>();

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // GlobalKey<ScaffoldState> ScaffoldGenralKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: myKey,
      drawer: const TheDrawer(),
      appBar: TheAppBar(context),
      bottomNavigationBar: TheBottomNavBar(),
      // drawer: (),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchBar(),
            TheCategoryItem(),
            ItemCardBuilder(),
            OffersAndDiscounts(),
            FoodMenueScreen(),
            emptySpace,
            Padding(
              padding: const EdgeInsets.all(theDefaultPadding),
              child: TitleBuilder(theTitle: 'more offers'),
            ),
            emptySpace,
            ItemCardBuilder(),
          ],
        ),
      ),
      // floatingActionButton: const TheFap(),
    );
  }
}
