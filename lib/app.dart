import 'package:flutter/material.dart';
import 'package:weather_prediction_app/core/routing/app_router.dart';
import 'package:weather_prediction_app/core/routing/routes.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    // title: 'Weather Prediction App',
    // theme: ThemeData(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.splash,
    onGenerateRoute: appRouter.onGenerateRoute,

    );
  }
}