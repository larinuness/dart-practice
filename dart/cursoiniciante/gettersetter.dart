main(){
  Pessoa p1 = new Pessoa("Larissa", 18);
  p1.nome = "Matheus";
  print(p1.nome);
  print(p1.idade);
}

class Pessoa {
  // com o _ deixa privado
  late String _nome;
  late int _idade;

  Pessoa(this._nome,this._idade);
  
  int get idade {
    return _idade;
  }
  String get nome {
    return _nome;
  }
  void set idade(int idade) => _idade = idade;
  void set nome(String nome) => _nome = nome;
  

}