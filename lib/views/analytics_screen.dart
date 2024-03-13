import 'package:fitness_app/constants/app_colors.dart';
import 'package:fitness_app/constants/app_images.dart';
import 'package:fitness_app/constants/app_strings.dart';
import 'package:fitness_app/constants/app_text_styles.dart';
import 'package:fitness_app/controllers/main_controller.dart';
import 'package:fitness_app/shared/charts/dashboard_chart.dart';
import 'package:fitness_app/shared/custom_widgets/header_tile.dart';
import 'package:fitness_app/shared/custom_widgets/month_ranges_view.dart';
import 'package:fitness_app/shared/custom_widgets/point_column.dart';
import 'package:fitness_app/shared/custom_widgets/point_row.dart';
import 'package:fitness_app/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.put(MainController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderTile(
            title: AppStrings.reports, subtitle: AppStrings.analyticsReports),
        const MonthRangesView(
          hasTopPadding: false,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PointRow(
                color: AppColors.deepBlueColor,
                text: AppStrings.yourPoint,
              ),
              SizedBox(
                width: 30,
              ),
              PointRow(
                color: AppColors.orangeColor,
                text: AppStrings.averagePoints,
              ),
            ],
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: GestureDetector(
              onTap: () => controller.updateShowDashboard(true),
              child: Text(
                AppStrings.backToDashboard,
                style: Styles.linkTextStyle(isUnderline: true),
              ),
            ),
          ),
        ),
        Image.asset(
          AppImages.analytics,
          fit: BoxFit.cover,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PointColumn(
                title: AppStrings.totalPoints,
                value: '2.354',
              ),
              SizedBox(
                width: 40,
              ),
              PointColumn(
                title: AppStrings.avgPointPerRun,
                value: '98',
              ),
            ],
          ),
        ),
        Container(
          height: 310,
          width: queryWidth(),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColors.faintedGrey,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.gameDetail,
                    style: Styles.heading4(),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: PointRow(
                      color: AppColors.orangeColor,
                      text: AppStrings.sprint,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 150, child: DashboardChart()),
              RichText(
                text: TextSpan(
                  style: Styles.heading5(),
                  children: [
                    const TextSpan(text: AppStrings.youWere),
                    TextSpan(
                      text: '48%',
                      style: Styles.heading3(color: AppColors.redColor),
                    ),
                    const TextSpan(text: AppStrings.usuallyToday),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: queryWidth() * 0.2, vertical: 5),
                child: Divider(
                  color: AppColors.faintedGrey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        AppImages.running,
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          AppStrings.maxSpeed,
                          style: Styles.heading5(),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('18.7 ', style: Styles.heading3()),
                          Text(
                            AppStrings.kmh,
                            style: Styles.heading5(
                              color: AppColors.orangeColor,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        AppStrings.personalSpeed,
                        style: Styles.heading5(size: 10),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 100,
        ),
      ],
    );
  }
}
