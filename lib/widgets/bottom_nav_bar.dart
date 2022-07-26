import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_demo/constants.dart';
import 'package:my_demo/screens/detials%20screen/detials_screen.dart';
import 'package:my_demo/screens/home/my_home_page.dart';
import 'package:my_demo/screens/setting%20screen/setting_screen.dart';

class TheBottomeNavBar extends StatelessWidget {
  const TheBottomeNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 75,
      width: double.infinity,

      // color: Colors.red,
      decoration: BoxDecoration(
          // color: Colors.red,
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 7),
                blurRadius: 33,
                // color: Color(0xFF6daed9),
                color: ksecondaryColor.withOpacity(.1))
          ]),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MyHomePage();
                  },
                ),
              );
            },
            icon: SvgPicture.asset('assets/icons/home.svg'),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetialsScreen();
                  },
                ),
              );
            },
            icon: SvgPicture.asset('assets/icons/Glyph.svg'),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingScreen();
                  },
                ),
              );
            },
            icon: SvgPicture.asset('assets/icons/Following.svg'),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingScreen();
                  },
                ),
              );
            },
            icon: SvgPicture.asset('assets/icons/person.svg'),
          ),
        ],
      ),
    );
  }
}






      // bottomNavigationBar: BottomNavigationBar(
      //   enableFeedback: true,
      //   selectedLabelStyle: TextStyle(color: kPrimaryColor),
      //   items: [
      //     BottomNavigationBarItem(
      //       label: 'home',
      //       icon: SvgPicture.asset('assets/icons/home.svg'),
      //     ),
      //     BottomNavigationBarItem(
      //       label: 'details',
      //       icon: Icon(
      //         Icons.home_outlined,
      //       ),
      //     ),
      //     BottomNavigationBarItem(
      //       label: 'setting',
      //       icon: Icon(
      //         Icons.home_outlined,
      //       ),
      //     ),
      //   ],
      // ),