import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../core/constants/app_color.dart';
import '../../../../core/constants/app_images.dart';
import 'package:my_demo/get_pages.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/localization/localization.dart';

class ItemCardBuilder extends StatelessWidget {
  ItemCardBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < 11; i++)
            TheItemCard(
              title: AppLocal.burgerKing.tr,
              discription: AppLocal.bestBurger.tr,
              svgSrc: AppImages.burger_beer,
              pressit: () {
                Get.toNamed(AppRoute.detailsScreen);
              },
            ),
        ],
      ),
    );
  }
}

class TheItemCard extends StatelessWidget {
  final String title, discription, svgSrc;
  final void Function()? pressit;
  TheItemCard(
      {Key? key,
      required this.title,
      required this.discription,
      this.svgSrc = AppImages.burger_beer,
      required this.pressit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(theDefaultRaduis),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 1),
              blurRadius: 5,
              color: Theme.of(context).shadowColor
              // color: AppColor.ksecondaryColor.withOpacity(0.70),
              ),
        ],
      ),
      // child: SvgPicture.asset('assets/images/beyond-meat-mcdonalds.png'),

      child: Material(
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: pressit,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.kPrimaryColor.withOpacity(0.32),
                  ),
                  child: SvgPicture.asset(
                    svgSrc,
                    height: Get.height * .08,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: AppColor.kPrimaryColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  discription,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
