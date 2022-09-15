import 'package:flutter/material.dart';
import 'package:my_demo/view/screens/detials%20screen/widgets/detials_screen_body.dart';
import '../../../core/constants/app_color.dart';
import 'widgets/detials_screen_app_bar.dart';

class DetialsScreen extends StatelessWidget {
  const DetialsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kPrimaryColor,
      appBar: DetialsScreenAppBar(),
      body: const DeatialsScreenBody(),
      // bottomNavigationBar: const TheBottomNavBar(),
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
