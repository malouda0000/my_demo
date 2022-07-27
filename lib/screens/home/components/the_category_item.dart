import 'package:flutter/material.dart';
import 'package:my_demo/constants.dart';

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

class ItemBuilder extends StatelessWidget {
  String title;
  bool isActive;
  Function pressed;

  ItemBuilder({
    Key? key,
    required this.title,
    required this.pressed,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            Text(
              title,
              style: isActive
                  ? const TextStyle(
                      color: kTextColor, fontWeight: FontWeight.bold
                      // fontSize: 12,
                      )
                  : const TextStyle(
                      color: ksecondaryColor,
                      // fontSize: 12,
                    ),
            ),
            if (isActive)
              Container(
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                margin: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 8,
                ),
                height: 3,
                width: 22,
              ),
          ],
        ),
      ),
    );
  }
}
