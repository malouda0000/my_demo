import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/constants.dart';
import 'package:my_demo/widgets/the_input_feaild.dart';
import 'package:my_demo/screens/setting/settign_list_tile.dart';
import 'package:my_demo/widgets/bottom_nav_bar.dart';
import 'package:my_demo/widgets/the_drawer.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: theMainLightColor,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            // Get.back();
            Get.back();
          },
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
      drawer: const TheDrawer(),
      body: SettingScreenBody(size: size),
      bottomNavigationBar: const TheBottomeNavBar(),
    );
  }
}

class SettingScreenBody extends StatelessWidget {
  const SettingScreenBody({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TheIputFeaild(
            isPassword: false,
            textInputType: TextInputType.name,
            size: size,
            theHint: 'search',
            theLeadingIcon: Icons.search_rounded,
          ),
          const SizedBox(
            // height: size.height * .0,
            height: 10,
          ),
          SettingListTile(
            diviedIt: true,
            theTitle: 'Account',
            theIcon: Icons.person_outline,
            theFunction: () {},
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
            diviedIt: true,
            theTitle: 'Appearance',
            theIcon: Icons.remove_red_eye_outlined,
            theFunction: () {},
          ),
          SettingListTile(
            diviedIt: true,
            theTitle: 'heop & suppourt',
            theIcon: Icons.support_outlined,
            theFunction: () {},
          ),
          SettingListTile(
            diviedIt: true,
            theTitle: 'about',
            theIcon: Icons.info_outline,
            theFunction: () {},
          ),
          // const Spacer(),
          const Center(
            child: Text('all rights reserved to hummam mohamed hamza'),
          )
        ],
      ),
    );
  }
}
