import 'package:flutter/material.dart';
import 'package:my_demo/widgets/bottom_nav_bar.dart';
import 'package:my_demo/screens/home/components/the_app_bar.dart';
import 'package:my_demo/screens/home/components/the_body.dart';
import 'package:my_demo/widgets/the_drawer.dart';
import 'package:my_demo/widgets/the_fap.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizedBox emptySpace = SizedBox(
      height: 10,
      width: 10,
    );

    return Scaffold(
      drawer: TheDrawer(),
      appBar: TheAppBar(),
      // drawer: (),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            emptySpace,
            Container(
              height: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
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
            emptySpace,
            Text(
              'hummam mohamed '.toUpperCase(),
            ),
          ],
        ),
      ),
      floatingActionButton: TheFap(),
      bottomNavigationBar: TheBottomeNavBar(),
    );
  }
}
