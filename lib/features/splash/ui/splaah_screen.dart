import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_prediction_app/core/assets/assets_manger.dart';
import 'package:weather_prediction_app/core/routing/routes.dart';


class SplaahScreen extends StatefulWidget {
  const SplaahScreen({super.key});

  @override
  State<SplaahScreen> createState() => _SplaahScreenState();
}

class _SplaahScreenState extends State<SplaahScreen> {
  
  // ignore: unused_field
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(seconds: 3), _goNext);
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, Routes.loginOrSignup);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(AppAssets.logo, width: 200.0.w, height: 200.0.h,),
      ),
    );
  }
}