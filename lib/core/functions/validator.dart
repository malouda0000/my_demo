import 'package:get/utils.dart';

validator(String text, int min, int max, String type) {
  if (type == 'userName') {
    if (!GetUtils.isUsername(text)) {
      return 'not valid userName';
    }
  }
  if (type == 'email') {
    if (!GetUtils.isEmail(text)) {
      // print('not email ============');
      return 'not valid email';
    }
  }
  if (type == 'phoneNumber') {
    if (!GetUtils.isPhoneNumber(text)) {
      return 'not valid phoneNumber';
    }
  }
  // if (type == 'phoneNumber') {
  //   if (!GetUtils. (text)) {
  //     return 'not valid phoneNumber';
  //   }
  // }
  if (text.isEmpty) {
    return "can't be empty";
  }
  if (text.length < min) {
    return "can't be smaller than $min";
  }
  if (text.length > max) {
    return "can't be larger than $max";
  }
}
