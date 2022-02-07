void main() {
  print(nomeDoMes(2));
}

nomeDoMes(int numMes) {
  var meses = [
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro',
  ];

  return meses[--numMes];
}
