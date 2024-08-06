// ignore: non_constant_identifier_names
int Score_Setter(
    {int age = 0,
    int cibilscore = 0,
    double income = 0,
    String type = "",
    int experience = 0}) {
  if (age >= 21 &&
      cibilscore >= 750 &&
      cibilscore < 850 &&
      type == "salaried" &&
      income >= 15000 &&
      experience >= 1) {
    return 6;
  }
  if (age >= 21 &&
      cibilscore >= 850 &&
      type == "salaried" &&
      income >= 30000 &&
      experience >= 1) {
    return 8;
  }
  if (age >= 21 &&
      cibilscore >= 750 &&
      cibilscore < 850 &&
      type == "employed" &&
      income >= 15000 &&
      experience >= 1) {
    return 5;
  }
  if (age >= 21 &&
      cibilscore >= 850 &&
      type == "employed" &&
      income >= 30000 &&
      experience >= 5) {
    return 7;
  }
  return 0;
}
