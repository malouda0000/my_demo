import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/services/binding.dart';
import 'package:my_demo/core/shared/title_builder.dart';
import 'package:my_demo/model/data%20source/food_menue_data.dart';
import 'package:my_demo/view/screens/food%20menue%20screen/widgets/food_list_screen.dart';

class FoodMenueScreen extends StatelessWidget {
  const FoodMenueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleBuilder(theTitle: 'Food Menu'),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.all(theDefaultPadding),
          itemCount: FoodMenuesData.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .7,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemBuilder: ((context, index) {
            return InkWell(
                onTap: () {
                  Get.to(
                      () => FoodListScreen(
                            theListTileIndex: index,
                            foodListItems: FoodMenuesData[index].foodListItems,
                          ),
                      binding: AddingMealBindings());
                },
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(theDefaultRaduis),
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).shadowColor,
                        offset: Offset(0, 1),
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        FoodMenuesData[index].img,
                      ),
                      const Spacer(),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          emptySpace,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FoodMenuesData[index].title,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(FoodMenuesData[index].prefDiscription),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      // Padding(
                      //   padding: EdgeInsets.symmetric(
                      //     horizontal: theDefaultPadding,
                      //   ),
                      //   child:
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.fromLTRB(
                      //     theDefaultPadding,
                      //     0,
                      //     theDefaultPadding,
                      //     theDefaultPadding,
                      //   ),
                      //   child:
                      // ),

                      //      GridView.builder(
                      //   itemCount: FoodMenuesData.length,
                      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      //       crossAxisCount: 2),
                      //   itemBuilder: ((context, index) {
                      //     return Card(
                      //       child: Column(
                      //         children: [
                      //           Image.asset(FoodMenuesData[index].img),
                      //           Text(FoodMenuesData[index].title),
                      //           Text(FoodMenuesData[index].prefDiscription),
                      //         ],
                      //       ),
                      //     );
                      //   }),
                      // )
                    ],
                  ),
                ));
          }),
        ),
      ],
    );
  }
}
