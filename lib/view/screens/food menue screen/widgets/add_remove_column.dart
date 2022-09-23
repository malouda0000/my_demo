import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/adding_meal_controller.dart';
import 'package:my_demo/core/constants/app_color.dart';

class AddRemoveColumn extends StatelessWidget {
  AddingMealController addingMealController = Get.find();
  final int itemsCount;
  final String mealTitle;

  AddRemoveColumn({
    Key? key,
    required this.itemsCount,
    required this.mealTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    addingMealController = Get.put(AddingMealController());
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // Spacer(),
        InkWell(
          onTap: () {
            // Get.isSnackbarOpen ? () {} : Get.snackbar('add', 'comming soon');
            addingMealController.checkMeal(mealTitle);
          },
          child: CirButtonBuilder(
            childWiget: Icon(
              Icons.add_rounded,
            ),
          ),
        ),
        CirButtonBuilder(
          childWiget: Text(
            itemsCount.toString(),
          ),
        ),
        InkWell(
          onTap: () {
            Get.isSnackbarOpen ? () {} : Get.snackbar('remove', 'comming soon');
          },
          child: CirButtonBuilder(
            childWiget: Icon(
              Icons.remove_rounded,
            ),
          ),
        ),
      ],
    );
  }
}

class CirButtonBuilder extends StatelessWidget {
  final Widget childWiget;
  const CirButtonBuilder({Key? key, required this.childWiget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(1),
      alignment: Alignment.center,
      width: Get.height * .035,
      height: Get.height * .035,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: AppColor.kPrimaryColor),
      child: childWiget,
    );
  }
}
