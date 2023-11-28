import 'package:flutter/material.dart';
import 'dart:async';

class SplashProses extends StatefulWidget {
  const SplashProses ({Key? key}) : super(key: key);

  @override
  State<SplashProses> createState() => _SplashProsesState();
}

class _SplashProsesState extends State<SplashProses> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/splashpesanan');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: SizedBox(
            width: 200,
            height: 200,
            child: CircularProgressIndicator(
              value: null,
              strokeWidth: 20,
              color: Colors.orange,
            ),
          ),
        ),
      ),
    );
  }
}
