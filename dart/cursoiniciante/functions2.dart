main() {
  criarBotao("BotãoSair", botaoCriado ,cor: "Azul", largura: 15.6);
  criarBotao("BotãoCamera", () {
   print("Oi teste func anonima");
 });
}
//O que está entre {} são parâmetros opcionais, se quiser obrigatório só tirar
void criarBotao(String texto, Function criandoFunc, {String? cor, double? largura}){
  print(texto);
  // Está com ?? porque se não passar por parametro, pode colocar um valor padrão
  print(cor ?? "Preto");
  print(largura ?? 10.0);
  criandoFunc();
}
void botaoCriado(){
  print ("Botão Criado !!!");
}