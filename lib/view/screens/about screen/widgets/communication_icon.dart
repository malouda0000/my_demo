import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';

class CommuincationIcon extends StatelessWidget {
  final String CommuincationIconTitle;
  final void Function()? theUrlLanching;
  final IconData theIcon;
  const CommuincationIcon({
    Key? key,
    this.theUrlLanching,
    required this.theIcon,
    required this.CommuincationIconTitle,
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
              border: Border.all(
                color: Theme.of(context).iconTheme.color!,
              )),
          // padding: EdgeInsets.all(15),
          child: IconButton(
            onPressed: theUrlLanching,
            icon: Icon(
              theIcon,
              // color: kTextBlacColor.withOpacity(.5),
              // color: kTextBlacColor,
              color: Theme.of(context).iconTheme.color!,
            ),
          ),
        ),
        emptySpace,
        Text(
          CommuincationIconTitle,
          style: TextStyle(
            color: Theme.of(context).iconTheme.color!,
          ),
        )
      ],
    );
  }
}
