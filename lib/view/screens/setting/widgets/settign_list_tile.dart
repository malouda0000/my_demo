import 'package:flutter/material.dart';

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
            // color: AppColor.kTextColor,
            color: Theme.of(context).iconTheme.color,
          ),
          title: Text(theTitle, style: Theme.of(context).textTheme.bodyLarge),
          trailing: Icon(
            Icons.arrow_forward,
            color: Theme.of(context).iconTheme.color,
          ),
          onTap: theFunction,
        ),
        if (diviedIt) const Divider(),
      ],
    );
  }
}
