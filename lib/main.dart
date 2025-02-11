import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:weather_prediction_app/app.dart';
import 'package:weather_prediction_app/core/routing/app_router.dart';
import 'package:weather_prediction_app/firebase_options.dart';

void main() async {
 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
 );
  runApp(WeatherApp(
    appRouter: AppRouter(),
  ));
}
