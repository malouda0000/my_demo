import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:my_demo/constans/app_images.dart';
import '../../../constans/app_color.dart';
import '../../../localization/localization.dart';

class OffersAndDiscounts extends StatelessWidget {
  const OffersAndDiscounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size theSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
          child: Text(
            AppLocal.offersAndDiscounts.tr,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColor.kTextColor,
            ),
          ),
        ),
        Container(
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
        )
      ],
    );
  }
}
