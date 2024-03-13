import 'package:fitness_app/constants/app_colors.dart';
import 'package:fitness_app/controllers/main_controller.dart';
import 'package:fitness_app/shared/custom_widgets/bottom_nav.dart';
import 'package:fitness_app/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.put(MainController());
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: queryWidth() * 0.05, vertical: 10),
              child: Obx(
                () => SingleChildScrollView(
                    child:
                        controller.pages[controller.selectedIndex.value - 1]),
              ),
            ),
            const CustomNavBar(),
          ],
        ),
      ),
    );
  }
}
