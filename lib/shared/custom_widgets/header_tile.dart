import 'package:fitness_app/constants/app_colors.dart';
import 'package:fitness_app/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class HeaderTile extends StatelessWidget {
  const HeaderTile({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: Styles.body2(),
      ),
      subtitle: Text(
        subtitle,
        style: Styles.heading1(size: 25),
      ),
      trailing: CircleAvatar(
        backgroundColor: AppColors.deepGreyColor,
      ),
    );
  }
}
