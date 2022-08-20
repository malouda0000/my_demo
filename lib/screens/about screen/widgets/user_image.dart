import 'package:flutter/material.dart';

import '../../../constans/app_images.dart';

class UserImage extends StatelessWidget {
  const UserImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.3,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(AppImages.userImage),
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
