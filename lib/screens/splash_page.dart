import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shopzilla/screens/pages.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash:
          "assets/icons/shopzilla-high-resolution-logo-color-on-transparent-background.png",
      nextScreen: Pages(),
      splashIconSize: 130,
    );
  }
}
