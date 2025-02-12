import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_prediction_app/core/di/dependency_injection.dart';
import 'package:weather_prediction_app/core/routing/routes.dart';
import 'package:weather_prediction_app/features/login_or_signup/ui/login_or_signup_screen.dart';
import 'package:weather_prediction_app/features/signup/bloc/auth_bloc.dart';
import 'package:weather_prediction_app/features/signup/ui/signup_screen.dart';
import 'package:weather_prediction_app/features/splash/ui/splaah_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {


    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => SplaahScreen());
      case Routes.loginOrSignup: 
        return MaterialPageRoute(builder: (_) => LoginOrSignupScreen());
      case Routes.signup: 
        return MaterialPageRoute(builder: (_) => BlocProvider(create: (context) => getIt<AuthBloc>(),child: SignupScreen(),)); 
      default :
        return MaterialPageRoute(builder: (_) => Scaffold(body: Center(child: Text('Not Found'))));
    }
  }
}
