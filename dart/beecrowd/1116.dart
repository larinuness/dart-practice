import 'dart:io';

// saber se da pra dividir os numeros
void main(List<String> args) {
  String? input = stdin.readLineSync();

  int number = int.tryParse(input!) ?? 0;

  for (int i = 0; i < number; i++) {
    String? input = stdin.readLineSync();

    List<String> list = input!.split(' ');
    List<double> numbers = list.map((e) => double.tryParse(e) ?? 0).toList();

    if (numbers[1] == 0) {
      print('divisao impossivel');
    } else {
      double resultado = numbers[0] / numbers[1];
      print(resultado.toStringAsFixed(1));
    }
  }
}
