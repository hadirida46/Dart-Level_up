import 'package:flutter/material.dart';
import 'home.dart';
import 'dart:async';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const int splashDurationSeconds = 3;

  void _startTimerAndNavigate(BuildContext context) {
    Timer(const Duration(seconds: splashDurationSeconds), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    _startTimerAndNavigate(context);

    return const Scaffold(
      backgroundColor: Color(0xFF0175C2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/dart_logo.png'),
              width: 300,
              height: 300,
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}