import 'package:fitness_app/controllers/main_controller.dart';
import 'package:fitness_app/views/analytics_screen.dart';
import 'package:fitness_app/views/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.put(MainController());
    return Obx(
      () => controller.showDashboard.value
          ? const DashboardScreen()
          : const AnalyticsScreen(),
    );
  }
}
