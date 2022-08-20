import 'package:flutter/material.dart';
import 'package:my_demo/constans/constants.dart';

class SettingListTile extends StatelessWidget {
  final String theTitle;
  final IconData theIcon;
  final bool diviedIt;
  final void Function()? theFunction;
  SettingListTile({
    Key? key,
    required this.theTitle,
    required this.theIcon,
    required this.theFunction,
    required this.diviedIt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            theIcon,
            color: AppColor.kTextColor,
          ),
          title: Text(theTitle, style: Theme.of(context).textTheme.bodyText1),
          trailing: const Icon(
            Icons.arrow_forward,
            color: AppColor.kTextColor,
          ),
          onTap: theFunction,
        ),
        if (diviedIt) const Divider(),
      ],
    );
  }
}
