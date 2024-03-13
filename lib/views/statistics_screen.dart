import 'package:fitness_app/constants/app_colors.dart';
import 'package:fitness_app/constants/app_strings.dart';
import 'package:fitness_app/constants/app_text_styles.dart';
import 'package:fitness_app/controllers/main_controller.dart';
import 'package:fitness_app/shared/charts/dashboard_chart.dart';
import 'package:fitness_app/shared/custom_widgets/header_tile.dart';
import 'package:fitness_app/shared/custom_widgets/month_ranges_view.dart';
import 'package:fitness_app/utils/app_utils.dart';
import 'package:fitness_app/view_models/stat_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.put(MainController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderTile(
            title: AppStrings.reports, subtitle: AppStrings.statistics),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            children: [0, 1, 2, 3, 4, 5, 6].map((date) {
              int mondayValue = controller.getRecentMonday();
              int daysInMonth = controller.daysInMonth();
              int dateValue = date + mondayValue;
              final value =
                  dateValue > daysInMonth ? dateValue - daysInMonth : dateValue;
              return Expanded(
                child: GestureDetector(
                  onTap: () => controller.selectedDay(date),
                  child: Column(
                    children: [
                      Text(
                        getDayName(date),
                        style: Styles.body2(size: 14),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Obx(
                        () => controller.selectedDay.value == date
                            ? Container(
                                height: 40,
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.orangeColor,
                                ),
                                child: Center(
                                  child: Text(
                                    value.toString(),
                                    style: Styles.body1()
                                        .copyWith(fontWeight: FontWeight.w600),
                                  ),
                                ),
                              )
                            : SizedBox(
                                height: 40,
                                child: Center(
                                  child: Text(
                                    value.toString(),
                                    style: Styles.body1()
                                        .copyWith(fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        Container(
          height: 100,
          margin: const EdgeInsets.only(top: 20, bottom: 20),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: StatItems.all.length,
            itemBuilder: (context, index) {
              StatItem item = StatItems.all[index];
              return Container(
                height: 100,
                width: 180,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: item.color,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text(
                          item.count,
                          style: Styles.heading2(size: 24),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            item.unit,
                            style: Styles.heading4(),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      item.text,
                      style: Styles.body2(size: 12),
                    ),
                    Image.asset(
                      item.image,
                      height: index == 2 ? 35 : 40,
                      fit: BoxFit.cover,
                      color: item.index != 2
                          ? AppColors.redColor
                          : AppColors.whiteColor,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Text(
          AppStrings.summaryReport,
          style: Styles.heading3().copyWith(fontWeight: FontWeight.w500),
        ),
        Container(
          height: 80,
          margin: const EdgeInsets.only(top: 15),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Reports.all.length,
            itemBuilder: (context, index) {
              StatItem item = Reports.all[index];
              return Container(
                height: 80,
                width: 170,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.faintedGrey,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text(
                          item.count,
                          style: Styles.heading2(size: 24, color: item.color),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            item.unit,
                            style: Styles.body1(color: item.color),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          item.image,
                          height: 14,
                          fit: BoxFit.cover,
                          color: AppColors.whiteColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            item.text,
                            style: Styles.body2(size: 12),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        const MonthRangesView(),
        const DashboardChart(),
        const SizedBox(
          height: 100,
        ),
      ],
    );
  }
}
