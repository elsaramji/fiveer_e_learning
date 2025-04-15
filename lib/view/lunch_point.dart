import 'package:fiveer_e_learning/view/main_app_view.dart';
import 'package:flutter/material.dart';

class FiveerLunchPoint extends StatelessWidget {
  const FiveerLunchPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fiveer Lunch Point',

      home: MainAppView(),
    );
  }
}
