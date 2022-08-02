import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_demo/constants.dart';
import 'package:my_demo/screens/setting/settign_list_tile.dart';
import 'package:my_demo/widgets/bottom_nav_bar.dart';
import 'package:my_demo/screens/home/components/the_app_bar.dart';
import 'package:my_demo/widgets/the_drawer.dart';
import 'package:my_demo/widgets/the_fap.dart';
// import 'package:flutter_remix/flutter_remix.dart';

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
              SettingListTile(
                theTitle: 'Account',
                theIcon: Icons.person_outline,
                theFunction: () {},
              ),
              SettingListTile(
                theTitle: 'Notification',
                theIcon: Icons.notifications_outlined,
                theFunction: () {},
              ),
              SettingListTile(
                theTitle: 'Privacy & Security',
                theIcon: Icons.lock_outline,
                theFunction: () {},
              ),
              SettingListTile(
                theTitle: 'Appearance',
                theIcon: Icons.remove_red_eye_outlined,
                theFunction: () {},
              ),
              const Divider(
                thickness: 2,
              ),
              Column(
                children: [
                  const Text(
                    'Feel free to contac me',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommuincationIcon(
                        theIcon: Icons.facebook_rounded,
                        theUrlLanching: () {},
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      CommuincationIcon(
                        theIcon: Icons.email_rounded,
                        theUrlLanching: () {},
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      CommuincationIcon(
                        theIcon: Icons.person_rounded,
                        theUrlLanching: () {},
                      ),
                      const SizedBox(
                        width: 20,
                      ),
//                   IconButton(onPressed: (){}, icon: Icon(Icon(FlutterRemix.search),

// ))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: const TheFap(),
      bottomNavigationBar: const TheBottomeNavBar(),
    );
  }
}

class CommuincationIcon extends StatelessWidget {
  final Function theUrlLanching;
  final IconData theIcon;
  const CommuincationIcon({
    Key? key,
    required this.theUrlLanching,
    required this.theIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: ksecondaryColor,
      ),
      // padding: EdgeInsets.all(15),
      child: Container(
        margin: EdgeInsets.all(7),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor,
        ),
        child: IconButton(
          onPressed: () {
            theUrlLanching;
          },
          icon: Icon(
            theIcon,
            color: kTextBlacColor,
          ),
        ),
      ),
    );
  }
}
