import 'package:flutter/material.dart';

class ErrorMessageScreen extends StatelessWidget {
  const ErrorMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('There is unkown Error!!'),
      ),
    );
  }
}
