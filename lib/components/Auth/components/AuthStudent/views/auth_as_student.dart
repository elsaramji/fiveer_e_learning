import 'package:fiveer_e_learning/components/Auth/views/Customs/styles/button_styles.dart';
import 'package:fiveer_e_learning/components/Auth/views/Customs/widgets/auth_or_dvider.dart';
import 'package:fiveer_e_learning/components/Auth/views/Customs/widgets/header_auth_space.dart';
import 'package:fiveer_e_learning/components/Auth/views/Customs/widgets/social_auth_button.dart';
import 'package:fiveer_e_learning/components/Auth/views/home_auth_view.dart';
import 'package:fiveer_e_learning/core/constants/assets.dart';
import 'package:fiveer_e_learning/core/constants/colors.dart';
import 'package:fiveer_e_learning/core/constants/diemainions.dart';
import 'package:fiveer_e_learning/views/customs/styles/style.dart';
import 'package:fiveer_e_learning/views/customs/widgets/screen_box.dart';
import 'package:fiveer_e_learning/views/customs/widgets/widget_Button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthAsStudent extends StatelessWidget {
  const AuthAsStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBox(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: Diemainions.space4),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                HeaderAuthSpace(),
                Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Welcome!\n',
                        style: TextAppStyles.fontregular26.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                      TextSpan(
                        text: "Sign up as a",
                        style: TextAppStyles.fontregular26.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                      TextSpan(
                        text: ' Student',
                        style: TextAppStyles.fontregular26.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                HeaderAuthSpace(),
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
                Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Already have an account? \n",
                        style: TextAppStyles.fontregular14.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                      TextSpan(
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                Get.to(HomeAuth());
                              },
                        text: "Sign in",
                        style: TextAppStyles.fontregular14.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
