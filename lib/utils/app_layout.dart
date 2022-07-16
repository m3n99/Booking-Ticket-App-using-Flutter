import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

// why MediaQuery
/* MediaQuery provides a higher-level view of the current app’s screen size and can also give more detailed information 
about the device and its layout preferences. In practice, MediaQuery is always there. It can simply be accessed by calling MediaQuery.of in the build method. */

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeight(int pixels) {
    double x = getScreenHeight() / pixels;
    return getScreenHeight() / x;
  }

  static getWidth(int pixels) {
    double x = getScreenWidth() / pixels;
    return getScreenWidth() / x;
  }
}
