// import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class MylocalController extends GetxController {
  // Locale MyInitLocal = SharedPreferences;

  Future<void> ChangeLocal(String langCode) async {
    Locale myLocale = Locale(langCode);

    Get.updateLocale(myLocale);
  }
}
