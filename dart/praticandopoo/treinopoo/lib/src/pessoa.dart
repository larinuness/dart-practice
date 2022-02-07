import 'humano.dart';

class Pessoa extends Humano {
   String nome; 
   int idade;
   String sexo;

  // Humano(String nome, int idade, String sexo) {
  //   this.nome = nome;
  //   this.idade = idade;
  //   this.sexo = sexo;
  // }

  Pessoa({required this.nome, required this.idade, required this.sexo});
}