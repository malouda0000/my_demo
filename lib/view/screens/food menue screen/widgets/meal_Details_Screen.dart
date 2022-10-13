import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/adding_meal_controller.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/localization/localization.dart';
import 'package:my_demo/core/shared/big_button.dart';
import 'package:my_demo/core/shared/title_builder.dart';
import 'package:my_demo/get_pages.dart';
import 'package:my_demo/model/models/meal_detials_class.dart';

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
      // appBar: SliverAppBar( ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                            borderRadius:
                                BorderRadius.circular(theDefaultRaduis),
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
                            // color: AppColor.kTextColor,
                            ),
                      ),
                    ),
                    emptySpace,
                    Row(
                      children: [
                        Expanded(
                          child: BigggButton(
                            // add  to cart button
                            theLeadingIcon: Icons.add_rounded,
                            theButtonTitle: AppLocal.addToTheCart.tr,
                            onTaped: () {
                              Get.isSnackbarOpen
                                  ? () {}
                                  : GetSnackBar(
                                      message: AppLocal.done.tr,
                                    );
                              addingMealController.addMealToCart(find);
                            },
                          ),
                        ),
                        emptySpace,
                      ],
                    ),
                    emptySpace,
                    BigggButton(
                      // go to user cart button
                      theLeadingIcon: Icons.shop_rounded,
                      theButtonTitle: AppLocal.goToMyCart.tr,
                      onTaped: () {
                        Get.toNamed(AppRoute.cartScreen);
                      },
                    ),
                    emptySpace,
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
