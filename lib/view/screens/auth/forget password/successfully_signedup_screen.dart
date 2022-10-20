import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/auth/successfully_signedup_controller.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/shared/app_id.dart';
import 'package:my_demo/core/shared/big_button.dart';
import 'package:my_demo/core/shared/title_builder.dart';
import 'package:my_demo/view/screens/auth/widgets/custom_auth_card.dart';

class SuccessfullySignedupScreen extends StatelessWidget {
  const SuccessfullySignedupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessfullySignedupControllerImp successfullySignedupControllerImp =
        Get.put(SuccessfullySignedupControllerImp());

    return CustomAuthCard(
      authFealds: Form(
        key: successfullySignedupControllerImp.successfullySignedup,
        child: Column(
          children: [
            AppId(),
            TitleBuilder(theTitle: 'signedup successfully'),
            Container(
              padding: EdgeInsets.all(theDefaultPadding),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColor.kPrimaryColor,
                  )),
              child: Icon(
                Icons.done_rounded,
                size: 40,
                color: AppColor.kPrimaryColor,
              ),
            ),
            emptySpace,
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: BigggButton(
                // go sign in page
                onTaped: () async {
                  successfullySignedupControllerImp.goToSingIn();
                },
                theButtonTitle: 'go to singIn',
                theLeadingIcon: Icons.login_rounded,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
