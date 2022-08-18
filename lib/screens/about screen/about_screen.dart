import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/screens/Error/error_message_screen.dart';
import 'package:my_demo/screens/about%20screen/widgets/communication_icon.dart';
import 'package:my_demo/screens/about%20screen/widgets/user_image.dart';
import 'package:my_demo/screens/about%20screen/widgets/user_name.dart';
import 'package:my_demo/screens/home/my_home_page.dart';
import 'package:my_demo/screens/setting/widgets/settign_list_tile.dart';
import 'package:my_demo/screens/sing%20and%20log%20in%20screen/sing_in.dart';
import 'package:my_demo/widgets/bottom%20navigation%20bar/bottom_nav_bar.dart';
import 'package:my_demo/widgets/the%20appbar/the_app_bar.dart';
import 'package:my_demo/widgets/communication_row.dart';
import 'package:my_demo/widgets/the_drawer.dart';
import 'package:my_demo/widgets/title_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:my_demo/constants.dart';

import 'widgets/temp_debuging_row.dart';
// import 'package:flutter_remix/flutter_remix.dart';

// final Uri _url = Uri.parse('tel:+1-555-010-999');

// Future<void> _launchUrl() async {
//   if (!await launchUrl(_url)) {
//     throw GetSnackBar(
//       title: 'Could not launch $_url',
//     );
//   }
// }

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const TheDrawer(),
      appBar: TheAppBar(),
      // drawer: (),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(10),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              emptySpace,
              UserImage(),
              emptySpace,
              UserName(),
              const Divider(
                color: ksecondaryColor,
                thickness: 1,
              ),
              SettingListTile(
                diviedIt: true,
                theTitle: 'Account',
                theIcon: Icons.person_outline,
                theFunction: () {
                  Get.toNamed('/aboutScreen');
                },
              ),
              SettingListTile(
                diviedIt: true,
                theTitle: 'Notification',
                theIcon: Icons.notifications_outlined,
                theFunction: () {},
              ),
              SettingListTile(
                diviedIt: true,
                theTitle: 'Privacy & Security',
                theIcon: Icons.lock_outline,
                theFunction: () {},
              ),
              SettingListTile(
                diviedIt: false,
                theTitle: 'Appearance',
                theIcon: Icons.remove_red_eye_outlined,
                theFunction: () {
                  Get.toNamed('/themeScreen');
                },
              ),
              const Divider(
                thickness: 1,
              ),
              Column(
                children: [
                  const TitleBuilder(theTitle: 'Feel free to contac me'),
                  const SizedBox(
                    height: 15,
                  ),
                  CommunicationRow(),
                  emptySpace,
                  TempDebugingRow(),
                ],
              ),
            ],
          ),
        ],
      ),
      // floatingActionButton: const TheFap(),
      bottomNavigationBar: const TheBottomNavBar(),
    );
  }
}
