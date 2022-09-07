import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/cart_controller.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/rating_stars_builder.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
    required this.shourtCut,
  }) : super(key: key);

  final Map shourtCut;

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.find();
    // print(shourtCut['image']).runTimeType ;
    late Future<String> imagePath = shourtCut['image'];
    return Padding(
      padding: EdgeInsets.all(theDefaultPadding),
      child: Container(
        padding: EdgeInsets.only(
          left: theDefaultPadding,
          bottom: theDefaultPadding,
        ),
        height: Get.height * .15,
        // height: double.infinity,
        width: double.infinity,

        //  i couldn't import the asset image, i call it true but
        //  its still say error
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.indigoAccent,
            borderRadius: BorderRadius.circular(theDefaultRaduis)
            // image: DecorationImage(
            //   image:
            //       AssetImage(shourtCut['image'].toString()),
            // ),
            ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // emptySpace,
                  Text(
                    shourtCut['title'],
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    shourtCut['prefdiscription'],
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  RatingStarsBuilder(
                    starsCount: shourtCut['starscount'],
                    starsColor: AppColor.kTextColor,
                  ),
                ],
              ),
            ),
            const Spacer(),

            Container(
              color: Colors.greenAccent,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(theDefaultRaduis),
                    ),
                    height: 35,
                    child: IconButton(
                      // onPressed: null,
                      onPressed: () async {
                        await cartController.deletItem(shourtCut['id']);
                      },
                      icon: Icon(
                        Icons.delete_rounded,
                        // color: AppColor.kTextColor,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  const Spacer(),
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
                  // emptySpace,
                ],
              ),
            ),
            const Spacer(),
            Stack(
              children: [
                Container(
                  color: Colors.red,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: theDefaultPadding,
                          ),

                          height: Get.height * .12,
                          width: Get.height * .12,
                          decoration: BoxDecoration(
                            color: Colors.indigoAccent,
                            shape: BoxShape.circle,
                            // image: DecorationImage(
                            //   image: AssetImage(
                            //       //  cartController. ,
                            //       shourtCut['image']),
                            //   fit: BoxFit.cover,
                            // ),
                          ),
                          // child: Text(shourtCut['image']),
                          // child: Text(shourtCut['image'].runtimeType.toString()),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
//  here i also tried to import the image , but the same error,
//  couldn't improt assets image

            // CircularDiscriptionImage(
            //   assetImageName: shourtCut['image'].toString(),
            // ),

            // Text(shourtCut['image']),
          ],
        ),
      ),
    );
  }
}
