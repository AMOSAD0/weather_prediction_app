import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_prediction_app/core/helper/app_regex.dart';
import 'package:weather_prediction_app/core/helper/spacing.dart';
import 'package:weather_prediction_app/core/strings/strings_manger.dart';
import 'package:weather_prediction_app/core/theming/color_manger.dart';
import 'package:weather_prediction_app/core/theming/text_style_manger.dart';
import 'package:weather_prediction_app/core/widgets/public_button.dart';
import 'package:weather_prediction_app/core/widgets/public_text_form_field.dart';
import 'package:weather_prediction_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:weather_prediction_app/features/auth/presentation/bloc/auth_event.dart';
import 'package:weather_prediction_app/features/auth/presentation/bloc/auth_state.dart';
import 'package:weather_prediction_app/features/auth/presentation/ui/widgets/title_signup.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController fullnameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: SafeArea(
        child: Scaffold(
          body: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is AuthLoading) {
                //show loading
                showDialog(
                  context: context,
                  builder: (context) => const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.blueColor,
                    ),
                  ),
                );
              } else if (state is AuthFailure) {
                //show error
                Navigator.of(context).pop();
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  icon: const Icon(
                    Icons.error_outline,
                    color: Colors.red,
                  ),
                  content: Text(state.message),
                ),
              );
              } else if (state is AuthSuccess) {
                //navigate to home
                Navigator.of(context).pop();
                showDialog(
                  context: context,
                  builder:  (context) => AlertDialog(
                    icon: const Icon(
                      Icons.check_circle_outline,
                      color: Colors.green,
                    ),
                    // Todo : replace text content with the home screen
                    content: Center(child: Text("Welcome, ${state.user.displayName}!")),
                  ),);
              }
            },
            builder: (context, state) => SingleChildScrollView(
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
                      controller: fullnameController,
                      validator: (value) {
                        // ignore: unnecessary_null_comparison
                        if (value!.isEmpty || value == null) {
                          return AppStrings.pleaseEnterYourFullname;
                        } else if (value.length < 4) {
                          return AppStrings.fullnamwMustBeAtLeast4Characters;
                        }
                        return null;
                      },
                    ),
                    //email
                    PublicTextFormField(
                      label: AppStrings.email,
                      hint: AppStrings.email,
                      controller: emailController,
                      validator: (value) {
                        // ignore: unnecessary_null_comparison
                        if (value!.isEmpty || value == null) {
                          return AppStrings.pleaseEnterYourEmail;
                        } else if (!AppRegex.isEmailValid(value)) {
                          return AppStrings.pleaseEnterValidEmail;
                        }
                        return null;
                      },
                    ),
                    //password
                    PublicTextFormField(
                      label: AppStrings.password,
                      hint: AppStrings.password,
                      isPassword: true,
                      showSuffixIcon: true,
                      controller: passwordController,
                      validator: (value) {
                        // ignore: unnecessary_null_comparison
                        if (value!.isEmpty || value == null) {
                          return AppStrings.pleaseEnterYourPassword;
                        } else if (value.length < 8) {
                          return AppStrings.passwordMustBeAtLeast8Characters;
                        }
                        return null;
                      },
                    ),

                    verticalSpace(30),
                    PublicButton(
                      title: AppStrings.signup,
                      style: AppStyles.font20WhiteBold,
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          context.read<AuthBloc>().add(
                                SignUpEvent(
                                  fullName: fullnameController.text,
                                  email:emailController.text.trim(),
                                  password: passwordController.text,
                                ),
                              );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
