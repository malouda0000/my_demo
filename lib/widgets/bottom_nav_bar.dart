import 'package:flutter/material.dart';
import 'package:my_demo/constants.dart';
import 'package:get/get.dart';

class TheBottomeNavBar extends StatelessWidget {
  const TheBottomeNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      // height: 70,
      width: double.infinity,

      // color: Colors.red,
      decoration: BoxDecoration(
          // color: Colors.red,
          color: Colors.white,
          // borderRadius: const BorderRadius.only(
          //     // topLeft: Radius.circular(15),
          //     // topRight: Radius.circular(15),
          //     ),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 7),
                // blurRadius: 33,
                // color: Color(0xFF6daed9),
                color: ksecondaryColor.withOpacity(.1))
          ]),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          BottomeNavBarIcon(
            theNamedRout: '/homePage',
            theNavBarIcon: Icons.home_rounded,
          ),
          BottomeNavBarIcon(
            theNamedRout: '/detialsScreen',
            theNavBarIcon: Icons.medical_information_rounded,
          ),
          BottomeNavBarIcon(
            theNamedRout: '/settingScreen',
            theNavBarIcon: Icons.settings_rounded,
          ),
          BottomeNavBarIcon(
            theNamedRout: '/aboutScreen',
            theNavBarIcon: Icons.person_rounded,
          ),
        ],
      ),
    );
  }
}

class BottomeNavBarIcon extends StatelessWidget {
  final String theNamedRout;
  final IconData theNavBarIcon;
  const BottomeNavBarIcon({
    Key? key,
    required this.theNamedRout,
    required this.theNavBarIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.offAllNamed(theNamedRout);
      },
      icon: Icon(theNavBarIcon),
      iconSize: 25,
      color: kPrimaryColor,
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