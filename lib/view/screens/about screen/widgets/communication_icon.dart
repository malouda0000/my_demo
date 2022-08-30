import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';

class CommuincationIcon extends StatelessWidget {
  final String CommuincationIconTitle;
  final void Function()? theUrlLanching;
  final IconData theIcon;
  final Color iconColor;
  const CommuincationIcon({
    Key? key,
    this.theUrlLanching,
    required this.theIcon,
    required this.CommuincationIconTitle,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              // shape: BoxShape.circle,
              // color: ksecondaryColor,
              // borderRadius: BorderRadius.circular(10),
              // color: kTextBlacColor,

              // color: kPrimaryColor,
              shape: BoxShape.circle,
              border: Border.all(color: iconColor)),
          // padding: EdgeInsets.all(15),
          child: IconButton(
            onPressed: theUrlLanching,
            icon: Icon(
              theIcon,
              // color: kTextBlacColor.withOpacity(.5),
              // color: kTextBlacColor,
              color: iconColor,
            ),
          ),
        ),
        emptySpace,
        Text(
          CommuincationIconTitle,
          style: TextStyle(color: iconColor),
        )
      ],
    );
  }
}
