import 'dart:io';

// Lista se esta crescente ou decrescente
void main(List<String> args) {
  while (true) {
    String? input = stdin.readLineSync();

    List<String> parts = input!.split(' ');

    List<int> numeros = [];

    for (String part in parts) {
      int? numero = int.tryParse(part);

      numeros.add(numero!);
      continue;
    }

    if (numeros[0] > numeros[1]) {
      print('Decrescente');
      continue;
    } else if (numeros[0] == numeros[1]) {
      break;
    } else {
      print('Crescente');
      continue;
    }
  }
}
