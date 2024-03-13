import 'package:fitness_app/constants/app_strings.dart';

class Activity {
  final int index;
  final String title;
  final String count;
  final String unit;

  Activity({
    required this.index,
    required this.title,
    required this.count,
    required this.unit,
  });
}

class Activities {
  static List<Activity> all = [
    Activity(
      index: 1,
      title: AppStrings.distance,
      count: '9.4',
      unit: AppStrings.km,
    ),
    Activity(
      index: 2,
      title: AppStrings.calories,
      count: '450',
      unit: AppStrings.kcal,
    ),
    Activity(
      index: 3,
      title: AppStrings.time,
      count: '1:02',
      unit: AppStrings.hrs,
    ),
  ];
}
