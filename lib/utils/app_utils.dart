import 'package:flutter/material.dart';
import 'package:get/get.dart';

queryHeight() {
  return Get.size.height;
}

queryWidth() {
  return Get.size.width;
}

bool isTabletSize() {
  return MediaQuery.of(Get.context!).size.shortestSide >= 600 &&
      MediaQuery.of(Get.context!).size.width <= 1200;
}

String getDayName(int value) {
  switch (value) {
    case 0:
      return 'MON';
    case 1:
      return 'TUE';
    case 2:
      return 'WED';
    case 3:
      return 'THU';
    case 4:
      return 'FRI';
    case 5:
      return 'SAT';
    default:
      return 'SUN';
  }
}
