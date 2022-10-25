import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/home_screen_controller.dart';
import 'package:my_demo/core/shared/bottom%20navigation%20bar/widgets/cust_bott_nav_item.dart';

class TheBottomNavBar extends StatelessWidget {
  const TheBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: ((homeScreenControllerImp) {
        return BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          // elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // ListView.builder(
              //   // physics: NeverScrollableScrollPhysics ,

              //   scrollDirection: Axis.horizontal,
              //   shrinkWrap: true,
              //   itemCount: bottomNavIcons.length,
              //   itemBuilder: (context, index) {
              //     return Row(children: [
              //       index == 0 ? Spacer() : SizedBox(),

              //       Row(
              //         children: [
              //           Container(
              //               color: Colors.red,
              //               child: CustBottomNavItem(theIndex: index)),
              //           Spacer(),
              //         ],
              //       )

              //       // bottomNavIcons.length == index ? Spacer() : SizedBox()  ,
              //     ]);
              //     //     Container(
              //     //   color: Colors.red,
              //     //   child: CustBottomNavItem(theIndex: index),
              //     // );
              //   },
              // ),

              Row(
                children: [
                  CustBottomNavItem(
                    theIndex: 0,
                  ),
                  CustBottomNavItem(
                    theIndex: 1,
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  CustBottomNavItem(
                    theIndex: 3,
                  ),
                  CustBottomNavItem(
                    theIndex: 4,
                  ),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}

// BottomNavigationBar(
//             currentIndex: bottomNavBarControllerImp.theCurrentIndex,
//             backgroundColor: Theme.of(context).bottomAppBarColor,
//             type: BottomNavigationBarType.fixed,
//             selectedItemColor: Theme.of(context).primaryColor,
//             unselectedItemColor: Theme.of(context).iconTheme.color,
//             showSelectedLabels: false,
//             showUnselectedLabels: false,
//             onTap: (index) {
//               bottomNavBarControllerImp.changeTap(index);
//             },
//             items: const [
//               BottomNavigationBarItem(
//                   label: 'home',
//                   icon: Icon(
//                     Icons.home_rounded,
//                   )),
//               BottomNavigationBarItem(
//                   label: 'online food',
//                   icon: Icon(
//                     Icons.food_bank_rounded,
//                   )),
//               BottomNavigationBarItem(
//                   label: 'cart',
//                   icon: Icon(
//                     Icons.shop_2_rounded,
//                   )),
//               BottomNavigationBarItem(
//                   label: 'setting',
//                   icon: Icon(
//                     Icons.settings_rounded,
//                   )),
//               BottomNavigationBarItem(
//                   label: 'about',
//                   icon: Icon(
//                     Icons.more_rounded,
//                   )),
//             ],
//           )

//               CustBottomNavItem(
// theIndex: bottomNavBarControllerImp.theCurrentIndex,

//               ),
// Spacer(),
// CustBottomNavItem(
//   theColor: AppColor.kPrimaryColor,
//   // theIcon: Icons.food_bank_rounded,
//   onPressed: () {
//     bottomNavBarControllerImp.changeScreen(1);
//   },
// ),
// CustBottomNavItem(
//   theColor: AppColor.kPrimaryColor,
//   // theIcon: Icons.shop_2_rounded,
//   onPressed: () {
//     bottomNavBarControllerImp.changeScreen(2);
//   },
// ),
// CustBottomNavItem(
//   theColor: AppColor.kPrimaryColor,
//   // theIcon: Icons.settings_rounded,
//   onPressed: () {
//     bottomNavBarControllerImp.changeScreen(3);
//   },
// ),
// CustBottomNavItem(
//   theColor: AppColor.kPrimaryColor,
//   // theIcon: Icons.more_rounded,
//   onPressed: () {
//   },
// ),
