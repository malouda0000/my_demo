import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/adding_meal_controller.dart';

import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/localization/localization.dart';
import 'package:my_demo/core/shared/big_button.dart';
import 'package:my_demo/core/shared/title_builder.dart';
import 'package:my_demo/data/model/meal_detials_class.dart';
import 'package:my_demo/get_pages.dart';

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
                    children: [
                      Text(
                        AppLocal.cityname.tr,
                      ),
                      emptySpace,
                      Icon(Icons.location_on_rounded),
                    ],
                  ),
                  // emptySpace,
                  Row(
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleBuilder(
                            theTitle: find.mealTitle,
                          ),
                          Row(
                            children: [
                              for (int i = 0; i < find.mealStarsCount; i++)
                                Icon(
                                  Icons.star_rounded,
                                  color: AppColor.kPrimaryColor,
                                ),
                              emptySpace,
                              Text(find.mealRating.toString() + ' Ratirings'),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: Get.width * .18,
                        width: Get.width * .18,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColor.kPrimaryColor,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(theDefaultRaduis),
                        ),
                        // padding: const EdgeInsets.all(20),
                        child: Text(
                          '\$ ' + find.mealPrice.toString(),
                          style: TextStyle(
                            color: AppColor.kTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      emptySpace,
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
                          theLeadingIcon: Icons.add_rounded,
                          theButtonTitle: 'add to cart',
                          onTaped: () {
                            Get.isSnackbarOpen
                                ? () {}
                                : GetSnackBar(
                                    message: 'added succsfuly',
                                  );
                            addingMealController.addMealToCart(find);
                          },
                        ),
                      ),
                      emptySpace,
                    ],
                  ),
                  BigggButton(
                    theLeadingIcon: Icons.shop_rounded,
                    theButtonTitle: 'go to my cart',
                    onTaped: () {
                      Get.toNamed(AppRoute.cartScreen);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
