import 'dart:io';

main() {

  var nomes = [];
  bool condicao = true;

  while (condicao) {
    print("=== Digite um nome: ===");
    var text = stdin.readLineSync();
     if(text == "Sair") {
       print("=== Fim do programa ===");
       condicao = false;
     } else {
       nomes.add(text);
     }
     print("Os nomes digitados foram: $nomes");
  }  
}