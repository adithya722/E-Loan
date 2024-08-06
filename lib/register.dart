// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:loanapp/DB/functions/models/details.dart';
import 'package:loanapp/DB/functions/models/user_model.dart';
import 'package:loanapp/DB/functions/user_function.dart';
import 'package:loanapp/scoresetter.dart';
import 'package:loanapp/uttilites/routes.dart';
import 'package:loanapp/uttilites/text1.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController age = TextEditingController();
  TextEditingController experience = TextEditingController();
  TextEditingController type = TextEditingController();
  TextEditingController income = TextEditingController();
  TextEditingController cibilscore = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    User user = ModalRoute.of(context)?.settings.arguments as User;
    return Scaffold(
      body: ListView(children: [
        Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.center,
                  colors: [
                    Color.fromARGB(255, 38, 63, 76),
                    Color.fromARGB(255, 139, 174, 191),
                    Color.fromARGB(255, 236, 238, 238)
                  ]),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.10,
                  ),
                  const Align(
                    child: Text(
                      "REGISTER",
                      style: TextStyle(
                        fontSize: 43,
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 1, 57, 74),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  TextBoxWidget(
                      text: "Enter age",
                      iconName: Icons.calendar_month_outlined,
                      txtcontroller: age),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  TextBoxWidget(
                      text: "Enter experience ",
                      iconName: Icons.account_balance_wallet_outlined,
                      txtcontroller: experience),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  TextBoxWidget(
                      text: "Salaried/employed",
                      iconName: Icons.aod_sharp,
                      txtcontroller: type),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  TextBoxWidget(
                      text: "Enter monthly income",
                      iconName: Icons.money,
                      txtcontroller: income),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  TextBoxWidget(
                      text: "enter civilscore",
                      iconName: Icons.score,
                      txtcontroller: cibilscore),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  MaterialButton(
                    onPressed: () {
                      String fage = age.text.trim();
                      String fexp = experience.text.trim();
                      String fincome = income.text.trim();
                      String ftype = type.text.trim();
                      String fcibilscore = cibilscore.text.trim();

                      if (fage.isEmpty ||
                          fexp.isEmpty ||
                          fincome.isEmpty ||
                          ftype.isEmpty ||
                          fcibilscore.isEmpty) {
                        return;
                      }
                      UserDetails details = UserDetails(
                          age: int.parse(fage),
                          experience: int.parse(fexp),
                          income: double.parse(fincome),
                          type: ftype,
                          cibilscore: int.parse(fcibilscore));

                      addUserDetails(user, details);
                      int score = Score_Setter(
                          age: details.age,
                          cibilscore: details.cibilscore,
                          type: details.type,
                          income: details.income,
                          experience: details.experience);
                      if (score < 5) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("NO LOANS AVALIABLE.TRY AGAIN"),
                                backgroundColor: Colors.blue));
                      } else if (score > 5 && score < 7) {
                        Navigator.pushNamed(context, Routes.personal,
                            arguments: user.key);
                      } else {
                        Navigator.pushNamed(context, Routes.homeloan,
                            arguments: user.key);
                      }
                    },
                    color: const Color.fromARGB(255, 34, 80, 118),
                    textColor: Colors.white,
                    child: const Text("Register"),
                  ),
                ]),
          ),
        ),
      ]),
    );
  }
}
