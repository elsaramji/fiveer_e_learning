import 'package:fiveer_e_learning/core/constants/colors.dart';
import 'package:fiveer_e_learning/core/customs/styles/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? color;
  const CustomTextButton({
    super.key,
    required this.text,
    this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        overlayColor: WidgetStatePropertyAll(
          const Color.fromARGB(21, 255, 170, 139),
        ),
        backgroundColor: WidgetStatePropertyAll(
          color ?? AppColors.primaryColor,
        ),
        elevation: WidgetStatePropertyAll(0),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            side: const BorderSide(color: AppColors.primaryColor, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      child: SizedBox(
        height: 65.h,
        child: Center(
          child: Text(
            text,
            style: TextAppStyles.fontregular16.copyWith(
              color:
                  color == null ? AppColors.whiteColor : AppColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
