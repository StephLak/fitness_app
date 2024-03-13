import 'package:fitness_app/constants/app_colors.dart';
import 'package:fitness_app/constants/app_strings.dart';
import 'package:flutter/material.dart';

class SummaryItem {
  final int index;
  final String text;
  final String count;
  final Color color;

  SummaryItem({
    required this.index,
    required this.text,
    required this.count,
    required this.color,
  });
}

class SummaryItems {
  static List<SummaryItem> all = [
    SummaryItem(
      index: 1,
      text: AppStrings.finalPoint,
      count: '86',
      color: AppColors.orangeColor,
    ),
    SummaryItem(
      index: 2,
      text: AppStrings.avgPoint,
      count: '58',
      color: AppColors.deepBlueColor,
    ),
    SummaryItem(
      index: 3,
      text: AppStrings.highestPoint,
      count: '140',
      color: AppColors.redColor,
    ),
  ];
}
