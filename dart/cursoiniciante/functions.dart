main(){
  printIntro();
  calcSoma(2,2);
  double resMult = calcMult(5,50);
  print(resMult);
  print(calcAreaCirculo(5.0));
}

//Function sem retorno
void printIntro(){
  print("Praticando com funções");
}

//Function com paramêtro sem retorno
void calcSoma(int a, int b){
   int res = a + b;
   print(res);
}

//Function com paramêtro e retorno
double calcMult(double a, double b) {
  double res = a * b;
  return res;
}

//Arrow Function
double calcAreaCirculo(double raio) => 3.14 * raio * raio;
