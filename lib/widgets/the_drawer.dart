// import 'dart:js';

import 'package:flutter/material.dart';

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
          DrawerHeaderpluse(),
          DrawerItem(),
          DrawerItem(),
          DrawerItem(),
          DrawerItem(),
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
            padding: const EdgeInsets.all(8),
            child: Text(
              textAlign: TextAlign.start,
              'theme',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ColorPicker(),
        ],
      ),
    );
  }
}

class DrawerHeaderpluse extends StatelessWidget {
  DrawerHeaderpluse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const UserAccountsDrawerHeader(
      currentAccountPicture: const CircleAvatar(
        child: Icon(Icons.abc_sharp),
      ),
      accountName: Text('data'),
      accountEmail: const Text('data'),
      otherAccountsPictures: [
        const Icon(
          Icons.person_outline,
          color: Colors.white,
        ),
        const Icon(
          Icons.save_outlined,
          color: Colors.white,
        )
      ],
    );
  }
}

class ColorPicker extends StatelessWidget {
  ColorPicker({
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
          Column(
            children: [
              InkWell(
                onTap: () {},
                child: const CircleAvatar(
                  backgroundColor: Colors.yellow,
                ),
              ),
              emptySpace,
              const Text("yellow"),
            ],
          ),
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

class DrawerItem extends StatelessWidget {
  DrawerItem({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String title = "the new method";
    String discription = 'theee discription';
    return ListTile(
      leading: const Icon(Icons.home),
      trailing: const Icon(Icons.send),
      title: Text(title),
      subtitle: Text(discription),
      onTap: () {},
    );
  }
}
