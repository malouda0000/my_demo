import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/view/screens/detials%20screen/widgets/custom_rating.dart';
import '../../../../core/constants/app_color.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/localization/localization.dart';
import '../../../../core/shared/big_button.dart';
import '../detials_screen.dart';

class DiscriptionContainer extends StatelessWidget {
  const DiscriptionContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.topStart,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.location_on,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                AppLocal.cityname.tr,
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    AppLocal.bigBurger.tr,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CustomRating(
                        ratingColor: AppColor.kPrimaryColor,
                      ),
                      CustomRating(
                        ratingColor: AppColor.kPrimaryColor,
                      ),
                      CustomRating(
                        ratingColor: AppColor.kPrimaryColor,
                      ),
                      CustomRating(
                        ratingColor: AppColor.kPrimaryColor,
                      ),
                      // CustomRating(
                      //   ratingColor: AppColor.kPrimaryColor,
                      // ),
                      // SmoothStarRating(
                      //   allowHalfRating: true,
                      //   borderColor: AppColor.kPrimaryColor,
                      //   rating: 4.5,
                      // ),

                      // i have comment it cuz it's not null safty

                      //
                      //
                      //

                      // SmoothStarRating(
                      //           allowHalfRating: false,
                      //           onRatingChanged: (v) {
                      //             rating = v;
                      //             setState(() {});
                      //           },
                      //           starCount: 5,
                      //           rating: rating,
                      //           size: 40.0,
                      //           filledIconData: Icons.blur_off,
                      //           halfFilledIconData: Icons.blur_on,
                      //           color: Colors.green,
                      //           borderColor: Colors.green,
                      //           spacing:0.0
                      //         ),

                      //
                      //
                      //
                      //
                      emptySpace,
                      Text(
                        AppLocal.numberOfReviews,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        AppLocal.reviews.tr,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Container(
                height: Get.width * .18,
                width: Get.width * .18,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(theDefaultRaduis),
                ),
                // padding: const EdgeInsets.all(20),
                child: Text(
                  '\$ 15',
                  style: TextStyle(
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: Text(AppLocal.macdonalz.tr,
                style: Theme.of(context).textTheme.bodyText1, softWrap: true),
          ),
          emptySpace,
          BigggButton(
              theLeadingIcon: Icons.delivery_dining_outlined,
              theButtonTitle: AppLocal.order.tr,
              onTaped: () {
                Get.snackbar(
                  AppLocal.order.tr,
                  AppLocal.commingSoon.tr,
                );
              })
        ],
      ),
    );
  }
}
