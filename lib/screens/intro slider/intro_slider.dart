import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_slider/intro_slider.dart';
import '../../../constans/app_color.dart';

import '../auth/sing_in.dart';

class IntroSliderPage extends StatefulWidget {
  @override
  _IntroSliderPageState createState() => _IntroSliderPageState();
}

class _IntroSliderPageState extends State<IntroSliderPage> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();
    slides.add(
      new Slide(
        title: "Hello Food!",
        description:
            "The easiest way to order food from your favorite restaurant!",
        pathImage: "assets/images/hamburger.png",
      ),
    );
    slides.add(
      new Slide(
        title: "Movie Tickets",
        description: "Book movie tickets for your family and friends!",
        pathImage: "assets/images/movie.png",
      ),
    );
    slides.add(
      new Slide(
        title: "Great Discounts",
        description: "Best discounts on every single service we offer!",
        pathImage: "assets/images/discount.png",
      ),
    );
    slides.add(
      new Slide(
        title: "World Travel",
        description: "Book tickets of any transportation and travel the world!",
        pathImage: "assets/images/travel.png",
      ),
    );
  }

  List<Widget> renderListCustomTabs() {
    Size size = MediaQuery.of(context).size;
    List<Widget> tabs = [];
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            margin: const EdgeInsets.only(bottom: 160, top: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: size.width * .8,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.white,
                    color: AppColor.kPrimaryColor,
                  ),
                  child: Image.asset(
                    currentSlide.pathImage.toString(),
                    // "assets/images/movie.png",
                    matchTextDirection: true,
                    // height: 60,
                    width: size.width * .5,
                    // fit: BoxFit.contain,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Text(
                    currentSlide.title.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Text(
                    currentSlide.description.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      height: 1.5,
                    ),
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                  margin: const EdgeInsets.only(
                    top: 15,
                    left: 20,
                    right: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      backgroundColorAllSlides: AppColor.kPrimaryColor,
      renderSkipBtn: const Text(
        "Skip",
        style: TextStyle(
          color: AppColor.theMainLightColor,
        ),
      ),
      renderNextBtn: const Text(
        "Next",
        style: TextStyle(
          color: AppColor.theMainLightColor,
        ),
      ),
      renderDoneBtn: const Text(
        "Done",
        style: TextStyle(
          color: AppColor.theMainLightColor,
        ),
      ),
      // colorDoneBtn: Colors.white,
      // doneButtonStyle: ButtonStyle(backgroundColor: Color(AppColor.theMainLightColor)),

      // autoScroll: true,
      // autoScrollInterval: Duration(seconds: 1),
      // doneButtonStyle: ButtonStyle(backgroundColor: Color(Colors.white,)) ,
      colorActiveDot: AppColor.theMainLightColor,
      sizeDot: 8.0,
      // typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,
      listCustomTabs: this.renderListCustomTabs(),
      scrollPhysics: const BouncingScrollPhysics(),
      // shouldHideStatusBar: false,
      onDonePress: () {
        Get.offAll(SingInScreen());
      },
    );
  }
}
