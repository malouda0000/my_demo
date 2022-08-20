import 'package:flutter/material.dart';
import 'package:my_demo/constans/constants.dart';
import '../../../constans/app_color.dart';

class BigggButton extends StatelessWidget {
  final IconData theLeadingIcon;
  final String theButtonTitle;
  final void Function()? onTaped;

  BigggButton({
    Key? key,
    required this.theLeadingIcon,
    required this.theButtonTitle,
    required this.onTaped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
          // style: ButtonStyle(backgroundColor: theBackgrounColor),
          onPressed: onTaped,
          color: AppColor.kTextColor,
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  theLeadingIcon,
                  color: AppColor.kPrimaryColor,
                ),
                emptySpace,
                Text(
                  theButtonTitle,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: AppColor.kPrimaryColor),
                ),
              ],
            ),
          )),
    );
  }
}
