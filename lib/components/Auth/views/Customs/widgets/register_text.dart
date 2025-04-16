import 'package:fiveer_e_learning/components/Auth/components/AuthStudent/views/auth_as_student.dart';
import 'package:fiveer_e_learning/components/Auth/components/AuthTecher/views/auth_as_techer.dart';
import 'package:fiveer_e_learning/core/constants/colors.dart';
import 'package:fiveer_e_learning/views/customs/styles/style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterText extends StatelessWidget {
  const RegisterText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          TextSpan(
            text: 'Register as a ',
            style: TextAppStyles.fontregular14.copyWith(
              color: AppColors.blackColor,
            ),
          ),
          TextSpan(
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    Get.to(const AuthAsStudent());
                  },
            text: ' Student',
            style: TextAppStyles.fontregular14.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          TextSpan(
            text: ' or as a ',
            style: TextAppStyles.fontregular14.copyWith(
              color: AppColors.blackColor,
            ),
          ),
          TextSpan(
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    Get.to(const AuthAsTecher());
                  },
            text: ' Teacher',
            style: TextAppStyles.fontregular14.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
