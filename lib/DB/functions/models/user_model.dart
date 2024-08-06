import 'package:hive/hive.dart';


part 'user_model.g.dart';

@HiveType(typeId: 1)
class User extends HiveObject {
  @HiveField(0)
  String email;

  @HiveField(1)
  String name;

  @HiveField(2)
  String password;

  @HiveField(3)
  int? age;

  @HiveField(4)
  int? experience;

  @HiveField(5)
  String? type;

  @HiveField(6)
  double? income;

  @HiveField(7)
  int? cibilscore;

  User(
      {required this.email,
      required this.name,
      required this.password,
      this.age,
      this.experience,
      this.cibilscore,
      this.income,
      this.type});
}
