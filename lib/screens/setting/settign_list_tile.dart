import 'package:flutter/material.dart';
import 'package:my_demo/constants.dart';

class SettingListTile extends StatelessWidget {
  final String theTitle;
  final IconData theIcon;
  final bool diviedIt;
  Function theFunction;
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
            color: kTextBlacColor,
          ),
          title: Text(theTitle,
              style: const TextStyle(
                color: kTextBlacColor,
              )),
          trailing: const Icon(
            Icons.arrow_forward,
            color: kTextBlacColor,
          ),
          onTap: () {
            theFunction;
          },
        ),
        if (diviedIt) const Divider(),
      ],
    );
  }
}
