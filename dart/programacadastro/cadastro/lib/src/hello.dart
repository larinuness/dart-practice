import 'dart:io';
primeiroProg() {
 
 print("====== Digite sua idade ======");
 var line = stdin.readLineSync();
 var idade = int.parse(line!);
   if (idade >=18) {
     print("Você é maior de idade, já pode encher a cara");
   } else {
     print("Você é um neném ainda, não pode beber");
   }

}