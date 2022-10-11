import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/home_screen_controller.dart';
import 'package:my_demo/view/screens/home/home_screen.dart';
import '../../../../core/localization/localization.dart';
import 'items_title_builder.dart';

// homeScreenController = Get.find(HomeScreenControllerImp());

List items = [
  ItemsTitleBuilder(
    title: AppLocal.bigBurger.tr,
    pressed: () {},
    // isActive: homeScreenControllerImp.currentPage,
  ),
  ItemsTitleBuilder(
    title: AppLocal.pitza.tr,
    pressed: () {},
  ),
  ItemsTitleBuilder(
    title: AppLocal.capitcheno.tr,
    pressed: () {},
  ),
  ItemsTitleBuilder(
    title: AppLocal.hotdoge.tr,
    pressed: () {},
  ),
  ItemsTitleBuilder(
    title: AppLocal.smallBurger.tr,
    pressed: () {},
  ),
  ItemsTitleBuilder(
    title: AppLocal.bigBurger.tr,
    pressed: () {},
    // isActive: true,
  ),
  ItemsTitleBuilder(
    title: AppLocal.pitza.tr,
    pressed: () {},
  ),
  ItemsTitleBuilder(
    title: AppLocal.bigBurger.tr,
    pressed: () {},
    // isActive: true,
  ),
  ItemsTitleBuilder(
    title: AppLocal.pitza.tr,
    pressed: () {},
  ),
];

final List<String> titlesList = [
  AppLocal.bigBurger.tr,
  AppLocal.pitza.tr,
  AppLocal.smallBurger.tr,
  AppLocal.pitza.tr,
  AppLocal.hotdoge.tr,
  AppLocal.bigBurger.tr,
  AppLocal.smallBurger.tr,
];

// class TheCategoryItem extends StatelessWidget {
//   const TheCategoryItem({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: homePagesList.length,
//         scrollDirection: Axis.horizontal,
//         // shrinkWrap: true,
//         itemBuilder: (context, index) {
//           // return items[index];

//           return ItemsTitleBuilder(
//             title: titlesList[index],
//             pressed: () {
//               // homeScreenControllerImp.onPageChanged(index);
//             },
//             // isActive: index == homeScreenControllerImp.currentPage
//             //     ? true
//             //     : false,
// // if( index == homeScreenControllerImp.currentPage ){ return true;} else { return false;},
//           );
//         });
//   }
// }

///////////////////////////

class TheCategoryItem extends StatelessWidget {
  const TheCategoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: ((homeScreenControllerImp) => Expanded(
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
                    isActive:
                        i == homeScreenControllerImp.currentPage ? true : false,
// if( index == homeScreenControllerImp.currentPage ){ return true;} else { return false;},
                  );
                }),
          )),
    );
  }
}

// padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8.0),


// Row(
//           // mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ListView.builder(
//                 shrinkWrap: true,
//                 itemBuilder: (context, index) {
//                   // return items[index];

//                   return ItemsTitleBuilder(
//                     title: AppLocal.pitza.tr,
//                     pressed: () {},
//                   );
//                 })
//           ],
//         ),