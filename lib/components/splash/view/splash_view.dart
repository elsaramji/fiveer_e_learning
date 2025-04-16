import 'package:fiveer_e_learning/components/Auth/views/home_auth_view.dart';
import 'package:fiveer_e_learning/components/splash/view/customs/widgets/info_welcome_wid.dart'
    show InfoWelcome, welcomeList;
import 'package:fiveer_e_learning/core/constants/colors.dart';
import 'package:fiveer_e_learning/core/constants/diemainions.dart';
import 'package:fiveer_e_learning/core/logic/get_navigetor/get_go_to.dart';
import 'package:fiveer_e_learning/views/customs/styles/style.dart';
import 'package:fiveer_e_learning/views/customs/widgets/screen_box.dart';
import 'package:fiveer_e_learning/views/customs/widgets/text_Button.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBox(
      body: Stack(
        children: [
          Positioned(
            top: Diemainions.space8,
            right: Diemainions.space2,

            child: Text(
              "Skip",
              style: TextAppStyles.fontregular14.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Diemainions.space4),
            child: CustomScrollView(
              physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate([
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
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
          ),
        ],
      ),
    );
  }
}
