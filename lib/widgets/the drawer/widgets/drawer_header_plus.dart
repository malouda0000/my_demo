import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/constants.dart';
import 'package:my_demo/widgets/the_drawer.dart';

class DrawerHeaderplus extends StatelessWidget {
  const DrawerHeaderplus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      currentAccountPicture: CircleAvatar(
        child: GestureDetector(
          onTap: () => Get.offAllNamed('/aboutScreen'),
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
