import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_prediction_app/core/theming/color_manger.dart';
import 'package:weather_prediction_app/core/theming/text_style_manger.dart';

class CircleLabel extends StatelessWidget {
  const CircleLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35.r,
          backgroundColor: AppColors.blueColor,
          child: Text(
            "11",
            style: AppStyles.font30WhiteBold,
          ),
        ),
        Text(
          "data",
          style: AppStyles.font20BlueBold,
        ),
      ],
    );
  }
}
