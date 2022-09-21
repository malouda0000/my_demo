import 'package:flutter/material.dart';
import 'package:my_demo/controllers/custom_onbording_controller.dart';
import 'package:get/get.dart';
import 'package:my_demo/view/screens/custom%20onbording/widgets/onbording_page_slider.dart';

import 'widgets/sliding_controller_row.dart';

class CustomOnBordingPageViewBuilder extends StatelessWidget {
  const CustomOnBordingPageViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBordingControllerImp());
    return Scaffold(
      // backgroundColor: AppColor.kPrimaryColor,
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: const OnBordingPageSlider(),
          ),
          Expanded(
            // flex: 1,
            child: SlidingControllerRow(),
          )
        ],
      ),
    );
  }
}
