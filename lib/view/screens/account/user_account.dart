import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/localization/localization.dart';
import 'package:my_demo/core/shared/the_input_field.dart';
import 'package:my_demo/core/shared/title_builder.dart';
import 'package:my_demo/view/screens/about%20screen/about_screen.dart';

TextEditingController userNameEdiController = TextEditingController();
Key userNameKey = new Key('');

TextEditingController userPhoneEdiController = TextEditingController();
Key userPhoneKey = new Key('');

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              emptySpace,
              UserCard(),
              emptySpace,
              EditUserDetailsCard(),
              emptySpace,
            ],
          ),
        ),
      ),
    );
  }
}

class EditUserDetailsCard extends StatelessWidget {
  const EditUserDetailsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          emptySpace,
          TitleBuilder(theTitle: 'user name: '),
          TheInputField(
            theValidator: (text) {
              return null;
            },
            theTextEditingController: userNameEdiController,
            theKey: userNameKey,
            theHient: AppLocal.userName.tr,
            theLeadingIcon: Icons.mode_edit_rounded,
            onIconTap: () {
              Get.toNamed(AppLocal.thisPageIsUnderDevelopment);
            },
            isPassword: false,
            theInputType: TextInputType.text,
          ),
          emptySpace,
          TitleBuilder(theTitle: 'user phone: '),
          TheInputField(
            theValidator: (text) {
              return null;
            },
            theTextEditingController: userPhoneEdiController,
            theKey: userPhoneKey,
            theHient: AppConstants.userPhone,
            theLeadingIcon: Icons.mode_edit_rounded,
            onIconTap: () {
              Get.toNamed(AppLocal.thisPageIsUnderDevelopment);
            },
            isPassword: false,
            theInputType: TextInputType.text,
          ),
          emptySpace,
        ],
      ),
    );
  }
}
