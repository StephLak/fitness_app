import 'package:fitness_app/constants/app_colors.dart';
import 'package:fitness_app/constants/app_strings.dart';
import 'package:fitness_app/constants/app_text_styles.dart';
import 'package:fitness_app/controllers/main_controller.dart';
import 'package:fitness_app/shared/charts/dashboard_chart.dart';
import 'package:fitness_app/shared/custom_widgets/activity_column.dart';
import 'package:fitness_app/shared/custom_widgets/summary_card.dart';
import 'package:fitness_app/view_models/activity_model.dart';
import 'package:fitness_app/view_models/date_range_model.dart';
import 'package:fitness_app/view_models/summary_item_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.put(MainController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            AppStrings.dashboard,
            style: Styles.heading1(size: 25),
          ),
          subtitle: RichText(
            text: TextSpan(
              style: Styles.body2(),
              children: [
                const TextSpan(text: AppStrings.dashboardSubtitle),
                TextSpan(
                  text: AppStrings.game,
                  style: Styles.body2(color: AppColors.orangeColor),
                ),
              ],
            ),
          ),
          trailing: const Icon(
            Icons.search,
            color: AppColors.whiteColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.overview,
                style: Styles.heading3().copyWith(fontWeight: FontWeight.w500),
              ),
              Row(
                children: DateRanges.all
                    .map(
                      (range) => GestureDetector(
                        onTap: () => controller.updateRange(range.index),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Obx(
                            () => Text(
                              range.text,
                              style: Styles.linkTextStyle(
                                  isUnderline: range.index ==
                                      controller.selectedRange.value,
                                  color: range.index ==
                                          controller.selectedRange.value
                                      ? AppColors.redColor
                                      : AppColors.textColor),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              )
            ],
          ),
        ),
        Container(
          height: 100,
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: SummaryItems.all.length,
              itemBuilder: (context, index) {
                final SummaryItem item = SummaryItems.all[index];
                return SummaryCard(item: item);
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.dailyActivity,
              style: Styles.heading3().copyWith(fontWeight: FontWeight.w500),
            ),
            GestureDetector(
              onTap: () => controller.updateShowDashboard(false),
              child: Text(
                AppStrings.checkAnalytics,
                style: Styles.linkTextStyle(isUnderline: true),
              ),
            ),
          ],
        ),
        const ActivityColumn(
          title: AppStrings.steps,
          value: '7,526',
          isNotSteps: false,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: Activities.all
              .map(
                (activity) => ActivityColumn(
                  title: activity.title,
                  value: activity.count,
                  unit: activity.unit,
                ),
              )
              .toList(),
        ),
        const DashboardChart(),
        const SizedBox(
          height: 100,
        ),
      ],
    );
  }
}
