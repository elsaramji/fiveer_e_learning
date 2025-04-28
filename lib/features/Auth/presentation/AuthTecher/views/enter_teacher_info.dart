import 'package:fiveer_e_learning/core/constants/Spacing.dart';
import 'package:fiveer_e_learning/core/constants/colors.dart';
import 'package:fiveer_e_learning/core/customs/styles/style.dart';
import 'package:fiveer_e_learning/core/customs/widgets/screen_box.dart';
import 'package:fiveer_e_learning/core/customs/widgets/text_form_feild_outline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnterTeacherInfo extends StatelessWidget {
  const EnterTeacherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBox(
      appBar: AppBar(backgroundColor: AppColors.whiteColor),
      body: CustomScrollView(
        physics: ScrollPhysics(),
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
              Space40(),
              Container(
                padding: EdgeInsets.only(bottom: 16.h),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: CustomTextFormFeildOutLine(
                            lapel: LapeloutLineFeild(text: "First name"),

                            textInputAction: TextInputAction.next,

                            maxLines: 1,
                            obscureText: false,
                            hintText: "Your name",
                          ),
                        ),
                        SizedBox(width: 20.w),
                        Flexible(
                          child: CustomTextFormFeildOutLine(
                            textInputAction: TextInputAction.next,
                            lapel: LapeloutLineFeild(text: "Last name"),
                            maxLines: 1,
                            obscureText: false,
                            hintText: "Your last name",
                          ),
                        ),
                      ],
                    ),
                    Space20(),
                    CustomTextFormFeildOutLine(
                      suffixIcon: Icon(Icons.email),
                      obscureText: false,
                      hintText: "yourmail@gmail.com",
                      lapel: LapeloutLineFeild(text: "Email"),
                      textInputAction: TextInputAction.next,
                      maxLines: 1,
                      keyboardType: TextInputType.emailAddress,
                    ),

                    Space20(),
                    CustomTextFormFeildOutLine(
                      hintText: "password",
                      lapel: LapeloutLineFeild(text: "Password"),
                      obscureText: true,
                      textInputAction: TextInputAction.next,
                      maxLines: 1,
                      keyboardType: TextInputType.visiblePassword,
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    ),
                    Space20(),
                    DropdownButtonHideUnderline(
                      child: CustomTextFormFeildOutLine(
                        lapel: LapeloutLineFeild(text: "Select your country"),
                        obscureText: false,
                        hintText: "Select your country",
                        textInputAction: TextInputAction.next,
                        maxLines: 1,
                        keyboardType: TextInputType.streetAddress,
                        suffixIcon: Icon(Icons.arrow_drop_down),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class LapeloutLineFeild extends StatelessWidget {
  final String text;
  const LapeloutLineFeild({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: text,
            style: TextAppStyles.fontbold16.copyWith(
              color: AppColors.blackColor,
            ),
          ),
          TextSpan(
            text: ' *',
            style: TextAppStyles.fontbold16.copyWith(color: AppColors.redColor),
          ),
        ],
      ),
    );
  }
}
