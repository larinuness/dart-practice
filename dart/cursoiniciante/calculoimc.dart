import 'dart:io';

main() {
 
   calculo();
}


//imprime o resultado baseado no imc passado por parametro
imprimirResultado(double imc){
 
  if (imc <18.5) {
      print("Abaixo do peso");
  } else if (imc >18.5 && imc <24.9) {
     print("Peso normal");
  } else if (imc >25 && imc < 29.9) {
     print("Sobre peso");
  }  else if (imc > 30 && imc < 34.9) {
     print("Obesidade grau 1");
  } else if (imc > 35 && imc < 39.9) {
     print("Obesidade grau 2");
  } else {
    print("Obesidade grau 3");
  }

}


//Função que pega os dados pro calculo do imc
calculo(){

   print("=== Digite seu peso ===");
  var textPeso = stdin.readLineSync();
   print("=== Digite sua altura ===");
  var textoAltura = stdin.readLineSync();
  var peso = int.parse(textPeso!);
  var altura = double.parse(textoAltura!);

  var imc = calculoImc(peso,altura);
  imprimirResultado(imc);
  
}

//função que faz o calculo do imc
double calculoImc(int peso, double altura){
   return peso / (altura * altura);
}

