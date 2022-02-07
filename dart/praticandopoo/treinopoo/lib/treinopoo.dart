

import 'package:treinopoo/src/pessoa.dart';

void main(List<String> arguments) {
  Pessoa p1 = Pessoa(nome:"Larissa", idade: 23, sexo: "Oi");


  p1.altura = 1.55; 
  print(p1.nome);
  print(p1.idade);
  print(p1.sexo);
  print(p1.altura);
  

}
