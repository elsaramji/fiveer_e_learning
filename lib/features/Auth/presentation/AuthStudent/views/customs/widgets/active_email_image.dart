import 'package:fiveer_e_learning/core/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActiveEmailImage extends StatelessWidget {
  const ActiveEmailImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 232.h,
      width: 255.w,
      child: Image.asset(
        Assets.assetsImagesChecking,
        fit: BoxFit.contain,
      ),
    );
  }
}

