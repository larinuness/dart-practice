main(List<String> args) {
  //Maps = varios item dentro de uma variavel, tipo um objeto
  //String é a key(nome,idade...), dynamic os valores (Larissa,23...)
  Map<String,dynamic> maps = {
    "nome": "Larissa",
    "idade": 23,
    "cidade": "São Paulo",
    "hobby": "Jogar"
  };
  
  print(maps);
  maps["nome"] = "Jolie";
  print(maps["nome"]);
  print(maps);
}