import 'package:fitness_app/views/home_screen.dart';
import 'package:fitness_app/views/profile_screen.dart';
import 'package:fitness_app/views/statistics_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt selectedIndex = 2.obs;
  RxInt selectedRange = 1.obs;
  RxInt selectedMonthRange = 1.obs;
  RxInt selectedDay = 3.obs;
  RxBool showDashboard = true.obs;

  updateIndex(int index) {
    selectedIndex.value = index;
  }

  updateRange(int range) {
    selectedRange.value = range;
  }

  updateMonthRange(int range) {
    selectedMonthRange.value = range;
  }

  updateShowDashboard(bool value) {
    showDashboard.value = value;
  }

  int getRecentMonday() {
    var monday = 1;
    var now = DateTime.now();

    while (now.weekday != monday) {
      now = now.subtract(const Duration(days: 1));
    }
    return now.day;
  }

  int daysInMonth() {
    DateTime date = DateTime.now();
    var firstDayThisMonth = DateTime(date.year, date.month, date.day);
    var firstDayNextMonth = DateTime(firstDayThisMonth.year,
        firstDayThisMonth.month + 1, firstDayThisMonth.day);
    return firstDayNextMonth.difference(firstDayThisMonth).inDays;
  }

  void selectDay(int day) {
    selectedDay.value = day;
  }

  RxList<Widget> pages = [
    const StatisticsScreen(),
    const HomeScreen(),
    const ProfileScreen(),
  ].obs;
}
