import 'package:flutter/material.dart';
import 'dart:async';

class SplashSignUp extends StatefulWidget {
  const SplashSignUp({Key? key}) : super(key: key);

  @override
  State<SplashSignUp> createState() => _SplashSignUpState();
}

class _SplashSignUpState extends State<SplashSignUp> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/splashsignup.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
