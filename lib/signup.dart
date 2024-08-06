import 'package:flutter/material.dart';

import 'package:loanapp/DB/functions/models/user_model.dart';
import 'package:loanapp/DB/functions/user_function.dart';
import 'package:loanapp/uttilites/routes.dart';
import 'package:loanapp/uttilites/text1.dart';

class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  TextEditingController firstname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                      "SIGN IN",
                      style: TextStyle(
                        fontSize: 43,
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 1, 57, 74),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  TextBoxWidget(
                      text: "email",
                      iconName: Icons.email_outlined,
                      txtcontroller: email),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  TextBoxWidget(
                      text: "name",
                      iconName: Icons.person,
                      txtcontroller: firstname),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  TextBoxWidget(
                      text: "password",
                      iconName: Icons.lock_outline_rounded,
                      txtcontroller: password),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  MaterialButton(
                    onPressed: () async {
                      String frstnme = firstname.text.trim();
                      String emil = email.text.trim();
                      String psword = password.text.trim();

                      if (frstnme.isEmpty || emil.isEmpty || psword.isEmpty) {
                        return;
                      }
                      User user =
                          User(name: frstnme, email: emil, password: psword);
                      addUser(user);
                      Navigator.pushNamed(context, Routes.login);
                    },
                    color: const Color.fromARGB(255, 34, 80, 118),
                    textColor: Colors.white,
                    child: const Text("signup"),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text("Not a member?"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.login);
                    },
                    child: const Text("signup"),
                  ),
                ]),
          ),
        ),
      ]),
    );
  }
}
