import 'package:hive_flutter/hive_flutter.dart';
import 'package:loanapp/DB/functions/models/details.dart';

import 'package:loanapp/DB/functions/models/user_model.dart';

void addUser(User user) async {
  final userDB = await Hive.openBox<User>("userBox");

  await userDB.add(user);
}

Future<Iterable<User>> getUsers() async {
  final userDB = await Hive.openBox<User>("userBox");

  return userDB.values;
}

void addUserDetails(User user, UserDetails details) async {
  final userDB = await Hive.openBox<User>("userBox");

  User updatedUser = User(
      email: user.email,
      name: user.name,
      password: user.password,
      age: details.age,
      experience: details.experience,
      income: details.income,
      type: details.type,
      cibilscore: details.cibilscore);
  await userDB.put(user.key, updatedUser);
}

dynamic getUser(key) async {
  final useDB = await Hive.openBox<User>("userBox");
  return useDB.getAt(key);
}
