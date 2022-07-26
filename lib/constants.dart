import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFFC61F);
const ksecondaryColor = Color(0xFFB5BFD0);
const kTextColor = Color(0xFF50505D);
const kTextLightColor = Color(0xFF6A727D);
const kTextBlacColor = Color.fromRGBO(0, 0, 0, 1);
const theMainLightColor = Color.fromARGB(255, 255, 255, 255);

class TempText extends StatelessWidget {
  const TempText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        'Burger King (BK) is an American-based multinational chain of hamburger fast food restaurants. Headquartered in Miami-Dade County, Florida, the company was founded in 1953 as Insta-Burger King, a Jacksonville, Florida–based restaurant chain. After Insta-Burger King ran into financial');
  }
}
