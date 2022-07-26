import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_demo/constants.dart';
import 'package:my_demo/screens/detials%20screen/detials_screen.dart';

class ItemCardBuilder extends StatelessWidget {
  ItemCardBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TheItemCard(
            title: 'burgerking',
            discription: 'best burger',
            svgSrc: 'assets/icons/burger_beer.svg',
            pressit: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetialsScreen();
                  },
                ),
              );
            },
          ),
          TheItemCard(
            title: 'burgerking',
            discription: 'best burger',
            svgSrc: 'assets/icons/chinese_noodles.svg',
            pressit: () {},
          ),
          TheItemCard(
            title: 'burgerking',
            discription: 'best burger',
            svgSrc: 'assets/icons/chinese_noodles.svg',
            pressit: () {},
          ),
          TheItemCard(
            title: 'burgerking',
            discription: 'best burger',
            svgSrc: 'assets/icons/burger_beer.svg',
            pressit: () {},
          ),
          TheItemCard(
            title: 'burgerking',
            discription: 'best burger',
            svgSrc: 'assets/icons/chinese_noodles.svg',
            pressit: () {},
          ),
        ],
      ),
    );
  }
}

class TheItemCard extends StatelessWidget {
  final String title, discription, svgSrc;
  final Function pressit;
  TheItemCard(
      {Key? key,
      required this.title,
      required this.discription,
      required this.svgSrc,
      required this.pressit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      width: MediaQuery.of(context).size.width * .35,
      // height: MediaQuery.of(context).size.width * .40,
      // padding:  EdgeInsets.all(20),
      // margin:  EdgeInsets.all(20),
      decoration: BoxDecoration(
        // color: Colors.red,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: ksecondaryColor.withOpacity(0.32),
            // color: Colors.red,
          ),
        ],
      ),
      // child: SvgPicture.asset('assets/images/beyond-meat-mcdonalds.png'),

      child: Material(
        child: InkWell(
          onTap: () {
            pressit();
          },
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryColor.withOpacity(0.32),
                  ),
                  child: SvgPicture.asset(svgSrc),
                ),
                Text(
                  title,
                  style: TextStyle(color: kPrimaryColor),
                ),
                Text(
                  discription,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
