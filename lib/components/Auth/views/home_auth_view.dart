import 'package:fiveer_e_learning/components/Auth/views/welecome_auth_view.dart';
import 'package:fiveer_e_learning/views/customs/widgets/screen_box.dart';
import 'package:flutter/material.dart';

class HomeAuth extends StatelessWidget {
  const HomeAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBox(body: WelcomeAuthView());
  }
}
