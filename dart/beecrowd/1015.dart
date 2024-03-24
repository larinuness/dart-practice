import 'dart:io';
import 'dart:math';

// distancia entre dois pontos

void main(List<String> args) {
  List<String>? input1 = stdin.readLineSync()?.trim().split(' ');
  List<double> x1y1 = input1!.map((e) => double.parse(e)).toList();
  List<String>? input2 = stdin.readLineSync()?.trim().split(' ');
  List<double> x2y2 = input2!.map((e) => double.parse(e)).toList();

  double distancia =
      sqrt(pow(x2y2[0] - x1y1[0], 2) + pow(x2y2[1] - x1y1[1], 2));
  print(distancia.toStringAsFixed(4));
}

void calcularDistancia(List<double> ponto1, List<double> ponto2) {
  double distancia =
      sqrt(pow(ponto2[0] - ponto1[0], 2) + pow(ponto2[1] - ponto1[1], 2));
  print(distancia.toStringAsFixed(4));
}
