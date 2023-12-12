import 'package:flutter/material.dart';
import 'package:foodapp/common/app_colors.dart';

class AppTextStyle {
  static const primary = TextStyle(color: AppColors.textPrimary);

  static final primaryS18W600 = primary.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static final primaryS18W700 = primary.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
}
