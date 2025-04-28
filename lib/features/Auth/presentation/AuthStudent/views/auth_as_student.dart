import 'package:fiveer_e_learning/features/Auth/presentation/AuthStudent/views/customs/widgets/welecom_signup_student.dart';
import 'package:fiveer_e_learning/features/Auth/presentation/AuthStudent/views/enter_student_info.dart';

import 'package:fiveer_e_learning/core/constants/Spacing.dart';
import 'package:fiveer_e_learning/core/constants/assets.dart';
import 'package:fiveer_e_learning/core/constants/colors.dart';
import 'package:fiveer_e_learning/core/constants/diemainions.dart';
import 'package:fiveer_e_learning/core/logic/screen_sizer_helper.dart';
import 'package:fiveer_e_learning/features/Auth/presentation/views/Customs/styles/button_styles.dart';
import 'package:fiveer_e_learning/features/Auth/presentation/views/Customs/widgets/already_have_account.dart';
import 'package:fiveer_e_learning/features/Auth/presentation/views/Customs/widgets/auth_or_dvider.dart';
import 'package:fiveer_e_learning/features/Auth/presentation/views/Customs/widgets/social_auth_button.dart';
import 'package:fiveer_e_learning/core/customs/styles/style.dart';
import 'package:fiveer_e_learning/core/customs/widgets/screen_box.dart';
import 'package:fiveer_e_learning/core/customs/widgets/widget_Button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthAsStudent extends StatelessWidget {
  const AuthAsStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBox(
      body: CustomScrollView(
        physics:
            context.isLandescape
                ? ScrollPhysics()
                : NeverScrollableScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              Space60(),
              WelecomeSignUpStudentText(),
              Space60(),
              CustomWidgetButton(
                style: AuthButtonStyles.socailauthbuttonstyle(),
                onPressed: () {
                  // Handle login with email
                },
                widget: SocialButtonWidget(
                  text: "Sign up with Google",
                  imagepath: Assets.assetsImagesGoogleIcon,
                ),
              ),
              SizedBox(height: Diemainions.space2),
              CustomWidgetButton(
                style: AuthButtonStyles.socailauthbuttonstyle(),
                onPressed: () {
                  // Handle login with email
                },
                widget: SocialButtonWidget(
                  text: "Sign up with Facebook",
                  imagepath: Assets.assetsImagesFacebookIcon,
                ),
              ),
              SizedBox(height: Diemainions.space4),
              AuthORDvider(),
              SizedBox(height: Diemainions.space4),
              CustomWidgetButton(
                onPressed: () {
                  // Handle login with email
                  Get.to(EnterStudentInfo());
                },
                widget: Center(
                  child: Text(
                    "Sign up with email",
                    style: TextAppStyles.fontregular16.copyWith(
                      color: AppColors.blackColor,
                    ),
                  ),
                ),
                style: AuthButtonStyles.socailauthbuttonstyle(),
              ),
              SizedBox(height: Diemainions.space8),
              Text(
                "By signing up you are agreed with our\n friendly terms and condition.",
                textAlign: TextAlign.center,
                style: TextAppStyles.fontregular14.copyWith(
                  color: AppColors.blackColor,
                ),
              ),
              SizedBox(height: Diemainions.space8),
              AlreayHaveAccountText(),
            ]),
          ),
        ],
      ),
    );
  }
}
