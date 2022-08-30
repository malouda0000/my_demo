import 'package:flutter/material.dart';

import '../../../../core/constants/app_images.dart';
import '../../../../core/shared/backgroundContainer.dart';
import 'deatials_image.dart';
import 'discription_container.dart';

class DeatialsScreenBody extends StatelessWidget {
  const DeatialsScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgrounContainer(),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              DeatialsImage(
                imageSrc: AppImages.burger,
              ),
              DiscriptionContainer(),
            ],
          ),
        ),
      ],
    );
  }
}
