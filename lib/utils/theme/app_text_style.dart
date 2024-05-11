import 'package:flutter/material.dart';
import 'package:foodie_app/utils/theme/app_colors.dart';

class AppTextStyle {
  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      color: AppColors.darkBlue,
      fontSize: 16,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold14(context) {
    return TextStyle(
      color: AppColors.silver,
      fontSize: 14,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold12(context) {
    return TextStyle(
      color: AppColors.darkBlue,
      fontSize: 12,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold14(context) {
    return TextStyle(
      color: AppColors.white,
      fontSize: 17,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium10(context) {
    return TextStyle(
      color: AppColors.lightGray,
      fontSize: 10,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleRegular13(context) {
    return TextStyle(
      color: AppColors.lightGray,
      fontSize: 13,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    );
  }
}
