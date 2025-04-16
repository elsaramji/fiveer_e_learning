
import 'package:fiveer_e_learning/core/constants/colors.dart';
import 'package:fiveer_e_learning/core/constants/diemainions.dart';
import 'package:fiveer_e_learning/views/customs/styles/style.dart';
import 'package:flutter/material.dart';

class SocialButtonWidget extends StatelessWidget {
  final String text, imagepath;
  const SocialButtonWidget({
    super.key,
    required this.text,
    required this.imagepath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(imagepath),
        SizedBox(width: Diemainions.space2),
        Text(
          text,
          style: TextAppStyles.fontregular16.copyWith(
            color: AppColors.blackColor,
          ),
        ),
      ],
    );
  }
}
