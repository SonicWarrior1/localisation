import 'dart:ui';
import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;
  void incr() {
    count++;
  }

  void lang(x, y) {
    var locale = Locale(x, y);
    Get.updateLocale(locale);
  }
}
