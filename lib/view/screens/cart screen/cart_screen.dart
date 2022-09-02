import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/data/model/local_db.dart';
import 'package:my_demo/data/model/meal_detials_class.dart';
import 'package:my_demo/view/screens/Error/error_message_screen.dart';

MyDb mydb = MyDb();

class TempCartScreen extends StatelessWidget {
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
  Widget build(BuildContext context) {
    // var find = theListTileIndex;
    readData() async {
      // List<Map<MealDetailsClass, dynamic>> response = await mydb.readData('''
      List<Map<String, dynamic>> response = await mydb.readData('''
SELECT * FROM usercart 
''');

      // var myResponce = jsonEncode(response);
      // return myResponce;

      return response;
    }

    return FutureBuilder(
        future: readData(),
        builder: (BuildContext context, snapshot) {
          // List<MealDetailsClass> tes = snapshot;
          if (snapshot.hasData) {
            // Me
            return Scaffold(
                body: ListView.builder(
                    // itemCount: snapshot.data!.le,
                    itemCount: 5,
                    itemBuilder: ((context, i) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 30,
                        ),
                        child: Text('${snapshot.data}'),
                      );
                    })));
          } else {
            return Scaffold(
              body: Center(
                child: Text(
                  'loading ...',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            );
          }
        });
  }
}
