import 'package:fiveer_e_learning/components/Auth/views/Customs/styles/button_styles.dart';
import 'package:fiveer_e_learning/components/Auth/views/Customs/widgets/auth_or_dvider.dart';
import 'package:fiveer_e_learning/components/Auth/views/Customs/widgets/header_auth_space.dart';
import 'package:fiveer_e_learning/components/Auth/views/Customs/widgets/register_text.dart';
import 'package:fiveer_e_learning/components/Auth/views/Customs/widgets/social_auth_button.dart';
import 'package:fiveer_e_learning/components/Auth/views/Customs/widgets/welecom_auth_text.dart';
import 'package:fiveer_e_learning/core/constants/assets.dart';
import 'package:fiveer_e_learning/core/constants/colors.dart';
import 'package:fiveer_e_learning/core/constants/diemainions.dart';
import 'package:fiveer_e_learning/core/logic/screen_sizer_helper.dart';
import 'package:fiveer_e_learning/views/customs/widgets/text_Button.dart';
import 'package:fiveer_e_learning/views/customs/widgets/text_form_feild.dart';
import 'package:fiveer_e_learning/views/customs/widgets/widget_Button.dart';
import 'package:flutter/material.dart';

class WelcomeAuthView extends StatelessWidget {
  const WelcomeAuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics:
          context.isLandescape
              ? ScrollPhysics()
              : NeverScrollableScrollPhysics(),
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            HeaderAuthSpace(),
            WelcomeAuthText(),

            SizedBox(height: context.screenHeight * 0.075),

            CustomWidgetButton(
              style: AuthButtonStyles.socailauthbuttonstyle(),
              onPressed: () {},
              widget: SocialButtonWidget(
                text: 'Login with Google',
                imagepath: Assets.assetsImagesGoogleIcon,
              ),
            ),
            SizedBox(height: Diemainions.space2),
            CustomWidgetButton(
              onPressed: () {},
              style: AuthButtonStyles.socailauthbuttonstyle(),
              widget: SocialButtonWidget(
                text: 'Login with Facebook',
                imagepath: Assets.assetsImagesFacebookIcon,
              ),
            ),
            SizedBox(height: Diemainions.space4),
            AuthORDvider(),
            SizedBox(height: Diemainions.space4),
            CustomTextFormFeild(
              obscureText: false,
              hintText: "username",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your username';
                }
                return null;
              },
              controller: null,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            SizedBox(height: Diemainions.space2),
            CustomTextFormFeild(
              obscureText: true,
              maxLines: 1,
              hintText: "password",
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
              controller: null,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              suffixIcon: const Icon(
                Icons.remove_red_eye,
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(height: Diemainions.space4),
            CustomTextButton(text: "login", onPressed: () {}),
            SizedBox(height: Diemainions.space2),
            RegisterText(),
          ]),
        ),
      ],
    );
  }
}
