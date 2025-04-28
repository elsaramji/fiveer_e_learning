import 'package:fiveer_e_learning/core/constants/colors.dart';
import 'package:fiveer_e_learning/core/customs/styles/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LatterActiveText extends StatelessWidget {
  const LatterActiveText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(16.w),
        child: Text(
          "Will do it later",
          textAlign: TextAlign.center,
    
          style: TextAppStyles.fontregular14.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
