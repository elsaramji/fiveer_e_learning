import 'package:fiveer_e_learning/core/constants/diemainions.dart';
import 'package:fiveer_e_learning/core/logic/screen_sizer_helper.dart';
import 'package:flutter/material.dart';

class ScreenBox extends StatelessWidget {
  final AppBar? appBar;
  final Widget? body;
  final Widget? bottomNavigationBar;
  const ScreenBox({
    super.key,
    this.appBar,
    this.body,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Container(
        width:
            context.isLandescape ? context.screenHeight : context.screenWidth,
        height:
            context.isLandescape ? context.screenWidth : context.screenHeight,
        margin: EdgeInsets.symmetric(horizontal: Diemainions.space4),
        child: body,
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
