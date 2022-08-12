import 'package:flutter/material.dart';
import 'package:my_demo/constants.dart';
import 'package:my_demo/screens/detials%20screen/widgets/detials_screen_app_bar.dart';
import 'package:my_demo/screens/detials%20screen/widgets/detials_screen_body.dart';
import 'package:my_demo/widgets/bottom_nav_bar.dart';

class DetialsScreen extends StatelessWidget {
  const DetialsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: DetialsScreenAppBar(),
      body: const DeatialsScreenBody(
        imageSrc: 'assets/images/burger.png',
      ),
      bottomNavigationBar: const TheBottomeNavBar(),
    );
  }
}

class CustomRating extends StatelessWidget {
  final Color ratingColor = kPrimaryColor;
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
