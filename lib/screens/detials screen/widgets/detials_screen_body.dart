import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:my_demo/constants.dart';
import 'package:my_demo/screens/detials%20screen/widgets/deatials_image.dart';
import 'package:my_demo/screens/detials%20screen/widgets/discription_container.dart';
import 'package:my_demo/widgets/backgroundContainer.dart';

class DeatialsScreenBody extends StatelessWidget {
  const DeatialsScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            BackgrounContainer(),
            Column(
              children: [
                DeatialsImage(
                  imageSrc: 'assets/images/burger.png',
                ),
                DiscriptionContainer(),
              ],
            ),
          ],
        ));
  }
}
