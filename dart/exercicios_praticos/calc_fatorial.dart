import 'dart:io';

void main() {
  print('Digite o numero que quer saber a fatoria:');
  String? numero = stdin.readLineSync();
  if (numero != null && numero.isNotEmpty) {
    int num1 = int.parse(numero);
    print("O fatorial de $numero é ${fatorial(num1)}");
  } else {
    print("Vocêp precisa digitar algo");
  }
}

int fatorial(int n) {
  if (n == 0) {
    return 1;
  } else {
    int resultado = 1;
    for (int i = 1; i <= n; i++) {
      resultado *= i;
    }
    return resultado;
  }
}
