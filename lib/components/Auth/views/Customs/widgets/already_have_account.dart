import 'package:fiveer_e_learning/components/Auth/views/home_auth_view.dart';
import 'package:fiveer_e_learning/core/constants/colors.dart';
import 'package:fiveer_e_learning/views/customs/styles/style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlreayHaveAccountText extends StatelessWidget {
  const AlreayHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          TextSpan(
            text: "Already have an account? \n",
            style: TextAppStyles.fontregular14.copyWith(
              color: AppColors.blackColor,
            ),
          ),
          TextSpan(
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    Get.to(HomeAuth());
                  },
            text: "Sign in",
            style: TextAppStyles.fontregular14.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
