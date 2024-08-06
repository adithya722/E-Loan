import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    final details =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final amounteligible = details["amount"] as double;
    final emi = details["emi"] as double;
    return Scaffold(
        body: ListView(
      children: [
        Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.topCenter,
            decoration: const BoxDecoration(backgroundBlendMode: BlendMode.colorBurn,
              image: DecorationImage(image: AssetImage("assets/images/emi.jpeg")),
              
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
                    height: MediaQuery.of(context).size.height * 0.09,
                  ),

                  // const Align(
                  //   child: Text(
                  //     "LOGIN",
                  //     style: TextStyle(
                  //       fontWeight: FontWeight.w400,
                  //       fontSize: 43,
                  //       fontStyle: FontStyle.italic,
                  //       color: Color.fromARGB(255, 1, 57, 74),
                  //     ),
                  //     textAlign: TextAlign.center,
                  //   ),
                  // ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.10,
                  ),
                  Text(
                    "AMOUNT ELIGIBLE : ${amounteligible.ceil()}",
                    style: const TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Text(
                    "EMI : ${emi.ceil()}",
                    style: const TextStyle(fontSize: 20),
                  ),
                ]),
          ),
        )
      ],
    ));
  }
}
