import 'package:fiveer_e_learning/core/constants/colors.dart';
import 'package:flutter/material.dart';

class AuthButtonStyles {
  static ButtonStyle socailauthbuttonstyle() {
    return ButtonStyle(
      overlayColor: WidgetStatePropertyAll(
        const Color.fromARGB(21, 255, 170, 139),
      ),

      backgroundColor: WidgetStatePropertyAll(AppColors.buttonGreyColor),
      elevation: WidgetStatePropertyAll(0),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
