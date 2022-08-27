import 'package:flutter/material.dart';
import '../../../constans/app_color.dart';

class DontHaveAccount extends StatelessWidget {
  final String doYouHaveAccoun;
  final String singOrLogin;
  final void Function() theFunc;
  const DontHaveAccount(
      {Key? key,
      required this.doYouHaveAccoun,
      required this.singOrLogin,
      required this.theFunc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          doYouHaveAccoun,
          style: TextStyle(color: AppColor.kTextColor),
        ),
        GestureDetector(
          child: Text(
            singOrLogin.toUpperCase(),
            style: TextStyle(
                color: AppColor.kPrimaryColor, fontWeight: FontWeight.bold),
          ),
          onTap: theFunc,
        )
      ],
    );
  }
}
