import 'package:flutter/material.dart';
import 'package:my_demo/core/constants/app_images.dart';
import 'package:my_demo/core/shared/backgroundContainer.dart';
import 'package:my_demo/view/screens/detials%20screen/widgets/deatials_image.dart';
import 'package:my_demo/view/screens/detials%20screen/widgets/discription_container.dart';
import '../../../core/constants/app_color.dart';
import 'widgets/detials_screen_app_bar.dart';

class DetialsScreen extends StatelessWidget {
  const DetialsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kPrimaryColor,
      appBar: DetialsScreenAppBar(context),
      body: Stack(
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
      ),
    );
  }
}
