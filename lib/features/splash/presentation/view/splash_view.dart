
import 'package:fiveer_e_learning/features/splash/presentation/view/customs/widgets/info_welcome_wid.dart';
import 'package:fiveer_e_learning/core/constants/colors.dart';
import 'package:fiveer_e_learning/core/constants/diemainions.dart';
import 'package:fiveer_e_learning/core/logic/get_navigetor/get_go_to.dart';
import 'package:fiveer_e_learning/core/logic/screen_sizer_helper.dart';
import 'package:fiveer_e_learning/features/Auth/presentation/views/home_auth_view.dart';
import 'package:fiveer_e_learning/core/customs/styles/style.dart';
import 'package:fiveer_e_learning/core/customs/widgets/screen_box.dart';
import 'package:fiveer_e_learning/core/customs/widgets/text_Button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBox(
      body: Stack(
        children: [
          CustomScrollView(
            physics: ScrollPhysics(
              parent:
                  context.isLandescape
                      ? ScrollPhysics()
                      : NeverScrollableScrollPhysics(),
            ),
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  SizedBox(
                    width: context.screenWidth,
                    height: context.screenHeight,
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.2,
                        ),
                        Flexible(
                          flex: 2,
                          child: PageView.builder(
                            itemCount: welcomeList.length,
                            itemBuilder: (context, index) {
                              return InfoWelcome(
                                welcomeModel: welcomeList[index],
                              );
                            },
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Column(
                            children: [
                              CustomTextButton(
                                text: "Register",
                                onPressed: () {
                                  GoToLogic.getGoTo(const HomeAuth());
                                },
                              ),
                              const SizedBox(height: 10),
                              CustomTextButton(
                                text: "Login",
                                onPressed: () {
                                  GoToLogic.getGoTo(const HomeAuth());
                                },
                                color: Colors.transparent,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
          Positioned(
            top: Diemainions.space8,
            right: Diemainions.space2,

            child: GestureDetector(
              onTap: () {
                Get.to(const HomeAuth());
              },
              child: Text(
                "Skip",
                style: TextAppStyles.fontregular14.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
