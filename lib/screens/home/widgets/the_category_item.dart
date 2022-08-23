import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../localization/localization.dart';
import 'item_title_builder.dart';

class TheCategoryItem extends StatelessWidget {
  const TheCategoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ItemBuilder(
              title: AppLocal.bigBurger.tr,
              pressed: () {},
              isActive: true,
            ),
            ItemBuilder(
              title: AppLocal.pitza.tr,
              pressed: () {},
            ),
            ItemBuilder(
              title: AppLocal.capitcheno.tr,
              pressed: () {},
            ),
            ItemBuilder(
              title: AppLocal.hotdoge.tr,
              pressed: () {},
            ),
            ItemBuilder(
              title: AppLocal.smallBurger.tr,
              pressed: () {},
            ),
            ItemBuilder(
              title: AppLocal.bigBurger.tr,
              pressed: () {},
              // isActive: true,
            ),
            ItemBuilder(
              title: AppLocal.pitza.tr,
              pressed: () {},
            ),
            ItemBuilder(
              title: AppLocal.bigBurger.tr,
              pressed: () {},
              // isActive: true,
            ),
            ItemBuilder(
              title: AppLocal.pitza.tr,
              pressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
