import 'package:flutter/material.dart';
import 'package:my_demo/core/constants/constants.dart';

class TitleBuilder extends StatelessWidget {
  final String theTitle;
  const TitleBuilder({Key? key, required this.theTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(theDefaultPadding),
      child: Text(
        theTitle,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
