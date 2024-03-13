import 'package:fitness_app/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class ActivityColumn extends StatelessWidget {
  const ActivityColumn({
    super.key,
    required this.title,
    required this.value,
    this.unit,
    this.isNotSteps = true,
  });

  final String title;
  final String value;
  final String? unit;
  final bool isNotSteps;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Styles.heading5()),
          isNotSteps
              ? RichText(
                  text: TextSpan(
                    style: Styles.heading2(size: 25),
                    children: [
                      TextSpan(text: '$value '),
                      TextSpan(
                        text: unit,
                        style: Styles.heading5(),
                      ),
                    ],
                  ),
                )
              : Text(value, style: Styles.heading1()),
        ],
      ),
    );
  }
}
