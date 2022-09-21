import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/custom_onbording_controller.dart';
import 'package:my_demo/model/data%20source/custom_onbording.dart';

class OnBordingPageSlider extends GetView<OnBordingControllerImp> {
  const OnBordingPageSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
      itemCount: mainCustomOnBordingList.length,
      itemBuilder: (context, index) {
        return Container(
          width: Get.width,
          // height: Get.width,
          // height: double.infinity,
          alignment: AlignmentDirectional.center,
          // margin: const EdgeInsets.only(bottom: 160, top: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                mainCustomOnBordingList[index].imagePath,
                matchTextDirection: true,
                // height: 60,
                width: MediaQuery.of(context).size.width * .6,

                // fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 20),
                child: Text(
                  textAlign: TextAlign.center,
                  mainCustomOnBordingList[index].title,
                  style: const TextStyle(
                    // color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 15,
                  left: 20,
                  right: 20,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Text(
                  mainCustomOnBordingList[index].discription,
                  textAlign: TextAlign.center,

                  style: const TextStyle(
                    // color: Colors.white,
                    fontSize: 14,
                    height: 1.5,
                  ),
                  // maxLines: 3,
                  // textAlign: TextAlign.center,
                  // overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
