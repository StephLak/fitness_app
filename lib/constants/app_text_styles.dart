import 'package:fitness_app/constants/app_colors.dart';
import 'package:fitness_app/utils/app_utils.dart';
import 'package:flutter/material.dart';

class Styles {
  static TextStyle heading1({
    Color color = AppColors.textColor,
    FontWeight? fontWeight,
    double? size,
  }) {
    return TextStyle(
      fontSize: size ?? (isTabletSize() ? 48 : 30),
      fontWeight: fontWeight ?? FontWeight.w600,
      color: color,
    );
  }

  static TextStyle heading2({
    Color color = AppColors.textColor,
    FontWeight? fontWeight,
    double? size,
  }) {
    return TextStyle(
      fontSize: size ?? (isTabletSize() ? 32 : 20),
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  static TextStyle heading3({
    Color color = AppColors.textColor,
    double? size,
  }) {
    return TextStyle(
      fontSize: size ?? (isTabletSize() ? 24 : 18),
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  static TextStyle heading4({
    Color color = AppColors.textColor,
    double? size,
  }) {
    return TextStyle(
      fontSize: size ?? (isTabletSize() ? 18 : 16),
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  static TextStyle heading5({
    Color color = AppColors.textColor,
    double? size,
  }) {
    return TextStyle(
      fontSize: size ?? (isTabletSize() ? 16 : 13),
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  static TextStyle subHeading({
    Color color = AppColors.textColor,
    double? size,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return TextStyle(
      fontSize: size ?? (isTabletSize() ? 48 : 24),
      fontWeight: FontWeight.w500,
      color: color,
      fontStyle: fontStyle,
    );
  }

  static TextStyle body1({
    Color color = AppColors.textColor,
    double? size,
  }) {
    return TextStyle(
      fontSize: size ?? 16,
      fontWeight: FontWeight.normal,
      color: color,
    );
  }

  static TextStyle body2({
    Color color = AppColors.textColor,
    double? size,
  }) {
    return TextStyle(
      fontSize: size ?? 14,
      fontWeight: FontWeight.normal,
      color: color,
    );
  }

  static TextStyle lightText({
    Color color = AppColors.textColor,
    double? size,
  }) {
    return TextStyle(
      fontSize: size ?? 14,
      fontWeight: FontWeight.w300,
      color: color,
    );
  }

  static TextStyle linkTextStyle({
    double? size,
    Color color = AppColors.redColor,
    bool isUnderline = false,
  }) {
    return TextStyle(
      fontSize: size ?? (isTabletSize() ? 16 : 14),
      fontWeight: FontWeight.w400,
      color: color,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
      decorationColor: AppColors.redColor,
    );
  }

  static TextStyle labelStyle({
    double? size,
    Color color = Colors.white,
    bool isUnderline = false,
  }) {
    return TextStyle(
      fontSize: size ?? (isTabletSize() ? 16 : 18),
      fontWeight: FontWeight.w700,
      color: color,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
    );
  }
}
