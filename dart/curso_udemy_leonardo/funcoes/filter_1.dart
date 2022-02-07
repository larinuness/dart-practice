// ---- Problema pra resolver ----
//Criar uma nova lista apenas com notas >= 7
//Usando o for

//No filter/where não pode ter uma lista maior do que a original e nem uma menor que vazio
main() {
  List<double> notas = [8.2, 7.1, 6.3, 4.4, 3.9, 8.8, 9.1, 5.1];
  List<double> notasBoas = [];
  List<double> notasRuins = [];

  //Pega a nota na lista de notas
  for (var nota in notas) {
    //Checa em cada elemento da lista se é >= 7
    if (nota >= 7) {
      //se for >= 7 vai add na lista de notasBoas
      notasBoas.add(nota);
    } else {
      // senão vai pra lista de notasRuins
      notasRuins.add(nota);
    }
  }

  print('Notas boas: $notasBoas');
  print('Notas ruins: $notasRuins');
}
