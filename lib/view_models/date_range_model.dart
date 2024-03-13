import 'package:fitness_app/constants/app_strings.dart';

class DateRange {
  final int index;
  final String text;

  DateRange({
    required this.index,
    required this.text,
  });
}

class DateRanges {
  static List<DateRange> all = [
    DateRange(index: 1, text: AppStrings.week),
    DateRange(index: 2, text: AppStrings.month),
    DateRange(index: 3, text: AppStrings.year),
  ];
}

class StatMonthRanges {
  static List<DateRange> all = [
    DateRange(index: 1, text: AppStrings.month1),
    DateRange(index: 2, text: AppStrings.month2),
    DateRange(index: 3, text: AppStrings.month3),
    DateRange(index: 4, text: AppStrings.month4),
  ];
}
