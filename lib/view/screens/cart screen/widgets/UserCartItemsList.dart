import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/adding_meal_controller.dart';
import 'package:my_demo/controllers/cart_controller.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/model/models/meal_detials_class.dart';
import 'package:my_demo/view/screens/cart%20screen/widgets/EmptyTheCartButton.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/widgets/food_list_tile.dart';

class UserCartItemsList extends StatelessWidget {
  const UserCartItemsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.find();
    Get.put(AddingMealController());

    return Container(
      width: Get.width,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        children: [
          FutureBuilder(
            future: cartController.readData(),
            builder: (BuildContext context,
                AsyncSnapshot<List<MealDetailsClass>> snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, i) {
                    MealDetailsClass shourtCut = snapshot.data![i];

                    return FoodListTile(
                      mealTitle: shourtCut.mealTitle,
                      mealPrefDis: shourtCut.mealPrefDiscription,
                      imagePath: shourtCut.mealImg.toString(),
                      itemsCount: shourtCut.mealCount,
                      starsCount: shourtCut.mealStarsCount,
                      // starsCount: shourtCut['starsCount'],
                    );
                  },
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
          EmptyTheCartButton(),
          emptySpace,
          emptySpace,
          emptySpace,
          emptySpace,
          emptySpace,
          emptySpace,
          emptySpace,
          emptySpace,
        ],
      ),
    );
  }
}
