import 'package:fitness_app/constants/app_colors.dart';
import 'package:fitness_app/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class UserDetailCard extends StatelessWidget {
  const UserDetailCard({
    super.key,
    required this.value,
    required this.title,
  });

  final String value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: AppColors.faintedGrey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value,
              style: Styles.heading2(color: AppColors.orangeColor),
            ),
            Text(
              title,
              style: Styles.heading5(),
            ),
          ],
        ),
      ),
    );
  }
}
