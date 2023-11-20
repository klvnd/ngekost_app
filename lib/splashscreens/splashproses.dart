import 'package:flutter/material.dart';

class SplashProses extends StatelessWidget {
  const SplashProses({Key? key}) : super(key: key);

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
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            child: const CircularProgressIndicator(
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
