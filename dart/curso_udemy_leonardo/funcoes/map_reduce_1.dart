//O map serve pra mapear, sempre o mesmo valor do retorno
//Ex: uma lista de 8 elementos, retorna uma lista de 8 elementos

//o map serve pra mapear um elemento em outro elemento
//ex: uma lista de string e quer mapear pra uma lista de int

void main() {
  List<Map<String, Object>> alunos = [
    {'nome': 'Larissa', 'nota': 9.1},
    {'nome': 'Matheus', 'nota': 9.4},
    {'nome': 'Viviane', 'nota': 8.6},
    {'nome': 'Victória', 'nota': 6.5},
    {'nome': 'Jolie', 'nota': 7.5},
    {'nome': 'Aparecido', 'nota': 6.3},
  ];
  //transformou o map em uma lista de String
  //Map = Chave e valor
  //map = mapeamento deu elemento em outro
  //retorna o valor da chave
  String Function(Map) pegarApenasONome = (aluno) => aluno['nome'];
  //retorna a quantidade de letras em cada nome
  int Function(String) qtdeLetras = (texto) => texto.length;
  //multiplica por 2 a quantidade de letras por nome
  int Function(int) dobro = (numero) => numero * 2;

  var nomes = alunos.map(pegarApenasONome).map(qtdeLetras).map(dobro);
  // var letras = nomes.map(qtdeLetras);
  print(nomes);
  // print(letras);
}
