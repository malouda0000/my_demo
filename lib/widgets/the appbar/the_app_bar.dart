import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_demo/constants.dart';
import 'package:my_demo/widgets/the%20appbar/widgets/the_main_title_builder.dart';

AppBar TheAppBar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: theMainLightColor,
    title: const TheMainTitleBuilder(firstTitle: 'punk', secondTitle: 'food'),
    elevation: 0,
    leading: Builder(builder: (context) {
      return IconButton(
        icon: SvgPicture.asset(menuImage),
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
