import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/localization/localization.dart';
import 'package:my_demo/core/shared/circuled_image_with_border.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/add_remove_column.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/rating_stars_builder.dart';

class FoodListTile extends StatelessWidget {
  final String mealTitle, mealPrefDis;

  String? imagePath = null;
  final int itemsCount, starsCount;
  void Function()? onPresAddButt = null;
  FoodListTile(
      {Key? key,
      required this.mealTitle,
      required this.mealPrefDis,
      this.imagePath,
      required this.itemsCount,
      this.onPresAddButt,
      required this.starsCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .18,
      width: Get.width,
      margin: EdgeInsets.all(theDefaultPadding),
      padding: EdgeInsets.all(theDefaultPadding),
      decoration: BoxDecoration(
          // color: AppColor.theMainLightColor,

          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(theDefaultRaduis),
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 1),
              blurRadius: 5,
              color: Theme.of(context).shadowColor,
            ),
          ]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                mealTitle,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                mealPrefDis,
                softWrap: true,
              ),
              onPresAddButt != null
                  ? MaterialButton(
                      onPressed: onPresAddButt,
                      child: Text(AppLocal.add.tr),
                      color: AppColor.kPrimaryColor,
                    )
                  : RatingStarsBuilder(
                      starsCount: starsCount,
                      starsColor: AppColor.kPrimaryColor)
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Spacer(),

            AddRemoveColumn(
              itemsCount: itemsCount,
            ),
            emptySpace
          ],
        ),
        // CircularDiscriptionImage(
        //   assetImageName: foodListItems[index].mealImg,
        // ),

        CircularImageWithBorder(
          imagePath: imagePath,
        )
      ]),
    );
  }
}
