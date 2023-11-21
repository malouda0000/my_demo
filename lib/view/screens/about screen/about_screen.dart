import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/constants/app_images.dart';
import 'package:my_demo/core/shared/circuled_image_with_border.dart';
import 'package:my_demo/core/shared/reserved_rights_row.dart';
import 'package:my_demo/core/shared/title_builder.dart';
import 'package:my_demo/get_pages.dart';

import 'package:my_demo/view/screens/about%20screen/widgets/contact_me_row.dart';
import 'package:my_demo/view/screens/about%20screen/widgets/setting_list_tiles.dart';
import 'package:my_demo/view/screens/about%20screen/widgets/user_name.dart';

import '../../../core/constants/constants.dart';
import '../../../core/localization/localization.dart';
// import '../../../core/shared/bottom navigation bar/bottom_nav_bar.dart';
import 'widgets/temp_debuging_row.dart';
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
    return ListView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(15),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            emptySpace,
            UserCard(),
            emptySpace,
            MySettingListTiles(),
            emptySpace,
            ContactMeRow(),
            emptySpace,
            TempDebugingRow(),
            emptySpace,
            ReservedRightsRow(),
            emptySpace,
          ],
        ),
      ],
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: theDefaultElevation,
      child: Padding(
        padding: EdgeInsets.all(theDefaultPadding),
        child: Column(
          children: [
            Row(
              children: [
                // the default user image
                CircularImageWithBorder(
                    showSmallCirlIcon: true,
                    theSmallCirlIcon: Icons.mode_edit_outline_rounded,
                    iconPressed: () {
                      Get.toNamed(AppRoute.underDevelopmentScreen);
                    },
                    imagePath: AppImages.userImage),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UserName(),
                    Text(
                      AppLocal.userEmail.tr,
                    )
                  ],
                ),
                Spacer(),
              ],
            ),
            emptySpace,
            UserBio()
          ],
        ),
      ),
    );
  }
}

class UserBio extends StatelessWidget {
  const UserBio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleBuilder(theTitle: 'user Bio: '),
        Text('''
A passionate Mobile Application Developer with flutter and dart lang. working on developing my self. Looking for opportunities as a
software developer with an expert team of developers who will help advance my career progression to senior positions in the future.
I'm looking to bring my strong sense of dedication, motivation, and responsibility to your company, and to utilize my PROGRAMMING, COMPUTER SCIENCE SKILLS and qualifications obtained through the UNIVERSITY OF BAHRI

'''),
      ],
    );
  }
}
