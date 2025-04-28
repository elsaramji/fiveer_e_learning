import 'package:fiveer_e_learning/features/splash/presentation/view/splash_view.dart';
import 'package:fiveer_e_learning/core/logic/screen_sizer_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainAppView extends StatelessWidget {
  const MainAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: context.isLandescape ? Size(852, 393) : Size(393, 852),
      child: SplashView(),
    );
  }
}
