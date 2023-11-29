import 'package:flutter/material.dart';
import 'package:ngekost_app/splashscreens/splashproses.dart';
import 'splashscreens/splashscreen.dart';
import 'home.dart';
import 'auth/login.dart';
import 'auth/signup.dart';
import 'splashscreens/splashsignup.dart';
import 'splashscreens/splashpesanan.dart';
import 'infokost.dart';
import 'ajukansewa.dart';
import 'chat.dart';
import 'chatlibrary.dart';
import 'account.dart';
import 'rincian.dart';

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
        '/splashscreen': (context) => const SplashScreen(),
        '/splashproses':(context) => const SplashProses(),
        '/home': (context) => const Home(),
        '/login': (context) => const Login(),
        '/signup': (context) => const SignUp(),
        '/splashsignup':(context) => const SplashSignUp(),
        '/splashpesanan':(context) => const SplashPesanan(),
        '/infokost': (context) => const InfoKost(),
        '/ajukansewa': (context) => const AjukanSewa(),
        '/chat':(context) => const Chat(),
        '/chatlibrary': (context) => const ChatLib(),
        '/account': (context) => const Account(),
        '/rincian': (context) => const Rincian(),
      },
    );
  }
}
