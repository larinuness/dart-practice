//mostrar a soma de todas as notas
void main() {
  List<double> notas = [7.3, 5.4, 7.7, 8.1, 5.5, 4.9, 9.1, 10];
  //transfora uma lista em qualquer outra coisa
  double total = notas.reduce(somar);
  print(total);

  var nomes = ['Ana', 'Bia', 'Carlos', 'Daniel', 'Maria', 'Pedro'];
  print(nomes.reduce(juntar));

  //Abordagem padrão
  // for (var nota in notas) {
  //   total += nota;
  // }
  // print(total);
}

double somar(double acumulador, double elemento) {
  print("$acumulador $elemento");
  return acumulador + elemento;
}

String juntar(String acumulador, String elemento) {
  print("$acumulador => $elemento");
  return "$acumulador,$elemento";
}
