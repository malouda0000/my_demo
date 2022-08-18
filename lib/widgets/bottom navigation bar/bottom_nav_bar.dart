import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/constants.dart';

import '../../screens/about screen/about_screen.dart';
import '../../screens/detials screen/detials_screen.dart';
import '../../screens/home/my_home_page.dart';
import '../../screens/setting/setting_screen.dart';

List<Function> MainAppScreens = [
  () => MyHomePage(),
  () => DetialsScreen(),
  () => SettingScreen(),
  () => AboutScreen(),
];

class TheBottomNavBar extends StatelessWidget {
  const TheBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int theCurrentIndex = 0;
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kPrimaryColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: theCurrentIndex,
        onTap: (index) {
          // setState(() {
          // });
          Get.to(MainAppScreens[index]);
        },
        items: const [
          BottomNavigationBarItem(
              label: 'home',
              icon: Icon(
                Icons.home_outlined,
              )),
          BottomNavigationBarItem(
              label: 'detials',
              icon: Icon(
                Icons.details_outlined,
              )),
          BottomNavigationBarItem(
              label: 'setting',
              icon: Icon(
                Icons.settings_outlined,
              )),
          BottomNavigationBarItem(
              label: 'about',
              icon: Icon(
                Icons.more_outlined,
              )),
        ]);
  }
}




// Container(
//       padding: const EdgeInsets.symmetric(horizontal: 35),
//       // height: 70,
//       width: double.infinity,

//       // color: Colors.red,
//       decoration: BoxDecoration(
//           // color: Colors.red,
//           color: Colors.white,
//           // borderRadius: const BorderRadius.only(
//           //     // topLeft: Radius.circular(15),
//           //     // topRight: Radius.circular(15),
//           //     ),
//           boxShadow: [
//             BoxShadow(
//                 offset: const Offset(0, 7),
//                 // blurRadius: 33,
//                 // color: Color(0xFF6daed9),
//                 color: ksecondaryColor.withOpacity(.1))
//           ]),

//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: const [
//           BottomeNavBarIcon(
//             theNamedRout: '/homePage',
//             theNavBarIcon: Icons.home_rounded,
//           ),
//           BottomeNavBarIcon(
//             theNamedRout: '/detailsScreen',
//             theNavBarIcon: Icons.medical_information_rounded,
//           ),
//           BottomeNavBarIcon(
//             theNamedRout: '/settingScreen',
//             theNavBarIcon: Icons.settings_rounded,
//           ),
//           BottomeNavBarIcon(
//             theNamedRout: '/aboutScreen',
//             theNavBarIcon: Icons.person_rounded,
//           ),
//         ],
//       ),
//     );



// 
// 
// 
// 

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