
import 'package:fiveer_e_learning/core/constants/colors.dart';
import 'package:fiveer_e_learning/core/customs/styles/style.dart';
import 'package:flutter/material.dart';

class WelecomeSignUpStudentText extends StatelessWidget {
  const WelecomeSignUpStudentText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          TextSpan(
            text: 'Welcome!\n',
            style: TextAppStyles.fontregular26.copyWith(
              color: AppColors.blackColor,
            ),
          ),
          TextSpan(
            text: "Sign up as a",
            style: TextAppStyles.fontregular26.copyWith(
              color: AppColors.blackColor,
            ),
          ),
          TextSpan(
            text: ' Student',
            style: TextAppStyles.fontregular26.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
