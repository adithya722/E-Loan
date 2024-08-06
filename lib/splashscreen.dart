import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/login.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
          duration: 3000,
          splashIconSize: MediaQuery.of(context).size.height * 0.7,
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: const Color.fromARGB(255, 244, 239, 236),
          splash: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
              Icon(
                Icons.euro_symbol_outlined,
                color: const Color.fromARGB(255, 38, 91, 98),
                size: MediaQuery.of(context).size.height * 0.10,
              ),
              Text(
                "LOAN APP",
                style: TextStyle(
                    color: const Color.fromARGB(255, 18, 74, 82),
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: MediaQuery.of(context).size.height * 0.04),
              ),
            ],
          ),
          nextScreen: const Loginpage()),
    );
  }
}
