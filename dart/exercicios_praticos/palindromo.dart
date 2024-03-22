bool ehPalindromo(String palavra) {
  String palavraInvertida = palavra.split('').reversed.join('');
  return palavra == palavraInvertida;
}

void main() {
  String palavra = 'arara';
  if (ehPalindromo(palavra)) {
    print("$palavra é um palíndromo.");
  } else {
    print("$palavra não é um palíndromo.");
  }
}
