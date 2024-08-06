import 'package:flutter/material.dart';
import 'package:loanapp/uttilites/routes.dart';

class Homeloan extends StatefulWidget {
  const Homeloan({super.key});

  @override
  State<Homeloan> createState() => _HomeloanState();
}

class _HomeloanState extends State<Homeloan> {
  @override
  Widget build(BuildContext context) {
    var user = ModalRoute.of(context)?.settings.arguments;
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
                Color.fromARGB(255, 23, 53, 69),
                Color.fromARGB(255, 139, 174, 191),
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
                "CLICK FOR LOAN",
                style: TextStyle(
                  fontSize: 43,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 49, 77),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.09,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.tenure1, arguments: user);
              },
              color: const Color.fromARGB(255, 15, 49, 77),
              textColor: Colors.white,
              child: const Text("PERSONAL LOAN"),
            ),
          ],
        ),
      ))
    ]));
  }
}
