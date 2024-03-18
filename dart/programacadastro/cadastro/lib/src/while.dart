import 'dart:io';
usandoWhile() {
  
  // bool condicao = true;
  // int x  = 0;
  //  while(condicao){
  //        print("rodou $x");
  //        if(x > 9) {
  //          condicao = false;
  //        }
  //        x++;
  //  }

  bool condicao = true;
  while(condicao){
    print('=== Escreva algo ===');
    var text = stdin.readLineSync();
    if (text == 'Sair') {
      condicao = false;
      print('=== Fim do programa');
      
    } else {
      print('=== Você digitou: $text');
    }
  }


}