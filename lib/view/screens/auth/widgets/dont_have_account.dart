import 'package:flutter/material.dart';
import '../../../../core/constants/app_color.dart';

class DontHaveAccount extends StatelessWidget {
  final String doYouHaveAccoun;
  final String signOrLogin;
  final void Function() theFunc;
  const DontHaveAccount(
      {Key? key,
      required this.doYouHaveAccoun,
      required this.signOrLogin,
      required this.theFunc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          doYouHaveAccoun,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        GestureDetector(
          child: Text(
            signOrLogin.toUpperCase(),
            style: const TextStyle(
                color: AppColor.kPrimaryColor, fontWeight: FontWeight.bold),
          ),
          onTap: theFunc,
        )
      ],
    );
  }
}
