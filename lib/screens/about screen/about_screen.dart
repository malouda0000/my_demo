import 'package:flutter/material.dart';
import 'package:my_demo/constants.dart';
import 'package:my_demo/widgets/bottom_nav_bar.dart';
import 'package:my_demo/screens/home/components/the_app_bar.dart';
import 'package:my_demo/widgets/the_drawer.dart';
import 'package:my_demo/widgets/the_fap.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizedBox emptySpace = const SizedBox(
      height: 10,
      width: 10,
    );

    return Scaffold(
      drawer: const TheDrawer(),
      appBar: TheAppBar(),
      // drawer: (),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              emptySpace,
              Container(
                height: MediaQuery.of(context).size.width * 0.3,
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
              emptySpace,
              Text(
                'hummam mohamed '.toUpperCase(),
              ),
              const Divider(
                color: ksecondaryColor,
                thickness: 2,
              ),
              const SettingItem(),
              const SettingItem(),
              const SettingItem(),
              const SettingItem(),
              const SettingItem(),
            ],
          ),
        ),
      ),
      floatingActionButton: const TheFap(),
      bottomNavigationBar: const TheBottomeNavBar(),
    );
  }
}

class SettingItem extends StatelessWidget {
  const SettingItem({Key? key}) : super(key: key);
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
