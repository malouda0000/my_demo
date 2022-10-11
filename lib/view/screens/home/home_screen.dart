import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/home_screen_controller.dart';
import 'package:my_demo/core/shared/bottom%20navigation%20bar/bottom_nav_bar.dart';
import 'package:my_demo/view/screens/home/categores_page.dart';
import 'package:my_demo/view/screens/home/temp_page.dart';
import 'package:my_demo/view/screens/home/widgets/big_burger_page.dart';
import 'package:my_demo/view/screens/home/widgets/items_title_builder.dart';
import 'package:my_demo/view/screens/home/widgets/the_category_item.dart';
import '../../../core/shared/the appbar/the_app_bar.dart';
import '../../../core/shared/the_drawer.dart';

///
///

// GlobalKey<ScaffoldState> myKey = GlobalKey();
// GlobalKey<ScaffoldState> myKey = GlobalKey<ScaffoldState>();
// List<Map<String, Widget>> homePagesList = [
//   {AppLocal.bigBurger: BigBurgurePage()},
//   {AppLocal.hotdoge: CategoresPage()},
//   {AppLocal.smallBurger: TempPage()},
//   {AppLocal.bigBurger: BigBurgurePage()},
//   {AppLocal.pitza: CategoresPage()},
//   {AppLocal.bigBurger: TempPage()},
//   {AppLocal.pitza: BigBurgurePage()},
// ];

List<Widget> homePagesList = [
  BigBurgurePage(),
  CategoresPage(),
  TempPage(),
  BigBurgurePage(),
  CategoresPage(),
  TempPage(),
  BigBurgurePage(),
];

// i don't think that i need for stateflull widget

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return Scaffold(
        // key: myKey,
        drawer: const TheDrawer(),
        appBar: TheAppBar(context),
        bottomNavigationBar: TheBottomNavBar(),
        // drawer: (),
        body: GetBuilder<HomeScreenControllerImp>(
            builder: ((homeScreenControllerImp) {
          return Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 1,
                child: ListView.builder(
                    itemCount: homePagesList.length,
                    scrollDirection: Axis.horizontal,
                    // shrinkWrap: true,
                    itemBuilder: (context, i) {
                      // return items[index];

                      return ItemsTitleBuilder(
                        title: titlesList[i],
                        pressed: () async {
                          await homeScreenControllerImp.onPageChanged(i);
                        },
                        isActive: i == homeScreenControllerImp.currentPage
                            ? true
                            : false,
// if( index == homeScreenControllerImp.currentPage ){ return true;} else { return false;},
                      );
                    }),
              ),
              Expanded(
                flex: 9,
                child: PageView.builder(
                  controller: homeScreenControllerImp.pageController,
                  onPageChanged: (value) {
                    // homeScreenControllerImp.onPageChanged(value);
                  },
                  itemCount: homePagesList.length,
                  itemBuilder: (context, index) {
                    return homePagesList[index];
                  },
                ),
              ),
            ],
          );
        }))
        // floatingActionButton: const TheFap(),
        );
  }
}

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   // GlobalKey<ScaffoldState> ScaffoldGenralKey = GlobalKey<ScaffoldState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // key: myKey,
//       drawer: const TheDrawer(),
//       appBar: TheAppBar(context),
//       bottomNavigationBar: TheBottomNavBar(),
//       // drawer: (),
//       body: Column(
//         // mainAxisSize: MainAxisSize.min,
//         children: [
//           Expanded(
//             flex: 1,
//             child: TheCategoryItem(),
//           ),
//           Expanded(
//             flex: 9,
//             child: Body(),
//           ),
//         ],
//       ),
//       // floatingActionButton: const TheFap(),
//     );
//   }
// }

// class Body extends StatelessWidget {
//   const Body({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return PageView.builder(
//       controller: homeScreenControllerImp.pageController,
//       onPageChanged: (value) {
//         // homeScreenControllerImp.onPageChanged(value);
//       },
//       itemCount: homePagesList.length,
//       itemBuilder: (context, index) {
//         return homePagesList[index];

//         // return BigBurgurePage();
//       },
//     );
//   }
// }

/////////////////////////////

// class Body extends StatelessWidget {
//   const Body({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return  
//     ;
//   }
// }



// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // key: myKey,
//       drawer: const TheDrawer(),
//       appBar: TheAppBar(context),
//       bottomNavigationBar: TheBottomNavBar(),
//       // drawer: (),
//       body: HomeScreenBody(),
//       // floatingActionButton: const TheFap(),
//     );
//   }
// }

// class HomeScreenBody extends StatelessWidget {
//   const HomeScreenBody({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         // Expanded(flex: 1, child: TheCategoryItem()),
//         // Expanded(flex: 9, child: Body()),
//         Text('data'),
//         Text('data'),
//         Text('data'),
//       ],
//     );
//   }
// }
