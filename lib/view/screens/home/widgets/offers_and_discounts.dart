import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/shared/title_builder.dart';

import '../../../../core/constants/app_color.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/localization/localization.dart';

class OffersAndDiscounts extends StatelessWidget {
  const OffersAndDiscounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size theSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleBuilder(
          theTitle: AppLocal.offersAndDiscounts.tr,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: theDefaultPadding,
          ),
          child: Container(
            height: theSize.height * .3,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.burger),
              ),
            ),
            // height: 188,
            // width: 33,
            // color: Colors.red,

            child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(colors: [
                    AppColor.kTextBlacColor.withOpacity(.1),
                    AppColor.kTextBlacColor.withOpacity(.1),
                  ])

                  //  LinearGradient(
                  //   colors: [
                  //     kPrimaryColor.withOpacity(.5),
                  //     // ksecondaryColor.withOpacity(.5),
                  //     Colors.white.withOpacity(.4)
                  //   ],
                  // ),
                  ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(AppImages.macdonalds),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              text: AppLocal.getDiscountOff.tr + '\n'),
                          TextSpan(
                            style: TextStyle(
                                fontSize: 49, fontWeight: FontWeight.bold),
                            text: AppLocal.therty.tr + ' \n',
                          ),
                          TextSpan(
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              text: AppLocal.now.tr),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
