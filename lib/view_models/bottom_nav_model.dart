import 'package:fitness_app/constants/app_images.dart';

class BottomNav {
  final int index;
  final String icon;

  BottomNav({
    required this.index,
    required this.icon,
  });
}

class BottomNavs {
  static List<BottomNav> all = [
    BottomNav(index: 1, icon: AppImages.settingsIcon),
    BottomNav(index: 2, icon: AppImages.statsIcon),
    BottomNav(index: 3, icon: AppImages.profileIcon),
  ];
}
