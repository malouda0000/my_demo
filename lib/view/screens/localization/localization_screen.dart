import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/localization_controller.dart';
import '../../../core/constants/constants.dart';
import '../../../core/localization/localization.dart';
import '../../../core/shared/big_button.dart';

class LocaliaztionScreen extends StatefulWidget {
  const LocaliaztionScreen({Key? key}) : super(key: key);

  @override
  State<LocaliaztionScreen> createState() => _LocaliaztionScreenState();
}

class _LocaliaztionScreenState extends State<LocaliaztionScreen> {
  @override
  Widget build(BuildContext context) {
    LocallizationsController locallizationsController = Get.find();
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: AppColor.theMainLightColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            // color: AppColor.ksecondaryColor,
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
                theLeadingIcon: Icons.language_outlined,
                theButtonTitle: AppLocal.arabic.tr,
                onTaped: () {
                  setState(() {
                    locallizationsController.ChangeLocal('ar');
                  });
                }),
            emptySpace,
            BigggButton(
                theLeadingIcon: Icons.language_outlined,
                theButtonTitle: AppLocal.english.tr,
                onTaped: () {
                  setState(() {
                    locallizationsController.ChangeLocal('en');
                  });
                }),
          ],
        ),
      ),
    );
  }
}
