import 'package:flutter/material.dart';
import 'package:weather_prediction_app/core/routing/routes.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {


    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => Scaffold(body: Center(child: Text('Splash'))));
      default :
        return MaterialPageRoute(builder: (_) => Scaffold(body: Center(child: Text('Not Found'))));
    }
  }
}
