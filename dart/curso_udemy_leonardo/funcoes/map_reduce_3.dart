//calcula média da turma
main() {
  List<Map<String, Object>> alunos = [
    {'nome': 'Larissa', 'nota': 9.1},
    {'nome': 'Matheus', 'nota': 9.4},
    {'nome': 'Viviane', 'nota': 8.6},
    {'nome': 'Victória', 'nota': 6.5},
    {'nome': 'Jolie', 'nota': 7.5},
    {'nome': 'Aparecido', 'nota': 6.3},
  ];
  //usar map e reduce
  //Map pra tirar as notas dos alunos da lista
  //Reduce pra somar a média da turma

  var total = alunos
      .map((aluno) => aluno['nota'])
      .map((nota) => (nota as double).roundToDouble())
      .reduce((t, nota) => t + nota);

  print('O valor da média é: ${total / alunos.length}');
}
