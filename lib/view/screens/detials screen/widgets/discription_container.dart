import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      decoration: const BoxDecoration(
        color: AppColor.theMainLightColor,
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
                color: AppColor.kTextColor,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                AppLocal.cityname.tr,
                style: TextStyle(
                  color: AppColor.kTextColor,
                ),
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
                    style: TextStyle(
                      color: AppColor.kTextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
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
                        style: TextStyle(
                          color: AppColor.kTextColor,
                        ),
                      ),
                      Text(
                        AppLocal.reviews.tr,
                        style: TextStyle(
                          color: AppColor.kTextColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: AppColor.kPrimaryColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(20),
                child: const Text(
                  '\$ 15',
                  style: TextStyle(
                    color: AppColor.kTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: Text(AppLocal.macdonalz.tr, softWrap: true),
          ),
          emptySpace,
          BigggButton(
              leadingIconColor: AppColor.theMainLightColor,
              buttonTitleColor: AppColor.theMainLightColor,
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
