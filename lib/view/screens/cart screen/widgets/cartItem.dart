import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/view/screens/cart%20screen/widgets/delete_meal_button.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/rating_stars_builder.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
    required this.shourtCut,
  }) : super(key: key);

  final Map shourtCut;

  @override
  Widget build(BuildContext context) {
    // CartController cartController = Get.find();
    // print(shourtCut['image']).runTimeType ;
    // late Future<String> imagePath = shourtCut['image'];
    return Padding(
      padding: EdgeInsets.all(theDefaultPadding),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(theDefaultPadding),
            height: Get.height * .20,
            // height: double.infinity,
            width: double.infinity,

            //  i couldn't import the asset image, i call it true but
            //  its still say error
            // alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColor.theMainLightColor,
              // border: Border.all(
              //   color: AppColor.kTextColor,
              // ),
              borderRadius: BorderRadius.circular(theDefaultRaduis),
              boxShadow: [
                // BoxShadow(
                //   offset: Offset(
                //     4,
                //     4,
                //   ),
                //   blurRadius: 3,
                //   color: Colors.black.withOpacity(.7),
                // ),

                BoxShadow(
                  offset: Offset(0, 1),
                  blurRadius: 12,
                  color: AppColor.kTextColor.withOpacity(.5),
                ),
              ],
              // image: DecorationImage(
              //   image:
              //       AssetImage(shourtCut['image'].toString()),
              // ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // emptySpace,
                    Text(
                      shourtCut['title'],
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: AppColor.kPrimaryColor),
                    ),
                    Text(
                      shourtCut['prefdiscription'],
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    RatingStarsBuilder(
                      starsCount: shourtCut['starscount'],
                      starsColor: AppColor.kPrimaryColor,
                    ),
                    Row(
                      children: [
                        Text(
                          shourtCut['price'].toString(),
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: AppColor.kPrimaryColor),
                        ),
                        Text(
                          ' \$',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  height: Get.height * .14,
                  width: Get.height * .14,
                  decoration: BoxDecoration(
                    color: AppColor.kPrimaryColor,
                    shape: BoxShape.circle,
                    // image: DecorationImage(
                    //   image: AssetImage(
                    //       //  cartController. ,
                    //       shourtCut['image']),
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                  child: Text('meal image'),
                ),
              ],
            ),
          ),
          DeletMealButton(shourtCut: shourtCut),
        ],
      ),
    );
  }
}



//  here i also tried to import the image , but the same error,
//  couldn't improt assets image

            // CircularDiscriptionImage(
            //   assetImageName: shourtCut['image'].toString(),
            // ),

            // Text(shourtCut['image']),