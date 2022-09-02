import 'package:flutter/material.dart';
import 'package:my_demo/core/constants/app_color.dart';

class ErrorMessageScreen extends StatelessWidget {
  const ErrorMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'There is unkown Error!!',
          style: TextStyle(
              fontSize: 30,
              color: AppColor.kPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
