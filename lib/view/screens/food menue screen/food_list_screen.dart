import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/shared/circuled_image_with_border.dart';
import 'package:my_demo/data/model/meal_detials_class.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/add_remove_column.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/food_list_tile.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/meal_Details_Screen.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/rating_stars_builder.dart';

class FoodListScreen extends StatelessWidget {
  final List<MealDetailsClass> foodListItems;

  final theListTileIndex;
  const FoodListScreen(
      {Key? key, this.theListTileIndex, required this.foodListItems})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.kPrimaryColor,
          elevation: 0,
          // leading: Icon(
          //   Icons.arrow_back,
          //   color: AppColor.kTextColor,
          // ),
        ),
        body: ListView.builder(
          itemCount: foodListItems.length,
          itemBuilder: (context, index) {
            final find = foodListItems[index];
            return InkWell(
              onTap: () {
                Get.to(() => MealDetailsScreen(
                      foodListItems: foodListItems,
                      indexOfTheMealDetails: index,
                    ));
              },
              child: FoodListTile(
                mealTitle: foodListItems[index].mealTitle,
                mealPrefDis: foodListItems[index].mealPrefDiscription,
                onPresseded: () {},
                starsCount: foodListItems[index].mealStarsCount,
                imagePath: foodListItems[index].mealImg,
                itemsCount: foodListItems[index].mealCount,
              ),
            );
          },
        ));
  }
}
