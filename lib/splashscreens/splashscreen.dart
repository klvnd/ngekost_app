import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ngekost_app/auth/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/splashscreen.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      nextScreen: const Login(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.white,
      duration: 3000,
    );
  }
}

