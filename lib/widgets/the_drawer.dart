import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/screens/setting/widgets/reserved_rights_row.dart';
import 'package:my_demo/screens/setting/widgets/settign_list_tile.dart';
import 'package:my_demo/widgets/big_button.dart';
import 'package:my_demo/widgets/the%20drawer/widgets/drawer_header_plus.dart';

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
          const DrawerHeaderplus(),
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
            theFunction: () {
              Get.toNamed('/themeScreen');
            },
          ),
          const Divider(),
          //
          //
          //
          //
          //

          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonBar(
                // alignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigggButton(
                      theLeadingIcon: Icons.settings_outlined,
                      theButtonTitle: 'Settings',
                      onTaped: () {
                        Get.toNamed('/settingScreen');
                      }),
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

          SizedBox(
            height: 15,
          ),

          ReservedRightsRow(),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
