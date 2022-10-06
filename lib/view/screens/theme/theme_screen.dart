import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/theme_controller.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/shared/title_builder.dart';
import 'package:my_demo/view/screens/theme/widgets/the_color_picker.dart';
import '../../../core/shared/big_button.dart';
import '../../../core/shared/bottom navigation bar/bottom_nav_bar.dart';
import '../setting/widgets/darkness_row.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeContorller theThemeController = Get.put(ThemeContorller());
    return Scaffold(
      body: SafeArea(
        child: ListView(
          primary: true,
          padding: const EdgeInsets.all(15),
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BigggButton(
              theLeadingIcon: Icons.dark_mode,
              theButtonTitle: 'change theme ',
              onTaped: () => theThemeController.changeThemeService(),
            ),
            // Container(
            //   padding: EdgeInsets.all(15),
            //   // margin: EdgeInsets.all(20),
            //   // width: size.width * .2,
            //   decoration: BoxDecoration(
            //     // color: kPrimaryColor.withOpacity(1),
            //     borderRadius: BorderRadius.circular(30),
            //   ),
            //   child: Text(
            //     textAlign: TextAlign.start,
            //     'Themes',
            //     style: TextStyle(
            //       color: AppColor.ksecondaryColor,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            emptySpace,
            const TitleBuilder(
              theTitle: 'Themes',
            ),
            emptySpace,
            const ColorPicker(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                emptySpace,
                TitleBuilder(theTitle: 'The Darkness'),
                emptySpace,
                DarknessRow()
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: TheBottomNavBar(),
    );
  }
}
