import 'package:flutter/material.dart';
import 'package:weather_prediction_app/core/strings/strings_manger.dart';
import 'package:weather_prediction_app/core/theming/text_style_manger.dart';

class HelloAndNameText extends StatelessWidget {
  const HelloAndNameText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
              AppStrings.hello,
              style: AppStyles.font30BlueBold,
            ),
            Text("name",
              style: AppStyles.font20BlueBold
            ),
      ],
    );
  }
}