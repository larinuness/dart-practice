import 'dart:io';

void main(List<String> args) {
  print("Digite os números separados por espaços:");

  List<String>? input = stdin.readLineSync()?.trim().split(' ');

  if (input != null) {
    // Remover elementos vazios da lista
    List<String> numerosLimpos =
        input.where((element) => element.isNotEmpty).toList();

    // Converter os números para double
    List<double> numeros =
        numerosLimpos.map((e) => double.tryParse(e) ?? 0.0).toList();

    parOuImpar(numeros);
  } else {
    print("Nenhum número foi fornecido.");
  }
}

void parOuImpar(List<double> numeros) {
  for (double num in numeros) {
    if (num % 2 == 0) {
      print("O número $num é par");
    } else {
      print("O número $num é ímpar");
    }
  }
}
