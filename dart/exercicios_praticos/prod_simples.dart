import 'dart:io';

void main(List<String> args) {
  String? n1 = stdin.readLineSync();
  String? n2 = stdin.readLineSync();

  int num1 = int.tryParse(n1!)!;
  int num2 = int.tryParse(n2!)!;

  final result = num1 * num2;

  print('PROD = $result');
}
