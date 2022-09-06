import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/shared/big_button.dart';
import 'package:my_demo/core/shared/bottom%20navigation%20bar/bottom_nav_bar.dart';
import 'package:my_demo/core/shared/custom_splash_screen.dart';
import 'package:my_demo/core/shared/the%20appbar/the_app_bar.dart';
import 'package:my_demo/data/data%20source/meal_details_data.dart';
import 'package:my_demo/data/model/local_db.dart';
import 'package:my_demo/data/model/meal_detials_class.dart';

MyDb mydb = MyDb();

// var myList = [];
// late List<MealDetailsClass> response = mydb.readData('''
//                         SELECT * FROM usercart
//                         ''');

class TempCartScreen extends StatefulWidget {
//   late List<MealDetailsClass> foodListItems = mydb.readData(
//     '''
// SELECT

// '''
//   );

//   late int theListTileIndex = mydb.readData('''
// SELECT FORM 'usercart' WHERE 'id' = 0
// ''');

//   Future<List<Map>>

  TempCartScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<TempCartScreen> createState() => _TempCartScreenState();
}

class _TempCartScreenState extends State<TempCartScreen> {
  @override
  Widget build(BuildContext context) {
    // var find = theListTileIndex;
    Future<List<Map>> readData() async {
      List<Map> response = await mydb.readData("SELECT * FROM usercart");

      return response;
    }

////////////////////////////////////////////////////////////////
    ///
    ///
    return Scaffold(
      appBar: TheAppBar(),
      bottomNavigationBar: TheBottomNavBar(),
      body: Container(
        width: Get.width,
        child: ListView(
          children: [
            FutureBuilder(
              future: readData(),
              builder:
                  (BuildContext context, AsyncSnapshot<List<Map>> snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, i) {
                      var shoutCut = snapshot.data![i];
                      return Padding(
                        padding: EdgeInsets.all(20),
                        child: Card(
                          child: Container(
                            padding: EdgeInsets.all(theDefaultPadding),
                            height: Get.height * .2,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    // Text(snapshot.data![i]['id'].toString())
                                    Text(snapshot.data![i]['title'])
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
