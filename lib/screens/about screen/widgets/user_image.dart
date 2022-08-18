import 'package:flutter/material.dart';
import 'package:my_demo/constants.dart';

class UserImage extends StatelessWidget {
  const UserImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.3,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(userImage),
          fit: BoxFit.fitHeight,
        ),
      ),
      // child: Image.asset(
      //   'assets/images/me.jpg',
      //   // height: 250,
      //   // width: 250,
      // ),
    );
  }
}
