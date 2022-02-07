void main() {
  print(maiorOuIgual(0, '0'));
}

maiorOuIgual(primeiro, segundo) {
  if (primeiro != segundo) return false;
  return primeiro >= segundo;
}
