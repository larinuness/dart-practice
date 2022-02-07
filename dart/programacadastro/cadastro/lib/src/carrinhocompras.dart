import 'dart:io';

carrinhoCompras() {
  List<String> produtos = [];
  bool condicao = true;

  while (condicao) {
    print("Adicione um produto: ");
    var text = stdin.readLineSync();
    if (text == "Sair") {
      print("Fim do programa");
      condicao = false;
    } else if (text == "Imprimir") {
      imprimir(produtos);
    } else if (text == "Remover") {
      remover(produtos);
    } else {
      // está com o ! porque pode vir null
      produtos.add(text!);
    }
  }
}

imprimir(produtos) {
  for (var i = 0; i < produtos.length; i++) {
    print("Item $i - ${produtos[i]}");
  }
}

remover(produtos) {
  print("Qual item deseja remover? ");
  imprimir(produtos);
  for (var i = 0; i < produtos.length; i++) {
    print("Item $i - ${produtos[i]}");
    var num = stdin.readLineSync();
    var item = int.parse(num!);
    produtos.removeAt(item);
    print("Item removido");
  }
}
