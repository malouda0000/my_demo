import 'package:flutter/material.dart';

class RatingStarsBuilder extends StatelessWidget {
  final int starsCount;
  final Color starsColor;
  const RatingStarsBuilder(
      {Key? key, required this.starsCount, required this.starsColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        for (int i = 0; i < starsCount; i++)
          Icon(
            Icons.star_rounded,
            color: starsColor,
          ),
      ],
    );
  }
}
