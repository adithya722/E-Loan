import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:loanapp/DB/functions/models/user_model.dart';
import 'package:loanapp/root.dart';

void main() async {
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(UserAdapter().typeId)) {
    Hive.registerAdapter(UserAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Root();
  }
}
