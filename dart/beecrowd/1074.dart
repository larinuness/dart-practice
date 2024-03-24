import 'dart:io';

// saber se o numero é par ou impar, possitivo e negativo
void main(List<String> args) {
  String? input = stdin.readLineSync();

  int qatde = int.tryParse(input!)!;

  for (int i = 1; i <= qatde; i++) {
    String result = "";
    String? input = stdin.readLineSync();
    double? number = double.tryParse(input!)!;
    if (number == 0) {
      result = "NULL";
      print(result);
    } else if (!number.isNegative && number % 2 == 0) {
      result = "EVEN POSITIVE";
      print(result);
    } else if (number.isNegative && number % 2 == 0) {
      result = "EVEN NEGATIVE";
      print(result);
    } else if (!number.isNegative && number % 2 != 0) {
      result = "ODD POSITIVE";
      print(result);
    } else {
      result = "ODD NEGATIVE";
      print(result);
    }
  }
}
