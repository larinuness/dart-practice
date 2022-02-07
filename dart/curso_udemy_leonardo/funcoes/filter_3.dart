// ---- Problema pra resolver ----
//Criar uma nova lista apenas com notas >= 7
//Usando o filter/where com Generics
//No Js é o filter, Dart é o where
//No filter/where não pode ter uma lista maior do que a original e nem uma menor que vazio
void main(List<String> args) {
  List<double> notas = [8.2, 7.1, 6.3, 4.4, 3.9, 8.8, 9.1, 5.1];
  var boasNotasFn = (double nota) => nota >= 7;
  List<double> somenteNotasBoas = filtrar<double>(notas, boasNotasFn);
  print(somenteNotasBoas);

  List<String> nomes = [
    'Ana',
    'Beatriz',
    'Larissa',
    'Jolie',
    'Gui',
    'Ma',
    'Vic',
  ];
  var nomesGrandesFn = (String nome) => nome.length >= 4;
  List<String> somenteNomesGrandes = filtrar<String>(nomes, nomesGrandesFn);
  print(somenteNomesGrandes);
}

//função filter/where generica
List<E> filtrar<E>(List<E> lista, bool Function(E) fn) {
  List<E> listaFiltrada = [];
  for (E elemento in lista) {
    if (fn(elemento)) {
      listaFiltrada.add(elemento);
    }
  }
  return listaFiltrada;
}
