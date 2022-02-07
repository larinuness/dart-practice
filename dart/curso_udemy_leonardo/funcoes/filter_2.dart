// ---- Problema pra resolver ----
//Criar uma nova lista apenas com notas >= 7
//Usando o filter/where
//No Js é o filter, Dart é o where
//No filter/where não pode ter uma lista maior do que a original e nem uma menor que vazio
main() {
  List<double> notas = [8.2, 7.1, 6.3, 4.4, 3.9, 8.8, 9.1, 5.1];

  //Pode deixar assim
  bool Function(double) notasBoasFn = (double nota) => nota >= 7;
  bool Function(double) notasMuitoBoasFn = (double nota) => nota >= 8;
  //Ou assim
  // var notasBoasFn = (double nota) => nota >= 7;

  var notasBoas = notas.where(notasBoasFn);
  var notasMuitoBoas = notas.where(notasMuitoBoasFn);
  print(notasBoas);
  print(notasMuitoBoas);
}
