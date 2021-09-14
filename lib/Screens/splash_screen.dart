import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:splashnavypackages/Screens/home_screen.dart';
import 'package:splashnavypackages/Screens/onBoarding.dart';

import '../consants.dart';
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 3000,
        splashIconSize: 300,
        splash: Column(
          children: [
            Image.asset('assets/images/Illustration.png',height: 300,width: 300,),
           // Text('E-Commerce App',style: blackBoldTextStyle(),)
          ],
        ),
        nextScreen: OnBoarding(),
        splashTransition: SplashTransition.fadeTransition,
        //pageTransitionType: PageTransitionType.scale,,
        backgroundColor: Colors.white
    );
  }
}
