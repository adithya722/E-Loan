import 'package:flutter/material.dart';

import 'package:loanapp/forgtpasswrd.dart';
import 'package:loanapp/homeloan1.dart';

import 'package:loanapp/login.dart';
import 'package:loanapp/personalloan.dart';
import 'package:loanapp/register.dart';
import 'package:loanapp/resultscreen.dart';
import 'package:loanapp/signup.dart';
import 'package:loanapp/splashscreen.dart';
import 'package:loanapp/tenure1.dart';
import 'package:loanapp/tenure2.dart';
import 'package:loanapp/uttilites/routes.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashscreen,
      routes: {
        Routes.splashscreen: (context) => const Splashscreen(),
        Routes.login: (context) => const Loginpage(),
        Routes.signup: (context) => const Signuppage(),
        Routes.register: (context) => const Register(),
        Routes.forgtpasswrd: (context) => const Forgetpasswrd(),
        Routes.homeloan: (context) => const Homeloan(),
        Routes.personal: (context) => const Personalloan(),
        Routes.tenure1: (context) => const Tenure1(),
        Routes.tenure2: (context) => const Tenure2(),
        Routes.result: (context) => const Result(),
      },
    );
  }
}
