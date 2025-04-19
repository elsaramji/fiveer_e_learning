import 'package:flutter/material.dart';

extension ScreenSizerHelper on BuildContext {
  get isLandescape => MediaQuery.of(this).orientation == Orientation.landscape;

  get screenWidth =>
      isLandescape
          ? MediaQuery.of(this).size.height
          : MediaQuery.of(this).size.width;

  get screenHeight =>
      isLandescape
          ? MediaQuery.of(this).size.width
          : MediaQuery.of(this).size.height;
}
