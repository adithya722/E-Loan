// ignore_for_file: avoid_print, unused_local_variable, non_constant_identifier_names, use_build_context_synchronously

import 'package:flutter/material.dart';

import 'package:loanapp/DB/functions/models/user_model.dart';
import 'package:loanapp/DB/functions/user_function.dart';
import 'package:loanapp/amount.dart';
import 'package:loanapp/emicalculation.dart';
import 'package:loanapp/scoresetter.dart';
import 'package:loanapp/uttilites/routes.dart';

class Tenure2 extends StatelessWidget {
  const Tenure2({super.key});

  @override
  Widget build(BuildContext context) {
    var userkey = ModalRoute.of(context)?.settings.arguments as dynamic;
    return Scaffold(
        body: ListView(children: [
      Center(
          child: Container(
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.center,
              colors: [
                Color.fromARGB(255, 13, 60, 88),
                Color.fromARGB(255, 110, 139, 154),
                Color.fromARGB(255, 236, 238, 238)
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            const Align(
              child: Text(
                "TENURE AVAILABLE",
                style: TextStyle(
                    fontSize: 43,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 15, 49, 77),
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.6,
              child: MaterialButton(
                onPressed: () async {
                  User user = await getUser(userkey);
                  print(userkey);

                  int calculated_score = Score_Setter(
                      cibilscore: user.cibilscore as int,
                      age: user.age as int,
                      income: user.income as double,
                      experience: user.experience as int,
                      type: user.type as String);
                  double amount_eligible = amountEligible(
                      income: user.income as double,
                      score: user.cibilscore as int);

                  double emi = emiCalculator(
                      amountEligible: amount_eligible,
                      tenure: 12,
                      interestrate: 8);

                  print("emi=$emi");

                  print("amount_eligible=$amount_eligible");

                  Navigator.pushNamed(context, Routes.result, arguments: {
                    'amount': amount_eligible,
                    'emi': emi,
                    'details': user
                  });
                },
                color: const Color.fromARGB(255, 15, 49, 77),
                textColor: Colors.white,
                child: const Text("       12 Months     "),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.6,
              child: MaterialButton(
                onPressed: () async {
                  User user = await getUser(userkey);
                  print(userkey);

                  int calculated_score = Score_Setter(
                      cibilscore: user.cibilscore as int,
                      age: user.age as int,
                      income: user.income as double,
                      experience: user.experience as int,
                      type: user.type as String);
                  double amount_eligible = amountEligible(
                      income: user.income as double,
                      score: user.cibilscore as int);

                  double emi = emiCalculator(
                      amountEligible: amount_eligible,
                      tenure: 24,
                      interestrate: 16);

                  print("emi=$emi");

                  print("amount_eligible=$amount_eligible");

                  Navigator.pushNamed(context, Routes.result, arguments: {
                    'amount': amount_eligible,
                    'emi': emi,
                    'details': user
                  });
                },
                color: const Color.fromARGB(255, 15, 49, 77),
                textColor: Colors.white,
                child: const Text("    24 Months   "),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.6,
              child: MaterialButton(
                onPressed: () async {
                  User user = await getUser(userkey);
                  print(userkey);

                  int calculated_score = Score_Setter(
                      cibilscore: user.cibilscore as int,
                      age: user.age as int,
                      income: user.income as double,
                      experience: user.experience as int,
                      type: user.type as String);
                  double amount_eligible = amountEligible(
                      income: user.income as double,
                      score: user.cibilscore as int);

                  double emi = emiCalculator(
                      amountEligible: amount_eligible,
                      tenure: 36,
                      interestrate: 12);

                  print("emi=$emi");

                  print("amount_eligible=$amount_eligible");

                  Navigator.pushNamed(context, Routes.result, arguments: {
                    'amount': amount_eligible,
                    'emi': emi,
                    'details': user
                  });
                },
                color: const Color.fromARGB(255, 15, 49, 77),
                textColor: Colors.white,
                child: const Text("    36 Months    "),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.6,
              child: MaterialButton(
                onPressed: () async {
                  User user = await getUser(userkey);
                  print(userkey);

                  int calculated_score = Score_Setter(
                      cibilscore: user.cibilscore as int,
                      age: user.age as int,
                      income: user.income as double,
                      experience: user.experience as int,
                      type: user.type as String);
                  double amount_eligible = amountEligible(
                      income: user.income as double,
                      score: user.cibilscore as int);

                  double emi = emiCalculator(
                      amountEligible: amount_eligible,
                      tenure: 48,
                      interestrate: 14);

                  print("emi=$emi");

                  print("amount_eligible=$amount_eligible");

                  Navigator.pushNamed(context, Routes.result, arguments: {
                    'amount': amount_eligible,
                    'emi': emi,
                    'details': user
                  });
                },
                color: const Color.fromARGB(255, 15, 49, 77),
                textColor: Colors.white,
                child: const Text("    48 Months    "),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.6,
              child: MaterialButton(
                onPressed: () async {
                  User user = await getUser(userkey);
                  print(userkey);

                  int calculated_score = Score_Setter(
                      cibilscore: user.cibilscore as int,
                      age: user.age as int,
                      income: user.income as double,
                      experience: user.experience as int,
                      type: user.type as String);
                  double amount_eligible = amountEligible(
                      income: user.income as double,
                      score: user.cibilscore as int);

                  double emi = emiCalculator(
                      amountEligible: amount_eligible,
                      tenure: 60,
                      interestrate: 17);

                  print("emi=$emi");

                  print("amount_eligible=$amount_eligible");

                  Navigator.pushNamed(context, Routes.result, arguments: {
                    'amount': amount_eligible,
                    'emi': emi,
                    'details': user
                  });
                },
                color: const Color.fromARGB(255, 15, 49, 77),
                textColor: Colors.white,
                child: const Text("    60 Months    "),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ],
        ),
      ))
    ]));
  }
}
