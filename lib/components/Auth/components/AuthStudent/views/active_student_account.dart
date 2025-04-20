import 'package:fiveer_e_learning/components/Auth/components/AuthStudent/views/customs/widgets/active_email_image.dart';
import 'package:fiveer_e_learning/components/Auth/components/AuthStudent/views/customs/widgets/active_email_text.dart';
import 'package:fiveer_e_learning/components/Auth/components/AuthStudent/views/customs/widgets/active_email_tour_text.dart';
import 'package:fiveer_e_learning/components/Auth/components/AuthStudent/views/customs/widgets/tour_active_email_text.dart';
import 'package:fiveer_e_learning/core/constants/Spacing.dart';
import 'package:fiveer_e_learning/core/logic/screen_sizer_helper.dart';
import 'package:fiveer_e_learning/views/customs/widgets/screen_box.dart';
import 'package:fiveer_e_learning/views/customs/widgets/text_Button.dart';
import 'package:flutter/material.dart';

class ActiveStudentAccount extends StatelessWidget {
  const ActiveStudentAccount({super.key});

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
              Space40(),
              ActiveEmailText(),
              Space60(),
              ActiveEmailImage(),
              Space60(),
              CustomTextButton(text: "Open email app", onPressed: () {}),
              Space20(),
              LatterActiveText(),
              Space60(),
              TourActiveEmailText(),
            ]),
          ),
        ],
      ),
    );
  }
}
