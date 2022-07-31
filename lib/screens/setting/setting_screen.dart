import 'package:flutter/material.dart';
import 'package:my_demo/constants.dart';
import 'package:my_demo/screens/setting/search_box.dart';
import 'package:my_demo/screens/setting/settign_list_tile.dart';
import 'package:my_demo/widgets/the_drawer.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: theMainLightColor,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
          ),
        ),

        // leading: Icon(
        //   Icons.arrow_back,
        //   color: kPrimaryColor,
        // ),
        backgroundColor: theMainLightColor,
        centerTitle: true,
        title: const Text(
          'Setting',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SearchBox(size: size),
            const SizedBox(
              // height: size.height * .0,
              height: 10,
            ),
            SettingListTile(
              theTitle: 'Account',
              theIcon: Icons.person_outline,
              theFunction: () {},
            ),
            SettingListTile(
              theTitle: 'Notification',
              theIcon: Icons.notifications_outlined,
              theFunction: () {},
            ),
            SettingListTile(
              theTitle: 'Privacy & Security',
              theIcon: Icons.lock_outline,
              theFunction: () {},
            ),
            SettingListTile(
              theTitle: 'Appearance',
              theIcon: Icons.remove_red_eye_outlined,
              theFunction: () {},
            ),
            SettingListTile(
              theTitle: 'heop & suppourt',
              theIcon: Icons.support_outlined,
              theFunction: () {},
            ),
            SettingListTile(
              theTitle: 'about',
              theIcon: Icons.info_outline,
              theFunction: () {},
            ),
            Spacer(),
            Center(
              child: Text('all rights reserved to hummam mohamed hamza'),
            )
          ],
        ),
      ),
      drawer: const TheDrawer(),
    );
  }
}
