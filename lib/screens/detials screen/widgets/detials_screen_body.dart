import 'package:flutter/material.dart';
import 'package:my_demo/constans/app_images.dart';
import 'package:my_demo/screens/detials%20screen/widgets/deatials_image.dart';
import 'package:my_demo/screens/detials%20screen/widgets/discription_container.dart';
import 'package:my_demo/widgets/backgroundContainer.dart';

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
