import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_demo/main.dart';

class MylocalController extends GetxController {
  Locale initalLang =
      mySharedPrefes!.getString('lang') == 'ar' ? Locale('ar') : Locale('en');

  ChangeLocal(String langCode) async {
    Locale myLocale = Locale(langCode);

    Get.updateLocale(myLocale);

    mySharedPrefes!.setString('lang', langCode);
  }
}
