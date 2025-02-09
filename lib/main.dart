import 'package:flutter/material.dart';
import 'package:weather_prediction_app/app.dart';
import 'package:weather_prediction_app/core/routing/app_router.dart';

void main() {
  runApp(WeatherApp(appRouter: AppRouter(),));
}

