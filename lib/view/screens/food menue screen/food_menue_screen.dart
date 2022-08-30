import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/shared/the%20appbar/the_app_bar.dart';
import 'package:my_demo/data/data%20source/food_menue_data.dart';

class FoodMenueScreen extends StatelessWidget {
  const FoodMenueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TheAppBar(),
        body: GridView.builder(
          itemCount: FoodMenuesData.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: ((context, index) {
            return Card(
              child: Column(
                children: [
                  Image.asset(FoodMenuesData[index].img),
                  Text(FoodMenuesData[index].title),
                  Text(FoodMenuesData[index].prefDiscription),
                ],
              ),
            );
          }),
        ));
  }
}
