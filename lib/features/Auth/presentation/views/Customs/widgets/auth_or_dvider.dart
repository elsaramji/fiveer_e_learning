import 'package:fiveer_e_learning/core/constants/colors.dart';
import 'package:fiveer_e_learning/core/customs/styles/style.dart';
import 'package:flutter/material.dart';

class AuthORDvider extends StatelessWidget {
  const AuthORDvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "or",
        style: TextAppStyles.fontregular18.copyWith(
          color: AppColors.blackColor,
        ),
      ),
    );
  }
}
