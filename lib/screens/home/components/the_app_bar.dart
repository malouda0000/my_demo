import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_demo/constants.dart';

AppBar TheAppBar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: theMainLightColor,
    title: TheMainTitleBuilder(),
    elevation: 0,
    leading: Builder(builder: (context) {
      return IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg'),
        onPressed: () {
          // TheDrawer();
          Scaffold.of(context).openDrawer();
          // TheDrawer();

          // Navigator.push(context, MaterialPageRoute(builder: (context) {
          //   return TheDrawer();
          // },),);
//

          // return   BuildContext();
//

          //  return BuildContext(
          //   return Scaffold.of(context).openEndDrawer(););

          // TheDrawerCaller();
        },
      );
    }),

    // Text(
    //   'punkfood',
    //   style: TextStyle(color: kPrimaryColor),
    // ),

    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/notification.svg',
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/search.svg',
        ),
      ),
    ],
  );
}

class TheMainTitleBuilder extends StatelessWidget {
  const TheMainTitleBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        // strutStyle: Theme.of(context).textTheme.titleMedium.copyWith(fontWeight: FontWeight.bold)
        text: const TextSpan(
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: ksecondaryColor,
            ),
            children: [
          TextSpan(
            text: 'punk',
          ),
          TextSpan(
              style: TextStyle(
                // fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
              text: 'food')
        ]));
  }
}
