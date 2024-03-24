import 'dart:io';

void main(List<String> args) {
  String? input;

  while (true) {
    input = stdin.readLineSync();
    if (input != "2002") {
      print("Senha Invalida");
      continue;
    } else {
      print("Acesso Permitido");
      break;
    }
  }
}
