import 'package:flutter/material.dart';
import 'package:my_demo/constants.dart';

class TitleBuilder extends StatelessWidget {
  final String theTitle;
  const TitleBuilder({Key? key, required this.theTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      theTitle,
      style: TextStyle(
          color: ksecondaryColor, fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
