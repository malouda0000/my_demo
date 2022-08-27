import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/theme_controller.dart';
import 'package:my_demo/widgets/big_button.dart';
import '../../../constans/app_color.dart';
import 'package:my_demo/widgets/the%20appbar/the_app_bar.dart';
import 'package:my_demo/screens/setting/widgets/darkness_row.dart';
import 'package:my_demo/screens/setting/widgets/the_color_picker.dart';
import 'package:my_demo/widgets/bottom%20navigation%20bar/bottom_nav_bar.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ThemeContorller(), permanent: true);
    ThemeContorller theThemeController = Get.find();
    return Scaffold(
      appBar: TheAppBar(),
      body: ListView(
        primary: true,
        padding: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigggButton(
              theLeadingIcon: Icons.dark_mode,
              theButtonTitle: 'change theme ',
              onTaped: () => {theThemeController.changeTheme()},
              leadingIconColor: AppColor.theMainLightColor,
              buttonTitleColor: AppColor.theMainLightColor),
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
                color: AppColor.ksecondaryColor,
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
                    color: AppColor.ksecondaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              DarknessRow()
            ],
          ),
        ],
      ),
      bottomNavigationBar: TheBottomNavBar(),
    );
  }
}
