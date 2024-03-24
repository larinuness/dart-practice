import 'dart:io';


// saber se é um tautograma


// void main(List<String> args) {
//   String? input = stdin.readLineSync();

//   final list = input!.split(' ');
//   final primeiraLetra = list[0][0];
//   String isTautograma = "Y";

//   for (var element in list) {
//     if (!element.toLowerCase().startsWith(primeiraLetra.toLowerCase())) {
//       isTautograma = "N";
//       break;
//     }
//     if (element.toLowerCase().startsWith("*")) {
//       isTautograma = "";
//       break;
//     }
//   }

//   print(isTautograma);
// }



void main(List<String> args) {
  String? input;

  while (true) {
    input = stdin.readLineSync();

    if (input == '*') break;

    if (input!.length > 250) {
      continue;
    }

    List<String> palavras = input.split(' ');

    if (palavras.length > 50) {
      continue;
    }

    bool fraseValida = true;
    for (String palavra in palavras) {
      if (palavra.length > 20) {
        fraseValida = false;
        break;
      }
    }

    if (!fraseValida) continue;

    final primeiraLetra = palavras[0][0];
    bool isTautograma = true;

    for (String palavra in palavras) {
      if (!palavra.toLowerCase().startsWith(primeiraLetra.toLowerCase())) {
        isTautograma = false;
        break;
      }
    }

    print(isTautograma ? 'Y' : 'N');

    break;
  }
}
