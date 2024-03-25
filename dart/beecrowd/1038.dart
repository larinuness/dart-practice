//lanche

import 'dart:io';

void main(List<String> args) {
  List<String>? input = stdin.readLineSync()?.split(' ');

  List<double> values = input!.map((e) => double.parse(e)).toList();
  double cod = values[0];
  double preco = 0;

  switch (cod) {
    case 1:
      preco = 4.00;
      break;
    case 2:
      preco = 4.50;
      break;
    case 3:
      preco = 5.00;
      break;
    case 4:
      preco = 2.00;
      break;
    case 5:
      preco = 1.50;
      break;
    default:
      preco = 0;
  }
  double total = preco * values[1];
  print("Total: R\$ ${total.toStringAsFixed(2)}");
}
