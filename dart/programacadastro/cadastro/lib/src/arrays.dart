arrays() {

  //Na tipagem ficaria List<String> nomes =
  var nomes = ["Cido", "Viviane"];
  //Add item no array
  nomes.add("Linda");
  //Conta a qtde de itens no array
  print(nomes.length);
  //Mostra o array todo
  print(nomes);
  //Ver por indice
  print(nomes[0]);
  //Remove item do array
  nomes.remove("Cido");
  //Remove por indice
  nomes.removeAt(2);

}