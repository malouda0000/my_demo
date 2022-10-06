import 'package:flutter/material.dart';
import 'package:my_demo/core/shared/backgroundContainer.dart';

class CustomAuthCard extends StatelessWidget {
  const CustomAuthCard({
    Key? key,
    required this.authFealds,
  }) : super(key: key);

  final Widget authFealds;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      // clipBehavior: Clip.hardEdge,
      children: [
        MyBackgrounContainer(),
        SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 35,
                vertical: 15,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(2, 2),
                        blurRadius: 5,
                        color: Theme.of(context).shadowColor,
                      ),
                    ],
                  ),
                  child: authFealds,
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
