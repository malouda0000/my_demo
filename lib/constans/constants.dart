import 'package:flutter/material.dart';

// Color Palete
class AppColor {
  static const kPrimaryColor = Color(0xFFFFC61F);
  static const ksecondaryColor = Color(0xFFB5BFD0);
  static const kTextColor = Color(0xFF50505D);
  static const kTextLightColor = Color(0xFF6A727D);
  static const kTextBlacColor = Color.fromRGBO(0, 0, 0, 1);
  static const theMainLightColor = Colors.white;
  static const kGrayColor = Color.fromRGBO(235, 235, 235, 1);
}

// User Strings
const String userName = 'hmmam mohamed';

// AppImages
// const String userImage = 'assets/images/me.jpg';

// const mainIconLauncher = 'assets/mainIcon.png';
// const secondaryIconlauncher = 'assets/secondaryIcon.png';
// const menuImage = 'assets/icons/menu.svg';
// const humburger = 'assets/images/hamburger.png';
// Genral Consts
const SizedBox emptySpace = const SizedBox(
  height: 10,
  width: 10,
);

class TempText extends StatelessWidget {
  const TempText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Burger King (BK) is an American-based multinational chain of hamburger fast food restaurants. Headquartered in Miami-Dade County, Florida, the company was founded in 1953 as Insta-Burger King, a Jacksonville, Florida–based restaurant chain. After Insta-Burger King ran into financial'
      'Burger King (BK) is an American-based multinational chain of hamburger fast food restaurants. Headquartered in Miami-Dade County, Florida, the company was founded in 1953 as Insta-Burger King, a Jacksonville, Florida–based restaurant chain. After Insta-Burger King ran into financial'
      'Burger King (BK) is an American-based multinational chain of hamburger fast food restaurants. Headquartered in Miami-Dade County, Florida, the company was founded in 1953 as Insta-Burger King, a Jacksonville, Florida–based restaurant chain. After Insta-Burger King ran into financial',
      style:
          TextStyle(wordSpacing: 1.5, height: 1.5, color: AppColor.kTextColor),
    );
  }
}
