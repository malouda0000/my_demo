import 'package:flutter/material.dart';
import 'package:my_demo/constants.dart';

class UserName extends StatelessWidget {
  const UserName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      userName.toUpperCase(),
    );
  }
}