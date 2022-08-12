import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/constants.dart';

class ReservedRightsRow extends StatelessWidget {
  const ReservedRightsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text('all rights reserved to : '),
      GestureDetector(
        onTap: () {
          Get.toNamed('/aboutScreen');
        },
        child: Text(
          'HMMAM HAMZA',
          style: TextStyle(
            color: kPrimaryColor,
          ),
        ),
      )
    ]);
  }
}
