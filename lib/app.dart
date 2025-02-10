import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_prediction_app/core/routing/app_router.dart';
import 'package:weather_prediction_app/core/routing/routes.dart';
import 'package:weather_prediction_app/core/theming/color_manger.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
       title: 'Weather Prediction App',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.whiteColor
        ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      onGenerateRoute: appRouter.onGenerateRoute,
      
      ),
    );
  }
}