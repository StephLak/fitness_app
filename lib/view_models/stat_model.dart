import 'package:fitness_app/constants/app_colors.dart';
import 'package:fitness_app/constants/app_images.dart';
import 'package:fitness_app/constants/app_strings.dart';
import 'package:flutter/material.dart';

class StatItem {
  final int index;
  final String text;
  final String count;
  final String image;
  final Color color;
  final String unit;

  StatItem({
    required this.index,
    required this.text,
    required this.count,
    required this.image,
    required this.color,
    this.unit = '',
  });
}

class StatItems {
  static List<StatItem> all = [
    StatItem(
      index: 1,
      text: AppStrings.pageViews,
      count: '1,26,435',
      image: AppImages.pageViews,
      color: AppColors.deepBlueColor,
    ),
    StatItem(
      index: 2,
      text: AppStrings.bounceRate,
      count: '26.84%',
      image: AppImages.bounceRate,
      color: AppColors.redColor,
    ),
    StatItem(
      index: 3,
      text: AppStrings.averageTime,
      count: '05:48',
      image: AppImages.pageViews,
      color: AppColors.orangeColor,
    ),
  ];
}

class Reports {
  static List<StatItem> all = [
    StatItem(
      index: 1,
      text: AppStrings.running,
      count: '2,846',
      image: AppImages.running,
      color: AppColors.deepBlueColor,
      unit: AppStrings.km,
    ),
    StatItem(
      index: 2,
      text: AppStrings.swimmingPool,
      count: '10:45',
      image: AppImages.swimming,
      color: AppColors.orangeColor,
      unit: AppStrings.hrs,
    ),
  ];
}
