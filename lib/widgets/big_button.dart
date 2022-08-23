import 'package:flutter/material.dart';
import 'package:my_demo/constans/app_color.dart';
import 'package:my_demo/constans/constants.dart';

class BigggButton extends StatelessWidget {
  final IconData theLeadingIcon;
  final String theButtonTitle;
  final void Function()? onTaped;
  final Color leadingIconColor;
  final Color buttonTitleColor;

  BigggButton({
    Key? key,
    required this.theLeadingIcon,
    required this.theButtonTitle,
    required this.onTaped,
    required this.leadingIconColor,
    required this.buttonTitleColor,
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
          color: AppColor.kPrimaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  theLeadingIcon,
                  color: leadingIconColor,
                ),
                emptySpace,
                Text(
                  theButtonTitle,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: buttonTitleColor),
                ),
              ],
            ),
          )),
    );
  }
}
