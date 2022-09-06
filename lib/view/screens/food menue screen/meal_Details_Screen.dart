import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/adding_meal_controller.dart';

import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/shared/big_button.dart';
import 'package:my_demo/core/shared/the%20appbar/the_app_bar.dart';
import 'package:my_demo/core/shared/title_builder.dart';
import 'package:my_demo/data/model/meal_detials_class.dart';
import 'package:my_demo/view/screens/cart%20screen/cart_screen.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/add_remove_row.dart';

class MealDetailsScreen extends StatelessWidget {
// MyDb sqldp = MyDb;

  final AddingMealController addingMealController = Get.find();
  final List<MealDetailsClass> foodListItems;
  final int indexOfTheMealDetails;

  MealDetailsScreen(
      {Key? key,
      required this.foodListItems,
      required this.indexOfTheMealDetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    MealDetailsClass find = foodListItems[indexOfTheMealDetails];
    return Scaffold(
      appBar: TheAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image.asset(find.mealImg),
            Padding(
              padding: const EdgeInsets.all(theDefaultPadding),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 6,
                        child: TitleBuilder(
                          theTitle: find.mealTitle,
                        ),
                      ),
                      Flexible(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                for (int i = 0; i < find.mealStarsCount; i++)
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.red,
                                  ),
                              ],
                            ),
                            Text(find.mealRating.toString() + 'Ratings')
                          ],
                        ),
                      ),
                    ],
                  ),
                  emptySpace,
                  Container(
                    child: Text(
                      find.mealDiscription,
                      style: TextStyle(
                        color: AppColor.kTextColor,
                      ),
                    ),
                  ),
                  emptySpace,
                  Row(
                    children: [
                      Expanded(
                        child: BigggButton(
                            theLeadingIcon: Icons.delivery_dining_outlined,
                            theButtonTitle: 'add to cart',
                            onTaped: () {
                              addingMealController.addMealToCart(find);
                            },
                            leadingIconColor: AppColor.kTextColor,
                            buttonTitleColor: AppColor.kTextColor),
                      ),
                      emptySpace,
                      AddRemoveRow(
                        itemsCount: find.mealCount,
                        onAdd: () {},
                        onRemove: () {},
                      ),
                    ],
                  ),
                  BigggButton(
                      theLeadingIcon: Icons.shop_rounded,
                      theButtonTitle: 'go to my cart',
                      onTaped: () {
                        Get.to(() => CartScreen());
                      },
                      leadingIconColor: AppColor.kTextColor,
                      buttonTitleColor: AppColor.kTextColor)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
