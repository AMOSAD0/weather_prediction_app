import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_prediction_app/core/theming/color_manger.dart';

class AppStyles {

  static TextStyle font20WhiteBold = TextStyle(
    fontSize: 20.sp,
    color: AppColors.whiteColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle font30BlueBold = TextStyle(
    fontSize: 30.sp,
    color: AppColors.blueColor,
    fontWeight: FontWeight.bold
  );

  static TextStyle font14BlueNormal = TextStyle(
    fontSize: 14.sp,
    color: AppColors.blueColor,
    fontWeight: FontWeight.normal
  );

  static TextStyle font14GreyNormal = TextStyle(
    fontSize: 14.sp,
    color: AppColors.greyColor,
    fontWeight: FontWeight.normal
  );

  static TextStyle font16BlueBold = TextStyle(
    fontSize: 16.sp,
    color: AppColors.blueColor,
    fontWeight: FontWeight.bold
  );
}