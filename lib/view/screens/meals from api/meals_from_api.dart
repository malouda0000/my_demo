import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/api_controller.dart';
import 'package:my_demo/core/constants/app_color.dart';
import 'package:my_demo/core/constants/constants.dart';
import 'package:my_demo/core/shared/bottom%20navigation%20bar/bottom_nav_bar.dart';
import 'package:my_demo/core/shared/custom_splash_screen.dart';
import 'package:my_demo/core/shared/the%20appbar/the_app_bar.dart';

// List posts = [];

class MealsFromApi extends StatefulWidget {
  const MealsFromApi({Key? key}) : super(key: key);

  @override
  State<MealsFromApi> createState() => _MealsFromApiState();
}

class _MealsFromApiState extends State<MealsFromApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TheAppBar(),
        bottomNavigationBar: TheBottomNavBar(),
        body: GetBuilder<ApiController>(
          builder: (controller) {
            return FutureBuilder(
              future: controller.getMealsFromApi(),
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? ListView.builder(
                        // shrinkWrap: true,
                        // physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.posts.length,
                        itemBuilder: (context, index) {
                          // var shourtcut = snapshot.data!;

                          return Container(
                            margin: EdgeInsets.all(20),
                            // height: 20,
                            width: double.infinity,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              color: AppColor.kPrimaryColor,

                              borderRadius:
                                  BorderRadius.circular(theDefaultRaduis),
                              // border: Border.all()
                            ),
                            child: Column(
                              children: [
                                Image(
                                  image: NetworkImage(
                                    '${controller.posts[index]['url']}',
                                  ),
                                ),
                                emptySpace,
                                Text('${controller.posts[index]['title']}'),
                                emptySpace,
                              ],
                            ),
                          );
                        },
                      )
                    : CustomSplashScreen();
              },
            );
          },
        ));
  }

  // body: ListView.builder(
  //   itemCount: posts.length,
  //   itemBuilder: (context, index) {
  //     return Container(
  //       margin: EdgeInsets.all(20),
  //       child: Text('${posts[index]}'),
  //     );
  //   },
  // ),

}
