import 'package:fitness_app/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class PointColumn extends StatelessWidget {
  const PointColumn({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Styles.body2(size: 12),
        ),
        Text(
          value,
          style: Styles.heading1(),
        ),
      ],
    );
  }
}
