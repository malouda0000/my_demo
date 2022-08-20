import 'package:flutter/material.dart';

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
              title: 'bigburger',
              pressed: () {},
              isActive: true,
            ),
            ItemBuilder(
              title: 'pitza',
              pressed: () {},
            ),
            ItemBuilder(
              title: 'captcheno',
              pressed: () {},
            ),
            ItemBuilder(
              title: 'hotdoge',
              pressed: () {},
            ),
            ItemBuilder(
              title: 'smallburger',
              pressed: () {},
            ),
            ItemBuilder(
              title: 'bigburger',
              pressed: () {},
              // isActive: true,
            ),
            ItemBuilder(
              title: 'pitza',
              pressed: () {},
            ),
            ItemBuilder(
              title: 'bigburger',
              pressed: () {},
              // isActive: true,
            ),
            ItemBuilder(
              title: 'pitza',
              pressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
