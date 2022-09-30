import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_demo/main.dart';

class LocallizationsController extends GetxController {
  Locale initalLang =
      mySharedPrefes!.getString('lang') == 'en' ? Locale('en') : Locale('ar');

  ChangeLocal(String langCode) async {
    Locale myLocale = Locale(langCode);

    Get.updateLocale(myLocale);

    mySharedPrefes!.setString('lang', langCode);
  }

  String emailVerLang() {
    return mySharedPrefes!.getString('lang') == 'en' ? 'en' : 'ar';
  }
}
