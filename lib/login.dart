// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import 'package:loanapp/DB/functions/user_function.dart';
import 'package:loanapp/uttilites/routes.dart';
import 'package:loanapp/uttilites/text1.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController username = TextEditingController();
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
              // image: DecorationImage(image: AssetImage("assets/images/icon.jpeg")),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.center,
                  colors: [
                    Color.fromARGB(255, 23, 53, 69),
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
                      "LOGIN",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 43,
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 1, 57, 74),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  TextBoxWidget(
                      text: "username",
                      iconName: Icons.person,
                      txtcontroller: username),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  TextBoxWidget(
                      text: "password",
                      iconName: Icons.remove_red_eye_outlined,
                      txtcontroller: password),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.8,
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.forgtpasswrd);
                      },
                      child: const Text("forget password?"),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  MaterialButton(
                    onPressed: () async {
                      final usrname = username.text.trim();
                      final pwd = password.text.trim();

                      if (usrname.isEmpty || pwd.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Invalid input")));
                        return;
                      }

                      dynamic users = await getUsers();
                      users.forEach((user) {
                        print(
                            "user username:${user.name}\n password:${user.password}");
                        if (user.name == usrname && user.password == pwd) {
                          Navigator.pushNamed(context, Routes.register,
                              arguments: user);
                        }
                      });
                    },
                    color: const Color.fromARGB(255, 34, 80, 118),
                    textColor: Colors.white,
                    child: const Text("login"),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text("Not a member?"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.signup);
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
