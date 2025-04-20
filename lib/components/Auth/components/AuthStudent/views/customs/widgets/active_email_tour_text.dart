import 'package:fiveer_e_learning/core/constants/colors.dart';
import 'package:fiveer_e_learning/views/customs/styles/style.dart';
import 'package:flutter/material.dart';

class TourActiveEmailText extends StatelessWidget {
  const TourActiveEmailText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          TextSpan(
            text: 'Didn’t get any email? Check your spam  \n',
            style: TextAppStyles.fontregular12.copyWith(
              color: AppColors.foucusGreyColor,
            ),
          ),
          TextSpan(
            text: 'folder or try again with a valid email.',
            style: TextAppStyles.fontregular12.copyWith(
              color: AppColors.foucusGreyColor,
            ),
          ),
        ],
      ),
    );
  }
}
