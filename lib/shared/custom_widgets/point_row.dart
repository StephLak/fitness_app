import 'package:fitness_app/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class PointRow extends StatelessWidget {
  const PointRow({
    super.key,
    required this.color,
    required this.text,
  });

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 5,
          width: 5,
          margin: const EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
        Text(
          text,
          style: Styles.heading5(),
        )
      ],
    );
  }
}
