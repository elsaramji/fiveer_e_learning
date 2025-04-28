import 'package:fiveer_e_learning/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormFeildOutLine extends StatelessWidget {
  final bool obscureText;
  final String hintText;
  final Widget lapel;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Widget? prefixIcon;
  final Widget? prefix;
  final Widget? suffixIcon;
  final int? maxLines;
  final int? maxLength;
  const CustomTextFormFeildOutLine({
    super.key,
    required this.obscureText,
    required this.hintText,
    this.validator,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines,
    this.maxLength,
    this.prefix,
    required this.lapel,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,

      maxLines: maxLines,
      maxLength: maxLength,
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      cursorColor: AppColors.lightGreyColor,

      decoration: InputDecoration(
        hintText: hintText,
        label: lapel,

        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGreyColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGreyColor),
        ),
      ),
    );
  }
}
