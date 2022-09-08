import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:my_demo/get_pages.dart';
import '../main.dart';

class AuthMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (mySharedPrefes?.getBool('logIn') != null) {
      // return super.redirect(route);

      return RouteSettings(name: AppRoute.introSliderScreen);
    } else {
      return RouteSettings(
        name: AppRoute.aboutScreen,
      );
    }
  }
}
