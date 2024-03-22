// import 'dart:io';

// void main() {

// void main() {
//   // Solicita os três valores do usuário
//   print('Digite o primeiro valor:');
//   var valor1 = int.parse(stdin.readLineSync()!);

//   print('Digite o segundo valor:');
//   var valor2 = int.parse(stdin.readLineSync()!);

//   print('Digite o terceiro valor:');
//   var valor3 = int.parse(stdin.readLineSync()!);

//   // Encontra o maior valor
//   var maiorValor = valor1;
//   if (valor2 > maiorValor) {
//     maiorValor = valor2;
//   }
//   if (valor3 > maiorValor) {
//     maiorValor = valor3;
//   }

//   // Exibe o maior valor
//   print('$maiorValor é o maior.');
// }

//   // Solicitar ao usuário que insira os valores inteiros separados por espaço
//   print("Insira os valores inteiros separados por espaço:");
//   String input = stdin.readLineSync()!;

//   // Dividir a entrada em uma lista de strings
//   List<String> values = input.split(' ');

//   // Converter cada string em um inteiro
//   List<int> integers = [];
//   for (String value in values) {
//     integers.add(int.parse(value));
//   }

//   // Encontrar o maior valor na lista
//   int max = integers[0];
//   for (int i = 1; i < integers.length; i++) {
//     if (integers[i] > max) {
//       max = integers[i];
//     }
//   }

//   // Exibir o maior valor
//   print("O maior valor é: $max");
// }

// maiorValor(List<int> integers) {
//   int max = integers[0];
//   for (int i = 1; i < integers.length; i++) {
//     if (integers[i] > max) {
//       max = integers[i];
//     }
//   }
//   return max;
// }

import 'dart:io';

void main() {
  // Lê os três valores
  var entrada = stdin.readLineSync()!.split(' ');
  var a = int.parse(entrada[0]);
  var b = int.parse(entrada[1]);
  var c = int.parse(entrada[2]);

  // Encontra o maior entre a e b usando a fórmula fornecida
  var maiorAB = (a + b + (a - b).abs()) ~/ 2;

  // Encontra o maior entre o maiorAB e c
  var maior = (maiorAB + c + (maiorAB - c).abs()) ~/ 2;

  // Imprime o maior valor seguido pela mensagem
  print('$maior eh o maior');
}
