import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/cart_controller.dart';

import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/view/screens/cart%20screen/widgets/EmptyTheCartButton.dart';

import 'package:my_demo/view/screens/food%20menue%20screen/food_list_tile.dart';

class UserCartItemsList extends StatelessWidget {
  const UserCartItemsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.find();
    return Container(
      width: Get.width,
      child: ListView(
        children: [
          FutureBuilder(
            future: cartController.readData(),
            builder: (BuildContext context, AsyncSnapshot<List<Map>> snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, i) {
                    Map<dynamic, dynamic> shourtCut = snapshot.data![i];

                    return FoodListTile(
                      mealTitle: shourtCut['title'].toString(),
                      mealPrefDis: shourtCut['prefdiscription'].toString(),
                      // imagePath: shourtCut['image'],
                      itemsCount: shourtCut.length,
                      starsCount: 3,
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
