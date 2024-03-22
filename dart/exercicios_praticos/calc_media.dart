import 'dart:io';

void main() {
  print("Digite os números separados por espaços:");

  List<String>? input = stdin.readLineSync()?.trim().split(' ');
  List<double> numeros = input!.map((e) => double.parse(e)).toList();


  double media = calcularMedia(numeros);


  print("A média dos números é $media");
}

double calcularMedia(List<double> numeros) {
  double soma = 0;
  for (double num in numeros) {
    soma += num;
  }
  return soma / numeros.length;
}
