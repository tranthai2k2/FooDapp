import 'package:chat_app_demo/commons/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const _baseTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    color: AppColors.blackColor,
    fontStyle: FontStyle.normal,
    height: 1.6,
  );

  static final TextStyle normal = _baseTextStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle primaryS10Normal = _baseTextStyle.copyWith(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimaryColor,
  );

  static final TextStyle primaryS10SemiBold = _baseTextStyle.copyWith(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimaryColor,
  );

  static final TextStyle grayS12Normal = _baseTextStyle.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textGrayColor,
  );

  static final TextStyle primaryS14Normal = _baseTextStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimaryColor,
  );

  static final TextStyle primaryS14SemiBold = _baseTextStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimaryColor,
  );

  static final TextStyle whiteS14Bold = _baseTextStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.whiteColor,
  );

  static final TextStyle primaryS16SemiBold = _baseTextStyle.copyWith(
    color: AppColors.textPrimaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle primaryS18SemiBold = _baseTextStyle.copyWith(
    color: AppColors.textPrimaryColor,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle primaryS24Bold = _baseTextStyle.copyWith(
    color: AppColors.textPrimaryColor,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle primaryS32Bold = _baseTextStyle.copyWith(
    color: AppColors.textPrimaryColor,
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );
}
