
import 'src/pessoa.dart';
import 'dart:io';

Pessoa pessoa = Pessoa();
void main(List<String> arguments) {

  print("=== Escreva seu nome ===");
  pessoa.nome = stdin.readLineSync()!;
   print("=== Escreva seu peso ===");
  pessoa.peso = stdin.readLineSync() as int;
   print("=== Escreva sua idade ===");
  pessoa.idade = stdin.readLineSync() as int;
  print("=== Escreva sua altura ===");
  pessoa.altura = stdin.readLineSync() as double;
  print('${pessoa.nome}');
  print('$pessoa.imc()');
  print('$pessoa.maiorIdade()');
}
