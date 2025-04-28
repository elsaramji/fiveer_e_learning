import 'package:fiveer_e_learning/core/constants/assets.dart';
import 'package:fiveer_e_learning/core/constants/colors.dart';
import 'package:fiveer_e_learning/core/constants/diemainions.dart';
import 'package:fiveer_e_learning/core/customs/styles/style.dart';
import 'package:flutter/material.dart';

class InfoWelcome extends StatelessWidget {
  final WelcomeModel welcomeModel;

  const InfoWelcome({super.key, required this.welcomeModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AspectRatio(
          aspectRatio:
              (MediaQuery.of(context).size.width - Diemainions.space6) / 160,
          child: Image.asset(welcomeModel.imagepath, fit: BoxFit.contain),
        ),
        SizedBox(height: Diemainions.space4),
        Container(
          margin: EdgeInsets.symmetric(horizontal: Diemainions.space8),
          child: Text(
            welcomeModel.title,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextAppStyles.fontregular26.copyWith(
              color: AppColors.blackColor,
            ),
          ),
        ),
        Text(
          welcomeModel.subtitle,
          maxLines: 1,
          textAlign: TextAlign.center,
          style: TextAppStyles.fontregular14.copyWith(
            color: AppColors.foucusGreyColor,
          ),
        ),
      ],
    );
  }
}

class WelcomeModel {
  final String imagepath;
  final String title;
  final String subtitle;

  WelcomeModel({
    required this.imagepath,
    required this.title,
    required this.subtitle,
  });
}

List<WelcomeModel> welcomeList = [
  WelcomeModel(
    imagepath: Assets.assetsImagesImg,
    title: "Better way to learningis calling you!",
    subtitle: "We are here to help you to learn and grow your skills.",
  ),
  WelcomeModel(
    imagepath: Assets.assetsImagesImg1,
    title: "Find yourself by doing whatever you do !",
    subtitle: "Unlock your potential with us!",
  ),
  WelcomeModel(
    imagepath: Assets.assetsImagesImg2,
    title: "It’s not just learning,It’s a promise!",
    subtitle: "Experience the difference today!",
  ),
];
