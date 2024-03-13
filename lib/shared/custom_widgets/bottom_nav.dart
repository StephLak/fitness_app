import 'package:fitness_app/constants/app_colors.dart';
import 'package:fitness_app/controllers/main_controller.dart';
import 'package:fitness_app/shared/custom_widgets/bottom_nav_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.put(MainController());
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 100,
        margin: const EdgeInsets.fromLTRB(30, 0, 30, 10),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.faintedGrey,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(10),
                    bottom: Radius.circular(45),
                  ),
                ),
                child: Obx(
                  () => BottomNavRow(
                    selectedIndex: controller.selectedIndex.value,
                    onTap: controller.updateIndex,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Obx(
                () => BottomNavRow(
                  selectedIndex: controller.selectedIndex.value,
                  isOnlyIcon: false,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
