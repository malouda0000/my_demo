import 'package:flutter/material.dart';

class TitleBuilder extends StatelessWidget {
  final String theTitle;
  const TitleBuilder({Key? key, required this.theTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      theTitle,
      style: Theme.of(context).textTheme.headline6,
    );
  }
}
