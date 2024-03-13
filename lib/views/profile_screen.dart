import 'package:fitness_app/constants/app_colors.dart';
import 'package:fitness_app/constants/app_images.dart';
import 'package:fitness_app/constants/app_strings.dart';
import 'package:fitness_app/constants/app_text_styles.dart';
import 'package:fitness_app/shared/custom_widgets/user_detail_card.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '# 12 ${AppStrings.running}',
          style: Styles.heading5(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AppStrings.lurch, style: Styles.heading2(size: 22)),
            Image.asset(
              AppImages.love,
              height: 30,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            children: [
              Image.asset(
                AppImages.usa,
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(AppStrings.usa, style: Styles.heading4()),
              ),
            ],
          ),
        ),
        const Row(
          children: [
            UserDetailCard(title: AppStrings.age, value: '25'),
            SizedBox(
              width: 15,
            ),
            UserDetailCard(title: AppStrings.height, value: '1.92m'),
            SizedBox(
              width: 15,
            ),
            UserDetailCard(title: AppStrings.record, value: '1500m'),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.aboutMe,
                style: Styles.heading3(),
              ),
              Text(AppStrings.aboutMeText,
                  style: Styles.body2(
                      color: AppColors.textColor.withOpacity(0.8))),
            ],
          ),
        ),
        Text(
          AppStrings.playerStats,
          style: Styles.heading3(),
        ),
        const StatContainer(title: AppStrings.goalsAchieved, value: '145'),
        const StatContainer(
          title: AppStrings.maxSpeed,
          value: '29.8 ',
          unit: AppStrings.kmh,
        ),
        const StatContainer(title: AppStrings.noOfAward, value: '84'),
      ],
    );
  }
}

class StatContainer extends StatelessWidget {
  const StatContainer({
    super.key,
    required this.title,
    required this.value,
    this.unit = '',
  });

  final String title;
  final String value;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.only(bottom: 10, left: 15, right: 15),
      margin: const EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.faintedGrey),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Styles.body2(),
          ),
          Row(
            children: [
              Text(
                value,
                style: Styles.heading3(color: AppColors.orangeColor),
              ),
              Text(
                unit,
                style: Styles.heading5(color: AppColors.orangeColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
