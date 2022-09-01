import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/data/model/meal_detials_class.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/add_remove_row.dart';
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
              child: Container(
                height: Get.height * .14,
                width: Get.width,
                margin: EdgeInsets.all(theDefaultPadding),
                padding: EdgeInsets.only(left: theDefaultPadding),
                decoration: BoxDecoration(
                    color: AppColor.theMainLightColor,
                    borderRadius: BorderRadius.circular(theDefaultRaduis),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        blurRadius: 1,
                      ),
                    ]),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            foodListItems[index].mealTitle,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            foodListItems[index].mealPrefDiscription,
                            softWrap: true,
                          ),
                          RatingStarsBuilder(
                            starsCount: find.mealStarsCount,
                            starsColor: AppColor.kPrimaryColor,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Spacer(),
                          AddRemoveRow(
                            itemsCount: foodListItems[index].mealCount,
                            onAdd: () {},
                            onRemove: () {},
                          ),
                          emptySpace
                        ],
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                          foodListItems[index].mealImg,
                        ),
                      ),
                    ]),
              ),
            );
          },
        ));
  }
}
