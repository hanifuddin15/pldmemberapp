import 'package:flutter/cupertino.dart';

class AppResponsiveManager {
  // get device height responsive
  static double getDeviceHeight(dynamic context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return deviceHeight;
  }

// get device width responsive
  static double getDeviceWidth(dynamic context) {
    var deviceWidth = MediaQuery.of(context).size.width;

    return deviceWidth;
  }
}
