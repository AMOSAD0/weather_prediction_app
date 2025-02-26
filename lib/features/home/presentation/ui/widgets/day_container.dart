import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_prediction_app/core/theming/color_manger.dart';
import 'package:weather_prediction_app/core/theming/text_style_manger.dart';

class DayContainer extends StatelessWidget {
  const DayContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      child: Container(
        height: 75.h,
        width: 55.w,
        decoration: BoxDecoration(
          color: AppColors.lightGreyColor,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Fri",
              style: AppStyles.font16BlueBold,
            ),
            Text(
              "21",
              style: AppStyles.font16BlueBold,
            )
          ],
        ),
      ),
    );
  }
}

List listDays=["Fri","Sat","Sun"];
