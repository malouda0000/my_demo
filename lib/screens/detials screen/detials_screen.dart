import 'package:flutter/material.dart';
import 'package:my_demo/constants.dart';
import 'package:my_demo/screens/detials%20screen/components/detials_screen_app_bar.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

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
        Expanded(
          child: Container(
            alignment: AlignmentDirectional.topStart,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: theMainLightColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: ksecondaryColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'khartoum city',
                      style: TextStyle(
                        color: kTextColor,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Big Burger',
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SmoothStarRating(
                              allowHalfRating: true,
                              borderColor: kPrimaryColor,
                              rating: 4.5,
                            ),
                            Text(
                              ' 24 reviews',
                              style: TextStyle(
                                color: kTextColor,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(20),
                      child: Text(
                        '\$ 15',
                        style: TextStyle(
                          color: kTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
