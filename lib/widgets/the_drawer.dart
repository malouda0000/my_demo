// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:my_demo/constants.dart';
import 'package:my_demo/screens/setting/settign_list_tile.dart';

String accountName = 'Hmmam mohamed hamza';
String accountEmail = 'Hamam.hamza85@gmail.com';

SizedBox emptySpace = const SizedBox(
  height: 10,
  width: 15,
);

class TheDrawer extends StatelessWidget {
  const TheDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const DrawerHeaderpluse(),
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
            diviedIt: false,
            theTitle: 'Appearance',
            theIcon: Icons.remove_red_eye_outlined,
            theFunction: () {},
          ),
          const Divider(thickness: 5),
          //
          //
          //
          //
          //

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonBar(
                // alignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings_outlined,
                    ),
                    label: const Text('setting'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings_outlined,
                    ),
                    label: const Text('advance setting'),
                  ),
                ],
              )
            ],
          ),

          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //             children: [
          //               // DrawerItem(),
          //               // DrawerItem(),
          //               InkWell(
          //                 onTap: () {},
          //                 child:  Text('setting'),
          //               ),
          //               // Spacer(),

          // //
          // //
          // //
          // //
          // //
          // //

          //               //  Divider(
          //               //   color: Colors.red,
          //               //   thickness: 3,
          //               //   height: 2,
          //               //   indent: 3,
          //               //   endIndent: 4,
          //               // ),
          // //
          // //

          //               Container(
          //                 height: 50,
          //                 width: 20,
          //                 color: Colors.amber,
          //               ),
          //               // Spacer(),
          //               InkWell(
          //                 onTap: () {},
          //                 child:  Text('advance settings'),
          //               )
          //             ],
          //           ),

          //
          //
          //
          //
          //

          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              textAlign: TextAlign.start,
              'Theme',
              style: TextStyle(
                color: kTextBlacColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const ColorPicker(),
        ],
      ),
    );
  }
}

class DrawerHeaderpluse extends StatelessWidget {
  const DrawerHeaderpluse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      currentAccountPicture: CircleAvatar(
        child: Container(
          // height: MediaQuery.of(context).size.width * 0.3,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/me.jpg'),
              fit: BoxFit.fitHeight,
            ),
          ),
          // child: Image.asset(
          //   'assets/images/me.jpg',
          //   // height: 250,
          //   // width: 250,
          // ),
        ),
      ),
      accountName: Text(accountName),
      accountEmail: Text(accountEmail),
      otherAccountsPictures: const [
        Icon(
          Icons.person_outline,
          // color: Colors.white,
          color: kTextBlacColor,
        ),
        Icon(
          Icons.save_outlined,
          // color: Colors.white,
          color: kTextBlacColor,
        )
      ],
    );
  }
}

class ColorPicker extends StatelessWidget {
  const ColorPicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TheThemeColorSelector(),
          Column(
            children: [
              InkWell(
                onTap: () {},
                child: const CircleAvatar(
                  backgroundColor: Colors.amber,
                ),
              ),
              emptySpace,
              const Text("amber"),
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {},
                child: const CircleAvatar(
                  backgroundColor: Colors.lightBlue,
                ),
              ),
              emptySpace,
              const Text("lightBlue"),
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {},
                child: const CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
              ),
              emptySpace,
              const Text("blue"),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: InkWell(
                  onTap: () {},
                ),
              ),
              emptySpace,
              const Text("bluegrey"),
            ],
          ),
        ],
      ),
    );
  }
}

class TheThemeColorSelector extends StatelessWidget {
  const TheThemeColorSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: const CircleAvatar(
            backgroundColor: Colors.yellow,
          ),
        ),
        emptySpace,
        const Text(
          "yellow",
        ),
      ],
    );
  }
}
