import 'package:fitness_app/constants/app_colors.dart';
import 'package:fitness_app/view_models/bottom_nav_model.dart';
import 'package:flutter/material.dart';

class BottomNavRow extends StatelessWidget {
  const BottomNavRow({
    super.key,
    required this.selectedIndex,
    this.isOnlyIcon = true,
    this.onTap,
  });

  final int selectedIndex;
  final bool isOnlyIcon;
  final Function(int index)? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: BottomNavs.all.map((nav) {
        return Expanded(
          child: Visibility(
            visible: isOnlyIcon
                ? selectedIndex != nav.index
                : selectedIndex == nav.index,
            child: isOnlyIcon
                ? GestureDetector(
                    onTap: () => onTap!(nav.index),
                    child: Image.asset(
                      nav.icon,
                      height: 20,
                    ),
                  )
                : Container(
                    height: 60,
                    width: 60,
                    margin: const EdgeInsets.only(bottom: 30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 6, color: AppColors.blackColor),
                      color: AppColors.redColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Image.asset(
                        nav.icon,
                        // height: 25,
                      ),
                    ),
                  ),
          ),
        );
      }).toList(),
    );
  }
}
