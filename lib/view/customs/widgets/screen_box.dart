import 'package:flutter/material.dart';

class ScreenBox extends StatelessWidget {
  final AppBar? appBar;
  final Widget? body;
  final Widget? bottomNavigationBar;
  const ScreenBox({
    super.key,
    this.appBar,
    this.body,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
