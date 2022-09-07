import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/shared/circuled_image_with_border.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/add_remove_column.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/rating_stars_builder.dart';

class FoodListTile extends StatelessWidget {
  final String mealTitle, mealPrefDis, imagePath;
  final int itemsCount, starsCount;
  void Function()? onPresseded = null;
  FoodListTile(
      {Key? key,
      required this.mealTitle,
      required this.mealPrefDis,
      required this.imagePath,
      required this.itemsCount,
      this.onPresseded,
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
          color: AppColor.theMainLightColor,
          borderRadius: BorderRadius.circular(theDefaultRaduis),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 1),
              blurRadius: 12,
              color: AppColor.kTextColor.withOpacity(.5),
            ),
          ]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        // Container(
        //   color: Colors.red,
        //   child: const SizedBox(
        //       // width: 5,
        //       // height: 5,

        //       ),
        // ),
        Container(
          // width: Get.width * .25,
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
              onPresseded != null
                  ? MaterialButton(
                      onPressed: onPresseded,
                      child: Text('add'),
                      color: AppColor.kPrimaryColor,
                    )
                  : RatingStarsBuilder(
                      starsCount: starsCount,
                      starsColor: AppColor.kPrimaryColor)
            ],
          ),
        ),
        Column(
          children: [
            Spacer(),
            AddRemoveColumn(
              itemsCount: itemsCount,
              onAdd: () {},
              onRemove: () {},
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
