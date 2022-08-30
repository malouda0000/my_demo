import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/localization/localization.dart';
import 'package:my_demo/core/shared/communication_row.dart';
import 'package:my_demo/core/shared/title_builder.dart';

class ContactMeRow extends StatelessWidget {
  const ContactMeRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: defaultElevation,
      child: Padding(
        padding: EdgeInsets.all(theDefaultPadding),
        child: Column(
          children: [
            TitleBuilder(
              theTitle: AppLocal.feelFreeToContacMe.tr,
            ),
            const SizedBox(
              height: 15,
            ),
            CommunicationRow(),
          ],
        ),
      ),
    );
  }
}
