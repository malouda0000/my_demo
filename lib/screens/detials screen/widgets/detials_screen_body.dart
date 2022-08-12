import 'package:flutter/material.dart';

import 'package:my_demo/constants.dart';
import 'package:my_demo/screens/detials%20screen/detials_screen.dart';

class DeatialsScreenBody extends StatelessWidget {
  final String imageSrc;
  const DeatialsScreenBody({Key? key, required this.imageSrc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Image.asset(
            height: size.height * 0.25,
            width: double.infinity,
            fit: BoxFit.fill,
            imageSrc,
          ),
          Container(
            alignment: AlignmentDirectional.topStart,
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: theMainLightColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: const [
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Big Burger',
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            CustomRating(
                              ratingColor: kPrimaryColor,
                            ),
                            CustomRating(
                              ratingColor: kPrimaryColor,
                            ),
                            CustomRating(
                              ratingColor: kPrimaryColor,
                            ),
                            CustomRating(
                              ratingColor: kPrimaryColor,
                            ),
                            // CustomRating(
                            //   ratingColor: kPrimaryColor,
                            // ),
                            // SmoothStarRating(
                            //   allowHalfRating: true,
                            //   borderColor: kPrimaryColor,
                            //   rating: 4.5,
                            // ),

                            // i have comment it cuz it's not null safty

                            //
                            //
                            //

                            // SmoothStarRating(
                            //           allowHalfRating: false,
                            //           onRatingChanged: (v) {
                            //             rating = v;
                            //             setState(() {});
                            //           },
                            //           starCount: 5,
                            //           rating: rating,
                            //           size: 40.0,
                            //           filledIconData: Icons.blur_off,
                            //           halfFilledIconData: Icons.blur_on,
                            //           color: Colors.green,
                            //           borderColor: Colors.green,
                            //           spacing:0.0
                            //         ),

                            //
                            //
                            //
                            //

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
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: const Text(
                        '\$ 15',
                        style: TextStyle(
                          color: kTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: const TempText(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
