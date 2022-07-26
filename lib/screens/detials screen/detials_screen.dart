import 'package:flutter/material.dart';
import 'package:my_demo/constants.dart';
import 'package:my_demo/screens/detials%20screen/components/detials_screen_app_bar.dart';

class DetialsScreen extends StatelessWidget {
  DetialsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: DetialsScreenAppBar(),
      body: DetialsScreenBody(
        imageSrc: 'assets/images/burger.png',
      ),
    );
  }
}

class DetialsScreenBody extends StatelessWidget {
  final String imageSrc;
  const DetialsScreenBody({Key? key, required this.imageSrc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size theSize = MediaQuery.of(context).size;

    return Column(
      children: [
        Image.asset(
          height: theSize.height * 0.25,
          width: double.infinity,
          fit: BoxFit.fill,
          imageSrc,
        ),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: theMainLightColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
        )
      ],
    );
  }
}
