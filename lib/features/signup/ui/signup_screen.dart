import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_prediction_app/core/helper/spacing.dart';
import 'package:weather_prediction_app/core/strings/strings_manger.dart';
import 'package:weather_prediction_app/core/theming/text_style_manger.dart';
import 'package:weather_prediction_app/core/widgets/public_button.dart';
import 'package:weather_prediction_app/core/widgets/public_text_form_field.dart';
import 'package:weather_prediction_app/features/signup/ui/widgets/title_signup.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpace(80),
                TitleSignup(),
                verticalSpace(24),

                //fullname
                PublicTextFormField(
                  label: AppStrings.fullname,
                  hint: AppStrings.fullname,
                  validator: (value) {},
                ),
                //email
                PublicTextFormField(
                  label: AppStrings.email,
                  hint: AppStrings.email,
                  validator: (value) {},
                ),
                //password
                PublicTextFormField(
                  label: AppStrings.password,
                  hint: AppStrings.password,
                  validator: (value) {},
                ),

                verticalSpace(30),
                PublicButton(
                  title: AppStrings.signup,
                  style: AppStyles.font20WhiteBold,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
