import 'package:flutter/material.dart';
import 'package:my_demo/controllers/auth/auth_controller.dart';
import 'package:my_demo/get_pages.dart';

import 'package:get/get.dart';
import 'package:my_demo/main.dart';

class FirstTimeInit extends GetMiddleware {
  AuthController authController = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    // priority = 1;
    if (mySharedPrefes!.getBool('firstAppInit') == true) {
      return RouteSettings(name: AppRoute.signInScreen);
      // return RouteSettings(name: AppRoute.localizationScreen);
    } else {
      RouteSettings(name: AppRoute.customOnbordingScreen);
    }
    return null;
  }

  // authContMiddleMiddleware() {
  //   if (authController.initalMiddelWare() == true) {
  //     return RouteSettings(
  //       name: AppRoute.homePage,
  //     );
  //   } else {
  //     return RouteSettings(
  //       name: AppRoute.signInScreen,
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
      return RouteSettings(name: AppRoute.mainScreen);
    } else {
      RouteSettings(name: AppRoute.signInScreen);
    }
    return null;
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
  //       name: AppRoute.signInScreen,
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
  //         name: AppRoute.signInScreen,
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