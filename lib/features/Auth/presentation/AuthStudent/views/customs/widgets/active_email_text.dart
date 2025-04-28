import 'package:fiveer_e_learning/core/constants/colors.dart';
import 'package:fiveer_e_learning/core/customs/styles/style.dart';
import 'package:flutter/material.dart';

class ActiveEmailText extends StatelessWidget {
  const ActiveEmailText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
    
      TextSpan(
        children: [
          TextSpan(
            text: 'Check your email \n',
            style: TextAppStyles.fontregular26.copyWith(
              color: AppColors.blackColor,
            ),
          ),
          TextSpan(
            text: 'We’ve sent a password recover instruction \n',
            style: TextAppStyles.fontregular14.copyWith(
              color: AppColors.foucusGreyColor,
            ),
          ),
          TextSpan(
            text: "to your email ",
            style: TextAppStyles.fontregular14.copyWith(
              color: AppColors.foucusGreyColor,
            ),
          ),
        ],
      ),
    );
  }
}
