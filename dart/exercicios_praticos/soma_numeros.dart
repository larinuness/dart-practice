void main(List<String> args) {
  print(somarNumero(10));
}

double somarNumero(double n) {
  double numero = 0;
  for (int i = 0; i <= n; i++) {
    numero += i;
  }

  return numero;
}
