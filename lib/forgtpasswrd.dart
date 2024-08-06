import 'package:flutter/material.dart';
import 'package:loanapp/uttilites/routes.dart';
import 'package:loanapp/uttilites/text1.dart';

class Forgetpasswrd extends StatefulWidget {
  const Forgetpasswrd({super.key});

  @override
  State<Forgetpasswrd> createState() => _ForgetpasswrdState();
}

class _ForgetpasswrdState extends State<Forgetpasswrd> {
  @override
  Widget build(BuildContext context) {
    TextEditingController currentpwrd = TextEditingController();

    TextEditingController newpasswrd = TextEditingController();
    TextEditingController confirmpasswrd = TextEditingController();
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
                      "CHANGE PASSWORD",
                      style: TextStyle(
                        fontSize: 43,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 1, 57, 74),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  TextBoxWidget(
                      text: "current password",
                      iconName: Icons.remove_red_eye_outlined,
                      txtcontroller: currentpwrd),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  TextBoxWidget(
                      text: "new password",
                      iconName: Icons.remove_red_eye_outlined,
                      txtcontroller: newpasswrd),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  TextBoxWidget(
                      text: "confirm password",
                      iconName: Icons.remove_red_eye_outlined,
                      txtcontroller: confirmpasswrd),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.login);
                    },
                    color: Color.fromARGB(255, 34, 80, 118),
                    textColor: Colors.white,
                    child: const Text("change password"),
                  ),
                ]),
          ),
        ),
      ]),
    );
  }
}
