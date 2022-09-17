import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/adding_meal_controller.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/localization/localization.dart';
import 'package:my_demo/core/shared/title_builder.dart';
import 'package:my_demo/model/model/meal_detials_class.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/food_list_tile.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/meal_Details_Screen.dart';

class FoodListScreen extends StatelessWidget {
  final List<MealDetailsClass> foodListItems;
  AddingMealController addingMealController = Get.find();

  final theListTileIndex;
  FoodListScreen({Key? key, this.theListTileIndex, required this.foodListItems})
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
        body: ListView(
          children: [
            Container(
                padding: EdgeInsets.all(theDefaultPadding),
                alignment: Alignment.center,
                child: TitleBuilder(theTitle: AppLocal.moreMealDeatial.tr)),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: foodListItems.length,
              itemBuilder: (context, index) {
                // final find = foodListItems[index];
                return InkWell(
                  onTap: () {
                    Get.to(
                      () => MealDetailsScreen(
                        foodListItems: foodListItems,
                        indexOfTheMealDetails: index,
                      ),
                    );
                  },
                  child: FoodListTile(
                    mealTitle: foodListItems[index].mealTitle,
                    mealPrefDis: foodListItems[index].mealPrefDiscription,
                    onPresAddButt: () {
                      addingMealController.addMealToCart(foodListItems[index]);
                    },
                    starsCount: foodListItems[index].mealStarsCount,
                    imagePath: foodListItems[index].mealImg,
                    itemsCount: foodListItems[index].mealCount,
                  ),
                );
              },
            ),
          ],
        ));
  }
}
