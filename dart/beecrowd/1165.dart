import 'dart:io';

//saber se um numero é primo

void main(List<String> args) {
  String? input = stdin.readLineSync();
  int number = int.tryParse(input!) ?? 0;

  for (int i = 0; i < number; i++) {
    input = stdin.readLineSync();
    int numberToCheck = int.tryParse(input!) ?? 0;

    bool isPrime = true;
    if (numberToCheck <= 1) {
      isPrime = false;
    } else {
      for (int j = 2; j <= numberToCheck ~/ 2; j++) {
        if (numberToCheck % j == 0) {
          isPrime = false;
          break;
        }
      }
    }

    if (isPrime) {
      print("$numberToCheck eh primo");
    } else {
      print('$numberToCheck nao eh primo');
    }
  }
}
