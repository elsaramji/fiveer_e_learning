import 'package:fiveer_e_learning/core/constants/colors.dart';
import 'package:fiveer_e_learning/views/customs/styles/style.dart';
import 'package:flutter/material.dart';

class WelcomeAuthText extends StatelessWidget {
  const WelcomeAuthText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          TextSpan(
            text: 'Welcome back!\n',
            style: TextAppStyles.fontregular26.copyWith(
              color: AppColors.blackColor,
            ),
          ),
          TextSpan(
            text: 'Enter your office',

            style: TextAppStyles.fontregular26.copyWith(
              color: AppColors.blackColor,
            ),
          ),
        ],
      ),
    );
  }
}
