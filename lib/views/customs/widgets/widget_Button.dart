import 'package:fiveer_e_learning/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomWidgetButton extends StatelessWidget {
  final Widget widget;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  const CustomWidgetButton({
    super.key,
    required this.widget,
    this.onPressed,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style:
          style ??
          ButtonStyle(
            overlayColor: WidgetStatePropertyAll(
              const Color.fromARGB(21, 255, 170, 139),
            ),
            backgroundColor: WidgetStatePropertyAll(AppColors.primaryColor),
            elevation: WidgetStatePropertyAll(0),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                side: const BorderSide(color: AppColors.primaryColor, width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
      child: AspectRatio(
        aspectRatio: MediaQuery.of(context).size.width / 40,
        child: widget,
      ),
    );
  }
}
