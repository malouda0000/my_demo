import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../core/constants/app_color.dart';

class DarknessRow extends StatelessWidget {
  const DarknessRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List darknessList = [
      AppColor.kTextBlacColor,
      AppColor.kTextBlacColor,
    ];
    return GridView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: darknessList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          crossAxisCount: 2,
        ),
        itemBuilder: ((context, index) => Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: darknessList[index]),
              child: Text(
                'Dark theme',
              ),
            )));
  }
}
