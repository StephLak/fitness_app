import 'package:fitness_app/constants/app_colors.dart';
import 'package:fitness_app/constants/app_text_styles.dart';
import 'package:fitness_app/view_models/summary_item_model.dart';
import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({super.key, required this.item});

  final SummaryItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 140,
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: AppColors.faintedGrey,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.count,
            style: Styles.heading1(color: item.color),
          ),
          Text(
            item.text,
            style: Styles.heading5(),
          ),
        ],
      ),
    );
  }
}
