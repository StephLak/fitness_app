import 'package:fitness_app/constants/app_colors.dart';
import 'package:fitness_app/constants/app_text_styles.dart';
import 'package:fitness_app/controllers/main_controller.dart';
import 'package:fitness_app/view_models/date_range_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MonthRangesView extends StatelessWidget {
  const MonthRangesView({super.key, this.hasTopPadding = true});

  final bool hasTopPadding;

  @override
  Widget build(BuildContext context) {
    final MainController controller = Get.put(MainController());
    return Padding(
      padding: EdgeInsets.only(top: hasTopPadding ? 30 : 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: StatMonthRanges.all
            .map(
              (range) => GestureDetector(
                onTap: () => controller.updateRange(range.index),
                child: Obx(
                  () => Text(
                    range.text,
                    style: Styles.linkTextStyle(
                        size: 12,
                        isUnderline:
                            range.index == controller.selectedRange.value,
                        color: range.index == controller.selectedRange.value
                            ? AppColors.redColor
                            : AppColors.textColor),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
