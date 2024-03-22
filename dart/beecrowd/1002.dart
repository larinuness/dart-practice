import 'dart:io';
import 'dart:math';

void main() {
  String? n1 = stdin.readLineSync();

  double newNum = double.tryParse(n1!)!;

  final resultado = 3.14159 * pow(newNum, 2);

  final newResult = resultado.toStringAsFixed(4);

  print("A=$newResult");
  
}
