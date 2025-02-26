import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_prediction_app/core/helper/spacing.dart';
import 'package:weather_prediction_app/core/theming/color_manger.dart';
import 'package:weather_prediction_app/features/auth/data/model/user_model.dart';
import 'package:weather_prediction_app/features/auth/presentation/cubit_local_data/local_data_cubit.dart';
import 'package:weather_prediction_app/features/home/presentation/ui/widgets/circle_label.dart';
import 'package:weather_prediction_app/features/home/presentation/ui/widgets/day_container.dart';
import 'package:weather_prediction_app/features/home/presentation/ui/widgets/hello_and_name_text.dart';
import 'package:weather_prediction_app/features/home/presentation/ui/widgets/temperature.dart';
import 'package:weather_prediction_app/features/location/bloc/location_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  UserModel? user;
  String? country;
   _getdata()async{
      user = await context.read<LocalDataCubit>().getCacheUser();
     country = await context.read<LocationBloc>().fetchLocation();
   }

   @override
  void initState(){
    super.initState();
    _getdata();
  }


  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(country!),
          actions: [
            Text(user!.email!)
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(alignment: Alignment.centerLeft, child: HelloAndNameText()),
              verticalSpace(30),
              Center(
                child: Container(
                  height: 80.h,
                  width: 280.w,
                  decoration: BoxDecoration(
                    color: AppColors.lightGreyColor,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: DayContainer(),
                    ),
                    itemCount: 3,
                  ),
                ),
              ),
              verticalSpace(40),
              Temperature(),
              verticalSpace(60),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleLabel(),
                  CircleLabel(),
                  CircleLabel(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
