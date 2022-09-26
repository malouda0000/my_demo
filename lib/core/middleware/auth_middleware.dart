import 'package:flutter/material.dart';
import 'package:my_demo/controllers/auth_controller.dart';
import 'package:my_demo/get_pages.dart';

import 'package:get/get.dart';
import 'package:my_demo/main.dart';

class FirstTimeInit extends GetMiddleware {
  AuthController authController = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    // priority = 1;
    if (mySharedPrefes!.getBool('firstAppInit') == true) {
      return RouteSettings(name: AppRoute.singInScreen);
    } else {
      RouteSettings(name: AppRoute.customOnbordingScreen);
    }
  }

  // authContMiddleMiddleware() {
  //   if (authController.initalMiddelWare() == true) {
  //     return RouteSettings(
  //       name: AppRoute.homePage,
  //     );
  //   } else {
  //     return RouteSettings(
  //       name: AppRoute.singInScreen,
  //     );
  //   }
  // }
}

class AuthMiddleWare extends GetMiddleware {
  AuthController authController = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    // priority = 2;
    if (mySharedPrefes!.getBool('logIn') == true) {
      return RouteSettings(name: AppRoute.homePage);
    } else {
      RouteSettings(name: AppRoute.singInScreen);
    }
    //  if ( await authController.initalMiddelWare() != null) {
    //     // return super.redirect(route);
    //     return authContMiddleMiddleware() ;
    //   }  else {
    //     return RouteSettings(
    //       name: AppRoute.introSliderScreen,
    //     );
    //   };
  }
}




  // authContMiddleMiddleware() {
  //   if (authController.initalMiddelWare() == true) {
  //     return RouteSettings(
  //       name: AppRoute.homePage,
  //     );
  //   } else {
  //     return RouteSettings(
  //       name: AppRoute.singInScreen,
  //     );
  //   }
  // }

  // @override
  // RouteSettings? redirect(String? route) {
  //   if (mySharedPrefes?.getString('logIn') != null) {
  //     // return super.redirect(route);
  //     if (mySharedPrefes!.getString('logIn') == true) {
  //       return RouteSettings(
  //         name: AppRoute.homePage,
  //       );
  //     } else {
  //       return RouteSettings(
  //         name: AppRoute.singInScreen,
  //       );
  //     }
  //   } else {
  //     return RouteSettings(
  //       name: AppRoute.introSliderScreen,
  //     );
  //   }
  // }

  // @override
  // Future<GetNavConfig?> redirectDelegate(GetNavConfig route) async {
  //   print("calling here");
  //   var user = await mySharedPrefes!.getBool('logIn');

  //   if (user = null) {
  //     print("fefe");
  //     return GetNavConfig.fromRoute(AppRoute.introSliderScreen);
  //   } else if (user.auth_token == "" && user.auth_token == null) {
  //     print("efef");
  //     return GetNavConfig.fromRoute("/login");
  //   }
  //   print("efecsf");
  //   return await super.redirectDelegate(route);
  // }