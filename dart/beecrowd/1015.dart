import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  List<String>? input1 = stdin.readLineSync()?.trim().split(' ');
  List<double> x1y1 = input1!.map((e) => double.parse(e)).toList();
  List<String>? input2 = stdin.readLineSync()?.trim().split(' ');
  List<double> x2y2 = input2!.map((e) => double.parse(e)).toList();

  double distancia =
      sqrt(pow(x2y2[0] - x1y1[0], 2) + pow(x2y2[1] - x1y1[1], 2));
  print(distancia.toStringAsFixed(4));
}

// calcularMedia(List<double> n1, List<double> n2) {
//   String resultado = "";
//   for (double num1 in n1) {
//     for (double num2 in n2) {
//       final teste1 = n2[0] - n1[0];
//       final teste2 = n1[1] - n2[0];
//       final teste3 = pow(teste1, 2);
//       final teste4 = pow(teste2, 2);
//       final teste5 = teste3 + teste4;
//       final teste6 = sqrt(teste5);
//       resultado = teste6.toStringAsFixed(4);
//     }
//   }
//   print(resultado);
//   return resultado;
// }

void calcularDistancia(List<double> ponto1, List<double> ponto2) {
  double distancia =
      sqrt(pow(ponto2[0] - ponto1[0], 2) + pow(ponto2[1] - ponto1[1], 2));
  print(distancia.toStringAsFixed(4));
}
