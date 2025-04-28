import 'package:fiveer_e_learning/features/Auth/presentation/AuthStudent/views/active_student_account.dart';
import 'package:fiveer_e_learning/core/constants/Spacing.dart';
import 'package:fiveer_e_learning/core/constants/colors.dart';
import 'package:fiveer_e_learning/core/constants/diemainions.dart';
import 'package:fiveer_e_learning/core/logic/screen_sizer_helper.dart';
import 'package:fiveer_e_learning/features/Auth/presentation/views/Customs/widgets/header_auth_space.dart';
import 'package:fiveer_e_learning/core/customs/styles/style.dart';
import 'package:fiveer_e_learning/core/customs/widgets/screen_box.dart';
import 'package:fiveer_e_learning/core/customs/widgets/text_Button.dart';
import 'package:fiveer_e_learning/core/customs/widgets/text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnterStudentInfo extends StatelessWidget {
  const EnterStudentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBox(
      appBar: AppBar(backgroundColor: AppColors.whiteColor),
      body: CustomScrollView(
        physics:
            context.isLandescape
                ? ScrollPhysics()
                : NeverScrollableScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              Text(
                "Enter your details",
                textAlign: TextAlign.start,
                style: TextAppStyles.fontregular18.copyWith(
                  color: AppColors.blackColor,
                ),
              ),
              HeaderAuthSpace(),
              Column(
                spacing: Diemainions.space4,
                children: [
                  ...feilds.map((feild) {
                    return CustomTextFormFeild(
                      maxLines: 1,
                      hintText: feild.hintText,
                      obscureText: feild.obscureText,
                      keyboardType: feild.keyboardType,
                      controller: feild.controller,
                      validator: feild.validator,
                      textInputAction: feild.textInputAction,
                    );
                  }),
                  Space120(),

                  CustomTextButton(
                    text: "Continue",
                    onPressed: () {
                      Get.to(() => ActiveStudentAccount());
                    },
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class FeildInfo {
  final String hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;

  FeildInfo({
    this.keyboardType,
    this.controller,
    this.validator,
    this.textInputAction,
    required this.hintText,
    required this.obscureText,
  });
}

List<FeildInfo> feilds = [
  FeildInfo(
    hintText: "username",
    obscureText: false,
    keyboardType: TextInputType.name,
    controller: TextEditingController(),
    textInputAction: TextInputAction.next,
  ),

  FeildInfo(
    hintText: "email address",
    obscureText: false,
    keyboardType: TextInputType.emailAddress,
    controller: TextEditingController(),
    textInputAction: TextInputAction.next,
  ),
  FeildInfo(
    hintText: "password",
    obscureText: true,
    keyboardType: TextInputType.visiblePassword,
    controller: TextEditingController(),
    textInputAction: TextInputAction.next,
  ),
  FeildInfo(
    hintText: "confirm password",
    obscureText: true,
    keyboardType: TextInputType.visiblePassword,
    controller: TextEditingController(),
    textInputAction: TextInputAction.next,
  ),
];
