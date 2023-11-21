import 'package:flutter/material.dart';
import '../constants/app_color.dart';
import '../constants/constants.dart';

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

          // shape: ShapeBorder.lerp(2, b, t),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  theLeadingIcon,
                  color: AppColor.theMainLightColor,
                ),
                emptySpace,
                Text(
                  theButtonTitle,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: AppColor.theMainLightColor,
                      ),
                ),
              ],
            ),
          )),
    );
  }
}
