import 'package:flutter/material.dart';
import 'package:my_demo/constants.dart';
import 'package:my_demo/screens/home/components/the_app_bar.dart';
import 'package:my_demo/screens/setting/widgets/darkness_row.dart';
import 'package:my_demo/screens/setting/widgets/the_color_picker.dart';
import 'package:my_demo/widgets/bottom_nav_bar.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TheAppBar(),
      body: ListView(
        primary: true,
        padding: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            // margin: EdgeInsets.all(20),
            // width: size.width * .2,
            decoration: BoxDecoration(
              // color: kPrimaryColor.withOpacity(1),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              textAlign: TextAlign.start,
              'Themes',
              style: TextStyle(
                color: ksecondaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const ColorPicker(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                // margin: EdgeInsets.all(20),
                // width: size.width * .2,
                decoration: BoxDecoration(
                  // color: kPrimaryColor.withOpacity(1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  'Darkness',
                  style: TextStyle(
                    color: ksecondaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              DarknessRow()
            ],
          ),
        ],
      ),
      bottomNavigationBar: TheBottomeNavBar(),
    );
  }
}
