class Pessoa {
  late String nome;
  late int idade;
  late int peso;
  late double altura;

  //Metodos
  double imc() =>  peso /(altura * altura);
   
  bool maiorIdade() => idade >=18;
  
}