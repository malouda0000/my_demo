import 'package:flutter/material.dart';
import '../../../constans/app_color.dart';
import 'package:my_demo/screens/detials%20screen/widgets/detials_screen_app_bar.dart';
import 'package:my_demo/screens/detials%20screen/widgets/detials_screen_body.dart';
import 'package:my_demo/widgets/bottom%20navigation%20bar/bottom_nav_bar.dart';

class DetialsScreen extends StatelessWidget {
  const DetialsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kPrimaryColor,
      appBar: DetialsScreenAppBar(),
      body: const DeatialsScreenBody(),
      bottomNavigationBar: const TheBottomNavBar(),
    );
  }
}

class CustomRating extends StatelessWidget {
  final Color ratingColor = AppColor.kPrimaryColor;
  const CustomRating({
    Key? key,
    ratingColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: ratingColor,
    );
  }
}
