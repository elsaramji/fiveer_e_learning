import 'package:fiveer_e_learning/core/constants/colors.dart';
import 'package:fiveer_e_learning/views/main_app_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FiveerLunchPoint extends StatelessWidget {
  const FiveerLunchPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.whiteColor,
        primaryColor: AppColors.primaryColor,
        indicatorColor: AppColors.primaryColor,
        
        focusColor: AppColors.primaryColor,
      ),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      title: 'Fiveer Lunch Point',

      home: MainAppView(),
    );
  }
}
