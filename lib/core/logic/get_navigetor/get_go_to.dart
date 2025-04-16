import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class GoToLogic {
  static void getGoTo(Widget view) {
    Get.to(
      view,
      transition: Transition.fadeIn,
      duration: const Duration(milliseconds: 500),
    );
  }
}
