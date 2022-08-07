import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_demo/constants.dart';
import 'package:my_demo/screens/home/my_home_page.dart';
import 'package:my_demo/screens/setting/settign_list_tile.dart';
import 'package:my_demo/screens/sing%20and%20log%20in%20screen/sing_and_log_in_screen.dart';
import 'package:my_demo/widgets/bottom_nav_bar.dart';
import 'package:my_demo/screens/home/components/the_app_bar.dart';
import 'package:my_demo/widgets/the_drawer.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_remix/flutter_remix.dart';

// final Uri _url = Uri.parse('tel:+1-555-010-999');

// Future<void> _launchUrl() async {
//   if (!await launchUrl(_url)) {
//     throw GetSnackBar(
//       title: 'Could not launch $_url',
//     );
//   }
// }

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
                diviedIt: true,
                theTitle: 'Account',
                theIcon: Icons.person_outline,
                theFunction: () {
                  // Get.offAllNamed('/SinInScreen');
                  Get.to(() => SingInScreen());
                  print('the Account ListTile has been tapded sucsesfully');
                },
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
              const Divider(
                thickness: 2,
              ),
              Column(
                children: [
                  const Text(
                    'Feel free to contac me',
                    style: TextStyle(
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
                        theUrlLanching: () async {
                          const url = 'https://facebook.com';

                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            return const GetSnackBar(
                              message: 'cant launch the url',
                            );
                          }
                          ;
                        },

                        // theUrlLanching: (){},
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      CommuincationIcon(
                        theIcon: Icons.email_rounded,
                        theUrlLanching: () {
                          Get.to(const MyHomePage());
                        },
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
        // shape: BoxShape.circle,
        // color: ksecondaryColor,
        borderRadius: BorderRadius.circular(10),
        // color: kTextBlacColor,

        color: kPrimaryColor,
      ),
      // padding: EdgeInsets.all(15),
      child: Container(
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          // shape: BoxShape.circle,
          borderRadius: BorderRadius.circular(10),
          color: kTextBlacColor,
          // color: ksecondaryColor,
          // color: kTextBlacColor,
        ),
        child: IconButton(
          onPressed: () {
            theUrlLanching;
          },
          icon: Icon(
            theIcon,
            // color: kTextBlacColor.withOpacity(.5),
            // color: kTextBlacColor,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
