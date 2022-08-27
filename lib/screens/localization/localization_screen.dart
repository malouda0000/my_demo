import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/constans/app_color.dart';
import 'package:my_demo/constans/constants.dart';
import 'package:my_demo/controllers/localization_controller.dart';
import 'package:my_demo/localization/localization.dart';
import 'package:my_demo/widgets/big_button.dart';

class LocaliaztionScreen extends StatelessWidget {
  const LocaliaztionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MylocalController myLangController = Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.theMainLightColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColor.ksecondaryColor,
          ),
          onPressed: Get.back,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BigggButton(
                leadingIconColor: AppColor.theMainLightColor,
                buttonTitleColor: AppColor.theMainLightColor,
                theLeadingIcon: Icons.language_outlined,
                theButtonTitle: AppLocal.arabic.tr,
                onTaped: () async {
                  await myLangController.ChangeLocal('ar');
                }),
            emptySpace,
            BigggButton(
                leadingIconColor: AppColor.theMainLightColor,
                buttonTitleColor: AppColor.theMainLightColor,
                theLeadingIcon: Icons.language_outlined,
                theButtonTitle: AppLocal.english.tr,
                onTaped: () async {
                  await myLangController.ChangeLocal('en');
                }),
          ],
        ),
      ),
    );
  }
}
