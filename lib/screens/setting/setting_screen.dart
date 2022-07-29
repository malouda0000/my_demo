import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_demo/constants.dart';
import 'package:my_demo/screens/home/components/the_app_bar.dart';
import 'package:my_demo/widgets/the_drawer.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: theMainLightColor,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
          ),
        ),

        // leading: Icon(
        //   Icons.arrow_back,
        //   color: kPrimaryColor,
        // ),
        backgroundColor: theMainLightColor,
        centerTitle: true,
        title: const Text(
          'Setting',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kGrayColor,
              ),
              width: size.width,
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'search',
                  prefixIcon: Icon(
                    Icons.search_outlined,
                    color: kTextBlacColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              // height: size.height * .0,
              height: 10,
            ),
            const ListTile(
              leading: Icon(
                Icons.person_outline,
                color: kTextBlacColor,
              ),
              title: Text('Account',
                  style: TextStyle(
                    color: kTextBlacColor,
                  )),
              trailing: Icon(
                Icons.arrow_forward,
                color: kTextBlacColor,
              ),
            ),
            Divider(),
            const ListTile(
              leading: Icon(
                Icons.notifications_outlined,
                color: kTextBlacColor,
              ),
              title: Text('Notification',
                  style: TextStyle(
                    color: kTextBlacColor,
                  )),
              trailing: Icon(
                Icons.arrow_forward,
                color: kTextBlacColor,
              ),
            ),
            Divider(),
            const ListTile(
              leading: Icon(
                Icons.remove_red_eye_outlined,
                color: kTextBlacColor,
              ),
              title: Text('Appearance',
                  style: TextStyle(
                    color: kTextBlacColor,
                  )),
              trailing: Icon(
                Icons.arrow_forward,
                color: kTextBlacColor,
              ),
            ),
            Divider(),
            const ListTile(
              leading: Icon(
                Icons.lock_outline,
                color: kTextBlacColor,
              ),
              title: Text('Privacy & Security',
                  style: TextStyle(
                    color: kTextBlacColor,
                  )),
              trailing: Icon(
                Icons.arrow_forward,
                color: kTextBlacColor,
              ),
            ),
            Divider(),
            const ListTile(
              leading: Icon(
                Icons.support_outlined,
                color: kTextBlacColor,
              ),
              title: Text('Help & Support',
                  style: TextStyle(
                    color: kTextBlacColor,
                  )),
              trailing: Icon(
                Icons.arrow_forward,
                color: kTextBlacColor,
              ),
            ),
            Divider(),
            const ListTile(
              leading: Icon(
                Icons.info_outline,
                color: kTextBlacColor,
              ),
              title: Text('About',
                  style: TextStyle(
                    color: kTextBlacColor,
                  )),
              trailing: Icon(
                Icons.arrow_forward,
                color: kTextBlacColor,
              ),
            ),
            Divider(),
            const ListTile(
              leading: Icon(
                Icons.person_outline,
                color: kTextBlacColor,
              ),
              title: Text('Account',
                  style: TextStyle(
                    color: kTextBlacColor,
                  )),
              trailing: Icon(
                Icons.arrow_forward,
                color: kTextBlacColor,
              ),
            ),
          ],
        ),
      ),
      drawer: const TheDrawer(),
    );
  }
}
