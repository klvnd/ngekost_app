import 'package:flutter/material.dart';

import 'splashscreens/splashscreen.dart';
import 'home.dart';
import 'auth/login.dart';
import 'auth/signup.dart';
import 'splashscreens/splashsignup.dart';
import 'infokost.dart';
import 'ajukansewa.dart';
import 'chatlibrary.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      initialRoute: '/',
      routes: {
        'splashscreen': (context) => const SplashScreen(),
        '/home': (context) => const Home(),
        '/login': (context) => const Login(),
        '/signup': (context) => const SignUp(),
        '/splashsignup':(context) => const SplashSignUp(),
        '/infokost': (context) => const InfoKost(),
        '/ajukansewa': (context) => const AjukanSewa(),
        '/chatlibrary': (context) => const ChatLib(),
      },
    );
  }
}
